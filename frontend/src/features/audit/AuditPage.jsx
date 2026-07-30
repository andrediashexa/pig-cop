'use client';
import { useCallback, useEffect, useState } from 'react';
import { Loader2, RefreshCw } from 'lucide-react';
import { api } from '../../lib/api';
import { dateTime, num } from '../../lib/format';
import { Badge } from '../../components/ui/badge';
import { Button } from '../../components/ui/button';
import { denseInput } from '../../components/ui/input';
import { EmptyState, PageHeader } from '../../components/PageHeader';

const PAGE_SIZE = 50;

const ACTION_TONES = {
  'login.ok': 'success',
  'login.failed': 'danger',
  'login.ratelimited': 'danger',
  'route.delete': 'warning',
  'route.bulk-delete': 'warning',
  'peer.delete': 'warning',
  'peer.disable': 'warning'
};

export default function AuditPage() {
  const [data, setData] = useState(null);
  const [page, setPage] = useState(1);
  const [action, setAction] = useState('');
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  const load = useCallback(async () => {
    setLoading(true);
    try {
      setData(await api.audit({ page, page_size: PAGE_SIZE, action: action || undefined }));
      setError('');
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  }, [page, action]);

  useEffect(() => {
    load();
  }, [load]);

  const totalPages = data ? Math.max(1, Math.ceil(data.total / PAGE_SIZE)) : 1;

  return (
    <>
      <PageHeader
        title="Auditoria"
        description="Toda alteração de rota, peer e tentativa de login fica registrada aqui."
        actions={
          <Button variant="outline" onClick={load}>
            <RefreshCw size={15} /> Atualizar
          </Button>
        }
      />

      <div className="mb-3 flex flex-wrap gap-2">
        <select
          value={action}
          onChange={(e) => {
            setAction(e.target.value);
            setPage(1);
          }}
          className={denseInput}
        >
          <option value="">Todas as ações</option>
          <option value="login">Login</option>
          <option value="route">Rotas</option>
          <option value="peer">Peers</option>
          <option value="system">Sistema</option>
        </select>
      </div>

      {error ? (
        <p className="mb-3 rounded-lg border border-destructive/25 bg-destructive/10 px-3 py-2 text-sm text-destructive">
          {error}
        </p>
      ) : null}

      {loading && !data ? (
        <div className="flex items-center gap-2 p-8 text-muted-foreground">
          <Loader2 size={16} className="animate-spin" /> carregando…
        </div>
      ) : data?.items.length === 0 ? (
        <EmptyState title="Nada registrado ainda" description="As ações aparecem aqui conforme acontecem." />
      ) : (
        <>
          <div className="scrollbar-thin overflow-x-auto rounded-lg border border-border">
            <table className="w-full min-w-[760px] text-[12.5px]">
              <thead className="bg-muted/50 text-left text-muted-foreground">
                <tr>
                  <Th>Quando</Th>
                  <Th>Quem</Th>
                  <Th>Ação</Th>
                  <Th>Alvo</Th>
                  <Th>Detalhe</Th>
                  <Th>IP</Th>
                </tr>
              </thead>
              <tbody>
                {data.items.map((row) => (
                  <tr key={row.id} className="border-t border-border hover:bg-muted/40">
                    <Td className="whitespace-nowrap tabular-nums">{dateTime(row.ts)}</Td>
                    <Td>{row.actor}</Td>
                    <Td>
                      <Badge tone={ACTION_TONES[row.action] || 'neutral'}>{row.action}</Badge>
                    </Td>
                    <Td className="max-w-[220px] truncate">{row.target || '—'}</Td>
                    <Td className="max-w-[280px] truncate text-muted-foreground">
                      {row.detail || '—'}
                    </Td>
                    <Td className="tabular-nums text-muted-foreground">{row.ip || '—'}</Td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>

          <div className="mt-3 flex flex-wrap items-center justify-between gap-2 text-[12.5px] text-muted-foreground">
            <span className="tabular-nums">
              {num(data.total)} registro(s) · página {page} de {totalPages}
            </span>
            <div className="flex gap-2">
              <Button variant="outline" size="sm" disabled={page <= 1} onClick={() => setPage((p) => p - 1)}>
                Anterior
              </Button>
              <Button
                variant="outline"
                size="sm"
                disabled={page >= totalPages}
                onClick={() => setPage((p) => p + 1)}
              >
                Próxima
              </Button>
            </div>
          </div>
        </>
      )}
    </>
  );
}

function Th({ children }) {
  return (
    <th className="px-3 py-2 text-[11px] font-semibold uppercase tracking-[0.06em]">{children}</th>
  );
}

function Td({ children, className = '' }) {
  return <td className={`px-3 py-1.5 ${className}`}>{children}</td>;
}
