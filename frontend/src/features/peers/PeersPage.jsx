'use client';
import { useCallback, useEffect, useState } from 'react';
import {
  Loader2,
  Network,
  Pencil,
  Play,
  Plus,
  RefreshCw,
  Square,
  Trash2
} from 'lucide-react';
import { api } from '../../lib/api';
import { SESSION_LABELS, SESSION_TONES, num, since } from '../../lib/format';
import { Badge } from '../../components/ui/badge';
import { Button } from '../../components/ui/button';
import { Input, Label, Textarea } from '../../components/ui/input';
import { Switch } from '../../components/ui/switch';
import { Modal } from '../../components/ui/modal';
import { EmptyState, PageHeader } from '../../components/PageHeader';
import { useToast } from '../../components/Toast';

const EMPTY_PEER = {
  neighbor: '',
  peer_asn: '',
  description: '',
  auth_password: '',
  ebgp_multihop: false,
  multihop_ttl: 2,
  passive: true,
  max_prefixes: 0,
  hold_time: 90,
  enabled: true
};

export default function PeersPage() {
  const [data, setData] = useState(null);
  const [error, setError] = useState('');
  const [editing, setEditing] = useState(null);
  const [detail, setDetail] = useState(null);
  const [saving, setSaving] = useState(false);
  const toast = useToast();

  const load = useCallback(async () => {
    try {
      setData(await api.peers());
      setError('');
    } catch (err) {
      setError(err.message);
    }
  }, []);

  useEffect(() => {
    load();
    const timer = setInterval(load, 10000);
    return () => clearInterval(timer);
  }, [load]);

  const act = async (fn, message) => {
    try {
      await fn();
      toast.success(message);
      await load();
    } catch (err) {
      toast.error(err.message);
    }
  };

  const save = async () => {
    setSaving(true);
    try {
      const body = {
        ...editing,
        peer_asn: Number(editing.peer_asn),
        multihop_ttl: Number(editing.multihop_ttl) || 2,
        max_prefixes: Number(editing.max_prefixes) || 0,
        hold_time: Number(editing.hold_time) || 90
      };
      if (editing.id) {
        await api.peerUpdate(editing.id, body);
        toast.success('Peer atualizado.');
      } else {
        await api.peerCreate(body);
        toast.success('Peer criado. Aguardando a sessão subir.');
      }
      setEditing(null);
      await load();
    } catch (err) {
      toast.error(err.message);
    } finally {
      setSaving(false);
    }
  };

  const remove = async (peer) => {
    if (!window.confirm(`Remover o peer ${peer.neighbor} (AS${peer.peer_asn})?`)) return;
    await act(() => api.peerDelete(peer.id), 'Peer removido.');
  };

  return (
    <>
      <PageHeader
        title="Sessões BGP"
        description="Clientes que recebem os prefixos de bloqueio. Import fica em reject-all: nada que o peer envie entra no nosso RIB."
        actions={
          <>
            <Button variant="outline" onClick={load}>
              <RefreshCw size={15} /> Atualizar
            </Button>
            <Button onClick={() => setEditing({ ...EMPTY_PEER })}>
              <Plus size={15} /> Novo peer
            </Button>
          </>
        }
      />

      {error ? (
        <p className="mb-3 rounded-lg border border-destructive/25 bg-destructive/10 px-3 py-2 text-sm text-destructive">
          {error}
        </p>
      ) : null}

      {data?.live_error ? (
        <p className="mb-3 rounded-lg border border-amber-500/25 bg-amber-500/10 px-3 py-2 text-sm text-amber-500">
          Estado ao vivo indisponível: {data.live_error}
        </p>
      ) : null}

      {!data ? (
        <div className="flex items-center gap-2 p-8 text-muted-foreground">
          <Loader2 size={16} className="animate-spin" /> carregando…
        </div>
      ) : data.peers.length === 0 ? (
        <EmptyState
          icon={Network}
          title="Nenhum peer configurado"
          description="Cadastre o roteador do cliente com IP e ASN. O controller fica passivo por padrão: o cliente inicia a sessão."
          action={
            <Button onClick={() => setEditing({ ...EMPTY_PEER })}>
              <Plus size={15} /> Novo peer
            </Button>
          }
        />
      ) : (
        <div className="scrollbar-thin overflow-x-auto rounded-lg border border-border">
          <table className="w-full min-w-[900px] text-[12.5px]">
            <thead className="bg-muted/50 text-left text-muted-foreground">
              <tr>
                <Th>Peer</Th>
                <Th>ASN</Th>
                <Th>Descrição</Th>
                <Th>Estado</Th>
                <Th className="text-right">Uptime</Th>
                <Th className="text-right">Recebidos</Th>
                <Th className="text-right">Enviados</Th>
                <Th className="text-right">Ações</Th>
              </tr>
            </thead>
            <tbody>
              {data.peers.map((peer) => {
                const live = peer.live;
                const state = peer.session_state;
                return (
                  <tr
                    key={peer.id}
                    className="cursor-pointer border-t border-border transition-colors hover:bg-muted/40"
                    onClick={() => setDetail(peer)}
                  >
                    <Td className="font-medium tabular-nums">{peer.neighbor}</Td>
                    <Td className="tabular-nums">AS{peer.peer_asn}</Td>
                    <Td className="max-w-[220px] truncate text-muted-foreground">
                      {peer.description || '—'}
                    </Td>
                    <Td>
                      <Badge tone={SESSION_TONES[state] || 'neutral'}>
                        {SESSION_LABELS[state] || state}
                      </Badge>
                      {!peer.enabled ? (
                        <Badge className="ml-1">desabilitado</Badge>
                      ) : null}
                    </Td>
                    <Td className="text-right tabular-nums">{since(live?.uptime)}</Td>
                    <Td className="text-right tabular-nums">{num(live?.received ?? 0)}</Td>
                    <Td className="text-right tabular-nums">{num(live?.advertised ?? 0)}</Td>
                    <Td className="text-right" onClick={(e) => e.stopPropagation()}>
                      <div className="flex justify-end gap-1">
                        <IconBtn
                          title="Soft reset (reenvia as rotas)"
                          onClick={() =>
                            act(() => api.peerSoftReset(peer.id), 'Soft reset enviado.')
                          }
                        >
                          <RefreshCw size={14} />
                        </IconBtn>
                        {peer.enabled ? (
                          <IconBtn
                            title="Desabilitar (admin shutdown)"
                            onClick={() =>
                              act(() => api.peerDisable(peer.id), 'Peer desabilitado.')
                            }
                          >
                            <Square size={14} />
                          </IconBtn>
                        ) : (
                          <IconBtn
                            title="Habilitar"
                            onClick={() =>
                              act(() => api.peerEnable(peer.id), 'Peer habilitado.')
                            }
                          >
                            <Play size={14} />
                          </IconBtn>
                        )}
                        <IconBtn
                          title="Editar"
                          onClick={() =>
                            setEditing({ ...peer, auth_password: '', live: undefined })
                          }
                        >
                          <Pencil size={14} />
                        </IconBtn>
                        <IconBtn title="Remover" danger onClick={() => remove(peer)}>
                          <Trash2 size={14} />
                        </IconBtn>
                      </div>
                    </Td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      )}

      {data?.orphans?.length ? (
        <p className="mt-3 rounded-lg border border-amber-500/25 bg-amber-500/10 px-3 py-2 text-xs text-amber-500">
          {data.orphans.length} peer(s) existem no gobgpd mas não no banco (
          {data.orphans.map((o) => o.neighbor).join(', ')}). A próxima sincronização remove.
        </p>
      ) : null}

      <PeerModal
        peer={editing}
        onChange={setEditing}
        onClose={() => setEditing(null)}
        onSave={save}
        saving={saving}
      />
      <DetailModal peer={detail} onClose={() => setDetail(null)} />
    </>
  );
}

function PeerModal({ peer, onChange, onClose, onSave, saving }) {
  if (!peer) return null;
  const set = (patch) => onChange({ ...peer, ...patch });

  return (
    <Modal
      open
      onClose={onClose}
      title={peer.id ? `Editar peer ${peer.neighbor}` : 'Novo peer BGP'}
      description="A política de import é reject-all e não é configurável: o controller nunca aceita rotas do cliente."
      footer={
        <>
          <Button variant="ghost" onClick={onClose}>
            Cancelar
          </Button>
          <Button onClick={onSave} disabled={saving || !peer.neighbor || !peer.peer_asn}>
            {saving ? <Loader2 size={15} className="animate-spin" /> : null} Salvar
          </Button>
        </>
      }
    >
      <div className="grid gap-4 sm:grid-cols-2">
        <Label>
          IP do vizinho
          <Input
            value={peer.neighbor}
            onChange={(e) => set({ neighbor: e.target.value })}
            placeholder="200.100.50.1"
          />
        </Label>
        <Label>
          ASN do cliente
          <Input
            value={peer.peer_asn}
            onChange={(e) => set({ peer_asn: e.target.value.replace(/\D/g, '') })}
            placeholder="65001"
            inputMode="numeric"
          />
        </Label>
        <Label className="sm:col-span-2">
          Descrição
          <Input
            value={peer.description || ''}
            onChange={(e) => set({ description: e.target.value })}
            placeholder="Cliente Fulano — borda 1"
          />
        </Label>
        <Label className="sm:col-span-2">
          Senha MD5 (opcional)
          <Input
            type="password"
            value={peer.auth_password || ''}
            onChange={(e) => set({ auth_password: e.target.value })}
            placeholder={peer.has_password ? '•••••• (deixe em branco para manter)' : 'sem senha'}
          />
        </Label>
        <Label>
          Hold time (s)
          <Input
            value={peer.hold_time}
            onChange={(e) => set({ hold_time: e.target.value.replace(/\D/g, '') })}
            inputMode="numeric"
          />
        </Label>
        <Label>
          Limite de prefixos recebidos (0 = sem limite)
          <Input
            value={peer.max_prefixes}
            onChange={(e) => set({ max_prefixes: e.target.value.replace(/\D/g, '') })}
            inputMode="numeric"
          />
        </Label>

        <ToggleRow
          label="Modo passivo"
          hint="O cliente inicia a conexão TCP. Recomendado."
          checked={peer.passive}
          onChange={(v) => set({ passive: v })}
        />
        <ToggleRow
          label="eBGP multihop"
          hint="Necessário quando o peer não é diretamente conectado."
          checked={peer.ebgp_multihop}
          onChange={(v) => set({ ebgp_multihop: v })}
        />
        {peer.ebgp_multihop ? (
          <Label>
            TTL do multihop
            <Input
              value={peer.multihop_ttl}
              onChange={(e) => set({ multihop_ttl: e.target.value.replace(/\D/g, '') })}
              inputMode="numeric"
            />
          </Label>
        ) : null}
        <ToggleRow
          label="Habilitado"
          hint="Desligado equivale a um admin shutdown."
          checked={peer.enabled}
          onChange={(v) => set({ enabled: v })}
        />
      </div>
    </Modal>
  );
}

function DetailModal({ peer, onClose }) {
  if (!peer) return null;
  const live = peer.live || {};
  return (
    <Modal open onClose={onClose} title={`Peer ${peer.neighbor}`} description={peer.description || ''}>
      <dl className="space-y-2 text-sm">
        <Info label="Estado">{SESSION_LABELS[peer.session_state] || peer.session_state}</Info>
        <Info label="Admin state">{live.admin_state || '—'}</Info>
        <Info label="Router-ID remoto">{live.router_id || '—'}</Info>
        <Info label="Uptime">{since(live.uptime)}</Info>
        <Info label="Hold time negociado">{live.negotiated_hold_time || '—'}</Info>
        <Info label="Flaps">{num(live.flops ?? 0)}</Info>
        <Info label="UPDATE enviados / recebidos">
          {num(live.messages?.update_out ?? 0)} / {num(live.messages?.update_in ?? 0)}
        </Info>
        <Info label="NOTIFICATION enviados / recebidos">
          {num(live.messages?.notification_out ?? 0)} / {num(live.messages?.notification_in ?? 0)}
        </Info>
        <Info label="Prefixos anunciados">{num(live.advertised ?? 0)}</Info>
        <Info label="Prefixos recebidos / aceitos">
          {num(live.received ?? 0)} / {num(live.accepted ?? 0)}
          <span className="ml-2 text-xs text-muted-foreground">
            (aceitos fica 0 por causa do reject-all)
          </span>
        </Info>
        <Info label="Fila de saída">{num(live.out_q ?? 0)}</Info>
        <Info label="Último motivo de queda">
          {live.disconnect_reason || '—'}
          {live.disconnect_message ? ` — ${live.disconnect_message}` : ''}
        </Info>
      </dl>
    </Modal>
  );
}

function ToggleRow({ label, hint, checked, onChange }) {
  return (
    <div className="flex items-start justify-between gap-3 rounded-lg border border-border p-3">
      <div className="min-w-0">
        <p className="text-sm font-semibold">{label}</p>
        {hint ? <p className="mt-0.5 text-xs text-muted-foreground">{hint}</p> : null}
      </div>
      <Switch checked={!!checked} onCheckedChange={onChange} />
    </div>
  );
}

function Info({ label, children }) {
  return (
    <div className="flex items-start justify-between gap-3 border-b border-border/60 pb-2 last:border-0">
      <dt className="shrink-0 text-muted-foreground">{label}</dt>
      <dd className="min-w-0 text-right tabular-nums">{children}</dd>
    </div>
  );
}

function Th({ children, className = '' }) {
  return (
    <th
      className={`px-3 py-2 text-[11px] font-semibold uppercase tracking-[0.06em] ${className}`}
    >
      {children}
    </th>
  );
}

function Td({ children, className = '', ...props }) {
  return (
    <td className={`px-3 py-2 ${className}`} {...props}>
      {children}
    </td>
  );
}

function IconBtn({ children, title, danger, onClick }) {
  return (
    <button
      type="button"
      title={title}
      onClick={onClick}
      className={`rounded-md border border-border p-1.5 transition-colors ${
        danger
          ? 'text-muted-foreground hover:border-destructive/40 hover:bg-destructive/10 hover:text-destructive'
          : 'text-muted-foreground hover:bg-muted hover:text-foreground'
      }`}
    >
      {children}
    </button>
  );
}
