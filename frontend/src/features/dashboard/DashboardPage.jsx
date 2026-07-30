'use client';
import { useCallback, useEffect, useState } from 'react';
import { AlertTriangle, Loader2, RefreshCw, ShieldCheck, ShieldX } from 'lucide-react';
import { api } from '../../lib/api';
import { dateTime, num, since } from '../../lib/format';
import { Badge } from '../../components/ui/badge';
import { Button } from '../../components/ui/button';
import { EmptyState, Kpi, PageHeader } from '../../components/PageHeader';
import { useToast } from '../../components/Toast';

export default function DashboardPage({ onNavigate }) {
  const [stats, setStats] = useState(null);
  const [error, setError] = useState('');
  const [busy, setBusy] = useState(false);
  const toast = useToast();

  const load = useCallback(async () => {
    try {
      setStats(await api.stats());
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

  const reconcile = async () => {
    setBusy(true);
    try {
      const { job_id: jobId } = await api.reconcile();
      let attempts = 0;
      while (attempts < 60) {
        // eslint-disable-next-line no-await-in-loop
        await new Promise((r) => setTimeout(r, 1000));
        // eslint-disable-next-line no-await-in-loop
        const job = await api.job(jobId);
        if (job.status === 'done') {
          toast.success(
            `Sincronizado: ${job.result?.added || 0} injetadas, ${job.result?.removed || 0} removidas.`
          );
          break;
        }
        if (job.status === 'error') {
          toast.error(job.error || 'falha ao sincronizar');
          break;
        }
        attempts += 1;
      }
      await load();
    } catch (err) {
      toast.error(err.message);
    } finally {
      setBusy(false);
    }
  };

  if (error && !stats) {
    return (
      <>
        <PageHeader title="Visão geral" />
        <EmptyState icon={AlertTriangle} title="Não consegui ler o estado" description={error} />
      </>
    );
  }

  if (!stats) {
    return (
      <div className="flex items-center gap-2 p-8 text-muted-foreground">
        <Loader2 size={16} className="animate-spin" /> carregando…
      </div>
    );
  }

  const rec = stats.reconcile || {};
  const divergencia = stats.rib ? stats.rotas.ativas - stats.rib.destinations : null;
  const importOk = stats.politica?.import_ok;

  return (
    <>
      <PageHeader
        title="Visão geral"
        description={
          stats.bgp
            ? `AS${stats.bgp.asn} · router-id ${stats.bgp.router_id} · porta ${stats.bgp.listen_port}`
            : 'BGP ainda não iniciado'
        }
        actions={
          <Button variant="outline" onClick={reconcile} disabled={busy}>
            {busy ? (
              <Loader2 size={15} className="animate-spin" />
            ) : (
              <RefreshCw size={15} />
            )}
            Sincronizar RIB
          </Button>
        }
      />

      <div className="grid grid-cols-2 gap-3 lg:grid-cols-4">
        <Kpi
          label="Sessões estabelecidas"
          value={`${num(stats.peers.estabelecidas)}/${num(stats.peers.total)}`}
          hint="peers com sessão ESTABLISHED"
          tone={stats.peers.total && stats.peers.estabelecidas === 0 ? 'danger' : 'accent'}
        />
        <Kpi
          label="Prefixos anunciados"
          value={num(stats.rotas.ativas)}
          hint={`${num(stats.rotas.total)} cadastrados · limite ${num(stats.rotas.limite)}`}
        />
        <Kpi
          label="Prefixos no RIB"
          value={stats.rib ? num(stats.rib.destinations) : '—'}
          hint={
            divergencia === null
              ? 'gobgpd indisponível'
              : divergencia === 0
                ? 'em sincronia com o banco'
                : `${num(Math.abs(divergencia))} de diferença com o banco`
          }
          tone={divergencia ? 'warning' : undefined}
        />
        <Kpi
          label="Última sincronização"
          value={rec.last_run ? since(new Date(rec.last_run * 1000).toISOString()) : '—'}
          hint={rec.last_error ? `erro: ${rec.last_error}` : `${rec.duration_ms || 0} ms`}
          tone={rec.last_error ? 'danger' : undefined}
        />
      </div>

      <div className="mt-4 grid gap-4 lg:grid-cols-[1.2fr_1fr]">
        <div className="rounded-lg border border-border bg-card p-4">
          <h2 className="text-sm font-semibold">Política de anúncio</h2>
          <dl className="mt-3 space-y-2 text-sm">
            <Row label="Next-hop padrão">
              <code className="tabular-nums">{stats.politica.next_hop_padrao}</code>
            </Row>
            <Row label="Communities padrão">
              <span className="flex flex-wrap gap-1">
                {stats.politica.communities_padrao.map((c) => (
                  <Badge key={c} tone="primary">
                    {c}
                  </Badge>
                ))}
              </span>
            </Row>
            <Row label="Import dos peers">
              {importOk ? (
                <Badge tone="success">
                  <ShieldCheck size={12} /> reject-all ativo
                </Badge>
              ) : (
                <Badge tone="danger">
                  <ShieldX size={12} /> NÃO aplicado
                </Badge>
              )}
            </Row>
            <Row label="Prefixo mínimo">{stats.politica.prefixo_minimo_v4}</Row>
            <Row label="Prefixos protegidos">
              {stats.politica.prefixos_protegidos.length ? (
                <span className="flex flex-wrap gap-1">
                  {stats.politica.prefixos_protegidos.map((p) => (
                    <Badge key={p}>{p}</Badge>
                  ))}
                </span>
              ) : (
                <span className="text-muted-foreground">nenhum configurado</span>
              )}
            </Row>
          </dl>
          {!importOk ? (
            <p className="mt-3 rounded-md border border-destructive/25 bg-destructive/10 px-3 py-2 text-xs text-destructive">
              A política global de import não está em reject. Rotas enviadas pelos peers
              poderiam entrar no RIB. Clique em “Sincronizar RIB” para reaplicar.
            </p>
          ) : null}
        </div>

        <div className="rounded-lg border border-border bg-card p-4">
          <h2 className="text-sm font-semibold">Top categorias anunciadas</h2>
          {stats.por_categoria.length ? (
            <ul className="mt-3 space-y-2">
              {stats.por_categoria.map((c) => {
                const max = stats.por_categoria[0].total || 1;
                return (
                  <li key={c.category} className="text-xs">
                    <div className="flex items-baseline justify-between gap-2">
                      <span className="truncate text-foreground">{c.category}</span>
                      <span className="tabular-nums text-muted-foreground">{num(c.total)}</span>
                    </div>
                    <div className="mt-1 h-1.5 overflow-hidden rounded-full bg-muted">
                      <div
                        className="h-full rounded-full bg-primary"
                        style={{ width: `${Math.max(2, (c.total / max) * 100)}%` }}
                      />
                    </div>
                  </li>
                );
              })}
            </ul>
          ) : (
            <div className="mt-3">
              <EmptyState
                title="Nenhuma rota cadastrada"
                description="Importe o arquivo .rsc para começar a anunciar."
                action={
                  <Button size="sm" onClick={() => onNavigate('importar')}>
                    Ir para Importar
                  </Button>
                }
              />
            </div>
          )}
        </div>
      </div>

      {stats.gobgp_error ? (
        <p className="mt-4 rounded-lg border border-destructive/25 bg-destructive/10 px-3 py-2 text-sm text-destructive">
          gobgpd: {stats.gobgp_error}
        </p>
      ) : null}

      <p className="mt-4 text-[11px] text-muted-foreground">
        Atualizado em {dateTime(new Date().toISOString())} · atualiza sozinho a cada 10 s
      </p>
    </>
  );
}

function Row({ label, children }) {
  return (
    <div className="flex items-start justify-between gap-3 border-b border-border/60 pb-2 last:border-0">
      <dt className="shrink-0 text-muted-foreground">{label}</dt>
      <dd className="min-w-0 text-right">{children}</dd>
    </div>
  );
}
