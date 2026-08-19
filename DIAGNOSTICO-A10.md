# Diagnóstico — PIG-COP × A10 (`100.127.127.10`)

**Host investigado:** `pig-cop` / `10.32.1.247` · AS 262645 · GoBGP v4.7.0
**Data:** 12/08/2026 · investigação por acesso SSH, somente leitura (`tcpdump`, `docker logs`, `gobgp`)
**Estado ao final:** nada foi alterado — `GOBGP_VERSION` intacto, capturas removidas

---

## Resumo

A sessão não sobe porque o **A10 rejeita duas capabilities** que o GoBGP anuncia no OPEN:

| Código | Capability | Por que é anunciada |
|---|---|---|
| **6** | Extended Message (RFC 8654) | incondicional, **introduzida na v4.7.0** |
| **75** | Software Version | forçada porque a sessão é **iBGP** |

Nenhuma das duas tem opção de configuração no GoBGP. A correção exige mudar a versão **e** o tipo de sessão — ou aplicar patch no build.

> **Atenção:** as duas configs testadas no A10 falham por motivos **diferentes**. Ver [Os dois modos de falha](#os-dois-modos-de-falha).

---

## Sintoma

```
Peer               AS  Up/Down State       |#Received  Accepted
100.127.127.2  262645 02:29:18 Establ      |        0         0
100.127.127.9  262645 02:29:09 Establ      |        0         0
100.127.127.10 262645    never Active      |        0         0   ← quebrado
```

Retentativa a cada ~90 s, ininterrupta. `Opens: 706 enviados / 14 recebidos`.

---

## Correção de uma informação que circulou

A tabela de códigos usada no começo da investigação estava **invertida**, e isso levou a mexer no lugar errado (remover `route-refresh` do A10, que nunca foi o problema).

Valores reais, conferidos em `pkg/packet/bgp/bgp.go:394-406` do GoBGP v4.7.0:

| Código | Capability real | Tabela incorreta |
|---|---|---|
| 2 | Route Refresh | — |
| **6** | **Extended Message** | ~~Route Refresh~~ |
| 73 | FQDN | — |
| **75** | **Software Version** | ~~FQDN~~ |

**FQDN (73) nunca foi o problema.** O A10 aceita a 73 sem reclamar.

---

## Os dois modos de falha

O A10 está preso entre duas configurações, e **cada uma quebra de um jeito**.

### Config original — com `dont-capability-negotiate`

```
neighbor 10.32.1.247 dont-capability-negotiate
neighbor 10.32.1.247 override-capability
```

O A10 não envia capability nenhuma. Sem a `4-octet-as` (65), não há como transportar o ASN 262645 — o campo *My AS* do OPEN tem só 2 bytes e leva `23456` (AS_TRANS).

O GoBGP lê `23456`, compara com o `262645` configurado, não bate:

```
msg="sent notification" Key=100.127.127.10 State=BGP_FSM_OPENSENT Code=2 Subcode=2
```

**Code 2 / Subcode 2 = Bad Peer AS.** Quem rejeita aqui é o **GoBGP**.

### Config atual — sem `dont-capability-negotiate`

O A10 passa a negociar corretamente. O OPEN dele, capturado no fio, está impecável:

```
Version 4, my AS 23456, Holdtime 90s, ID 100.127.127.10
  Optional parameters, length: 24
    Multiprotocol Extensions (1): AFI IPv4 (1), SAFI Unicast (1)
    Route Refresh (Cisco) (128)
    Route Refresh (2)
    32-Bit AS Number (65), length: 4
       4 Byte AS 262645          ← correto
```

`my AS 23456` + capability 65 com o ASN real é o comportamento **certo** pela RFC 6793.

Só que agora o A10 também **lê** as nossas capabilities, e engasga:

```
Notification Message (3), length: 37,
  OPEN Message Error (2), subcode Capability Message Error (7)
```

**Subcode 7 = Unsupported Capability.** Quem rejeita agora é o **A10**.

> Remover o `dont-capability-negotiate` foi a decisão certa — sem ele o 4-byte AS funciona. Só expôs o problema seguinte.

---

## Por que os outros dois peers funcionam

`.2` e `.9` recebem exatamente o mesmo OPEN, com as mesmas capabilities 6 e 75. Eles fecham sessão porque **ignoram capability desconhecida**, como manda a RFC 5492 §4:

> *"If a BGP speaker receives ... a capability that it does not itself support, it MUST ignore that capability."*

O comportamento de derrubar a sessão vinha da RFC 3392, revogada. O **ACOS 4.x mantém o comportamento antigo**; segundo o relato da equipe, a 5.2+ corrigiu.

Isso significa que **o A10 está fora do padrão** — se houver contrato de suporte com a A10 Networks, é caso de bug legítimo.

---

## Por que não dá para desabilitar por configuração

`pkg/server/fsm.go` do GoBGP, na montagem do OPEN:

```go
caps := make([]bgp.ParameterCapabilityInterface, 0, 4)
caps = append(caps, bgp.NewCapRouteRefresh())        // 2  — sempre
caps = append(caps, bgp.NewCapFQDN(fqdn, ""))        // 73 — sempre

if pConf.Config.SendSoftwareVersion || pConf.Config.PeerType == oc.PEER_TYPE_INTERNAL {
    caps = append(caps, bgp.NewCapSoftwareVersion(softwareVersion))   // 75
}

// RFC 8654 Section 3: advertise the Extended Message Capability
// in OPEN unconditionally ...
caps = append(caps, bgp.NewCapExtendedMessage())     // 6 — sem knob
```

### Capability 6 — depende da versão

Comparação entre releases:

| Versão | anuncia cap 6? |
|---|---|
| v3.37.0 | não |
| v4.0.0 | não |
| v4.3.0 | não |
| v4.5.0 | não |
| **v4.7.0** | **sim** ← versão em uso |

Entrou exatamente na versão que está rodando. **Downgrade para v4.5.0 remove.**

### Capability 75 — depende do tipo de sessão

A condição `|| pConf.Config.PeerType == oc.PEER_TYPE_INTERNAL` é idêntica em **v3.30.0, v3.37.0, v4.0.0 e v4.5.0**. Como a sessão é iBGP (262645 nos dois lados), a flag `SendSoftwareVersion` é irrelevante — a 75 vai sempre.

**Downgrade sozinho não resolve.**

---

## Correções possíveis

### A) Virar eBGP + v4.5.0

PIG-COP com ASN privado (ex.: 65000), A10 com `remote-as 65000`.

- eBGP ⇒ `PeerType != INTERNAL` ⇒ `SendSoftwareVersion` volta a valer ⇒ **cap 75 sai**
- v4.5.0 ⇒ **cap 6 sai**
- Sem patch, sem dívida de manutenção

**Verificado:** o GoBGP **preserva o next-hop explícito em eBGP**, não reescreve para si mesmo. Testado em sessão eBGP real (65000 → 268320):

```
RIB local:  1.0.133.100/32   192.0.2.1
adj-out:    1.0.133.100/32   192.0.2.1   65000
```

O blackhole continua apontando para o destino correto. Aparece o AS_PATH `65000` — o route-map `SERVER-BLACKHOLE-IN` do A10 precisa aceitá-lo (atenção se ele filtra por AS_PATH ou espera path vazio de iBGP).

> ⚠️ **`LOCAL_ASN` é global do gobgpd.** Trocando para 65000, os **três** peers viram eBGP de uma vez. `.2` e `.9` vão cair se continuarem com `remote-as 262645` do lado deles. **Alinhar os três equipamentos antes de aplicar.**

```bash
# 1. nos TRÊS equipamentos: remote-as 65000
# 2. só então, no PIG-COP:
sed -i 's/^LOCAL_ASN=.*/LOCAL_ASN=65000/'          /opt/pigcop/.env
sed -i 's/^GOBGP_VERSION=.*/GOBGP_VERSION=v4.5.0/' /opt/pigcop/.env
docker compose build gobgpd
docker compose restart gobgpd backend
```

O restart do **gobgpd** é obrigatório: o ASN global só é aplicado no `StartBgp`, que não roda de novo com a sessão ativa. O backend reconcilia sozinho (peers + prefixos) em ~35 s.

### B) Patch no build

Manter iBGP e remover as duas linhas do `fsm.go` no Dockerfile do gobgpd. Cirúrgico — resolve só o `.10` sem tocar em `.2` e `.9` — mas vira dívida a cada upgrade do GoBGP.

### Verificação, em qualquer um dos casos

```bash
docker exec pigcop-gobgpd gobgp neighbor 100.127.127.10 \
  | grep -E 'software-version|extended-message'
```

Se as duas sumirem da lista de anunciadas, o A10 deve fechar a sessão.

---

## Apêndice — como foi verificado

| Evidência | Método |
|---|---|
| Notification real no fio (subcode 7) | `tcpdump -w` + decode, ~200 s, filtro `tcp port 179` |
| OPEN do A10 com `4 Byte AS 262645` | mesma captura |
| Bad Peer AS (subcode 2) | `docker logs pigcop-gobgpd` |
| Códigos das capabilities | fonte do GoBGP v4.7.0, `pkg/packet/bgp/bgp.go:394-406` |
| Cap 6 introduzida na v4.7.0 | diff de `pkg/server/fsm.go` entre 5 releases |
| Cap 75 forçada em iBGP | mesma condição em v3.30.0 → v4.5.0 |
| Next-hop preservado em eBGP | `gobgp neighbor <peer> adj-out` em sessão eBGP de produção |

**Nota metodológica:** a hipótese das capabilities chegou a ser descartada por causa dos peers `.2` e `.9` estarem estabelecidos com o mesmo OPEN. Foi um erro — a captura no fio confirmou o subcode 7. A lição é que "outro peer funciona" não descarta incompatibilidade: descarta apenas que ela seja *universal*.
