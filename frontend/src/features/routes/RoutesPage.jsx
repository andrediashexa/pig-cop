'use client';
import { useCallback, useEffect, useMemo, useRef, useState } from 'react';
import {
  Download,
  Loader2,
  Pause,
  Play,
  Plus,
  RefreshCw,
  Search,
  Trash2
} from 'lucide-react';
import { api } from '../../lib/api';
import { dateTime, num } from '../../lib/format';
import { Badge } from '../../components/ui/badge';
import { Button } from '../../components/ui/button';
import { Input, Label, Textarea, denseInput } from '../../components/ui/input';
import { Modal } from '../../components/ui/modal';
import { EmptyState, PageHeader } from '../../components/PageHeader';
import { useToast } from '../../components/Toast';

const PAGE_SIZE = 100;

export default function RoutesPage() {
  const [data, setData] = useState(null);
  const [categories, setCategories] = useState([]);
  const [q, setQ] = useState('');
  const [debouncedQ, setDebouncedQ] = useState('');
  const [category, setCategory] = useState('');
  const [enabled, setEnabled] = useState('');
  const [page, setPage] = useState(1);
  const [selected, setSelected] = useState(() => new Set());
  const [loading, setLoading] = useState(true);
  const [adding, setAdding] = useState(null);
  const [bulk, setBulk] = useState(null);
  const [error, setError] = useState('');
  const toast = useToast();
  const searchRef = useRef(null);

  useEffect(() => {
    const timer = setTimeout(() => {
      setDebouncedQ(q);
      setPage(1);
    }, 300);
    return () => clearTimeout(timer);
  }, [q]);

  const load = useCallback(async () => {
    setLoading(true);
    try {
      const params = { page, page_size: PAGE_SIZE };
      if (debouncedQ) params.q = debouncedQ;
      if (category) params.category = category;
      if (enabled !== '') params.enabled = enabled;
      const [routes, cats] = await Promise.all([api.routes(params), api.routeCategories()]);
      setData(routes);
      setCategories(cats.categories);
      setError('');
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  }, [page, debouncedQ, category, enabled]);

  useEffect(() => {
    load();
  }, [load]);

  const totalPages = data ? Math.max(1, Math.ceil(data.total / PAGE_SIZE)) : 1;
  const allSelected = useMemo(
    () => !!data?.items.length && data.items.every((r) => selected.has(r.id)),
    [data, selected]
  );

  const toggleSelect = (id) => {
    setSelected((current) => {
      const next = new Set(current);
      if (next.has(id)) next.delete(id);
      else next.add(id);
      return next;
    });
  };

  const toggleSelectAll = () => {
    setSelected((current) => {
      const next = new Set(current);
      if (allSelected) data.items.forEach((r) => next.delete(r.id));
      else data.items.forEach((r) => next.add(r.id));
      return next;
    });
  };

  const removeSelected = async () => {
    const ids = [...selected];
    if (!ids.length) return;
    if (!window.confirm(`Parar de anunciar e remover ${ids.length} prefixo(s)?`)) return;
    try {
      const res = await api.routeBulkDelete(ids);
      toast.success(`${res.removed} prefixo(s) removidos.`);
      setSelected(new Set());
      await load();
    } catch (err) {
      toast.error(err.message);
    }
  };

  const removeOne = async (route) => {
    if (!window.confirm(`Remover ${route.prefix}?`)) return;
    try {
      await api.routeDelete(route.id);
      toast.success(`${route.prefix} removido.`);
      await load();
    } catch (err) {
      toast.error(err.message);
    }
  };

  const toggleOne = async (route) => {
    try {
      const res = await api.routeToggle(route.id);
      toast.success(`${route.prefix} ${res.enabled ? 'voltou a ser anunciado' : 'pausado'}.`);
      await load();
    } catch (err) {
      toast.error(err.message);
    }
  };

  return (
    <>
      <PageHeader
        title="Rotas anunciadas"
        description="Prefixos de controladores C2 enviados aos clientes por BGP. Remover daqui retira o anúncio na hora."
        actions={
          <>
            <Button variant="outline" asChild>
              <a href={api.exportUrl('csv')} download>
                <Download size={15} /> CSV
              </a>
            </Button>
            <Button variant="outline" onClick={() => setBulk({ content: '', category: '' })}>
              <Plus size={15} /> Em lote
            </Button>
            <Button onClick={() => setAdding({ prefix: '', category: '', note: '' })}>
              <Plus size={15} /> Nova rota
            </Button>
          </>
        }
      />

      <div className="mb-3 flex flex-wrap items-center gap-2">
        <div className="relative min-w-[240px] flex-1">
          <Search
            size={14}
            className="pointer-events-none absolute left-2.5 top-1/2 -translate-y-1/2 text-muted-foreground"
          />
          <input
            ref={searchRef}
            value={q}
            onChange={(e) => setQ(e.target.value)}
            placeholder="Buscar prefixo, categoria ou nota…"
            className={`${denseInput} w-full pl-8`}
          />
        </div>
        <select
          value={category}
          onChange={(e) => {
            setCategory(e.target.value);
            setPage(1);
          }}
          className={denseInput}
        >
          <option value="">Todas as categorias</option>
          {categories.map((c) => (
            <option key={c.category} value={c.category}>
              {c.category} ({c.total})
            </option>
          ))}
        </select>
        <select
          value={enabled}
          onChange={(e) => {
            setEnabled(e.target.value);
            setPage(1);
          }}
          className={denseInput}
        >
          <option value="">Ativas e pausadas</option>
          <option value="true">Só ativas</option>
          <option value="false">Só pausadas</option>
        </select>
        <Button variant="outline" size="sm" onClick={load}>
          <RefreshCw size={14} /> Atualizar
        </Button>
      </div>

      {selected.size ? (
        <div className="mb-3 flex flex-wrap items-center justify-between gap-2 rounded-lg border border-primary/25 bg-primary/10 px-3 py-2">
          <span className="text-sm tabular-nums">{num(selected.size)} selecionado(s)</span>
          <div className="flex gap-2">
            <Button variant="ghost" size="sm" onClick={() => setSelected(new Set())}>
              Limpar seleção
            </Button>
            <Button variant="destructive" size="sm" onClick={removeSelected}>
              <Trash2 size={14} /> Remover selecionados
            </Button>
          </div>
        </div>
      ) : null}

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
        <EmptyState
          title={debouncedQ || category ? 'Nenhum resultado' : 'Nenhuma rota cadastrada'}
          description={
            debouncedQ || category
              ? 'Ajuste a busca ou os filtros.'
              : 'Importe o arquivo .rsc ou adicione um prefixo manualmente.'
          }
        />
      ) : (
        <>
          <div className="scrollbar-thin overflow-x-auto rounded-lg border border-border">
            <table className="w-full min-w-[820px] text-[12.5px]">
              <thead className="bg-muted/50 text-left text-muted-foreground">
                <tr>
                  <th className="w-9 px-3 py-2">
                    <input
                      type="checkbox"
                      checked={allSelected}
                      onChange={toggleSelectAll}
                      aria-label="Selecionar página"
                      className="accent-[hsl(var(--primary))]"
                    />
                  </th>
                  <Th>Prefixo</Th>
                  <Th>Categoria</Th>
                  <Th>Next-hop</Th>
                  <Th>Communities</Th>
                  <Th>Origem</Th>
                  <Th>Estado</Th>
                  <Th className="text-right">Ações</Th>
                </tr>
              </thead>
              <tbody>
                {data.items.map((route) => (
                  <tr key={route.id} className="border-t border-border hover:bg-muted/40">
                    <td className="px-3 py-1.5">
                      <input
                        type="checkbox"
                        checked={selected.has(route.id)}
                        onChange={() => toggleSelect(route.id)}
                        aria-label={`Selecionar ${route.prefix}`}
                        className="accent-[hsl(var(--primary))]"
                      />
                    </td>
                    <Td className="font-medium tabular-nums">{route.prefix}</Td>
                    <Td className="max-w-[200px] truncate text-muted-foreground">
                      {route.category || '—'}
                    </Td>
                    <Td className="tabular-nums text-muted-foreground">
                      {route.effective_next_hop}
                    </Td>
                    <Td>
                      <span className="flex flex-wrap gap-1">
                        {route.effective_communities.split(',').map((c) => (
                          <Badge key={c} tone="primary">
                            {c}
                          </Badge>
                        ))}
                      </span>
                    </Td>
                    <Td className="text-muted-foreground">{route.source}</Td>
                    <Td>
                      {route.enabled ? (
                        <Badge tone="success">anunciando</Badge>
                      ) : (
                        <Badge tone="warning">pausada</Badge>
                      )}
                    </Td>
                    <Td className="text-right">
                      <div className="flex justify-end gap-1">
                        <IconBtn
                          title={route.enabled ? 'Pausar anúncio' : 'Retomar anúncio'}
                          onClick={() => toggleOne(route)}
                        >
                          {route.enabled ? <Pause size={14} /> : <Play size={14} />}
                        </IconBtn>
                        <IconBtn title="Remover" danger onClick={() => removeOne(route)}>
                          <Trash2 size={14} />
                        </IconBtn>
                      </div>
                    </Td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>

          <div className="mt-3 flex flex-wrap items-center justify-between gap-2 text-[12.5px] text-muted-foreground">
            <span className="tabular-nums">
              {num(data.total)} prefixo(s) · página {page} de {totalPages}
            </span>
            <div className="flex items-center gap-2">
              <Button
                variant="outline"
                size="sm"
                disabled={page <= 1}
                onClick={() => setPage((p) => p - 1)}
              >
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

      <AddModal
        route={adding}
        onChange={setAdding}
        onClose={() => setAdding(null)}
        onSaved={async () => {
          setAdding(null);
          await load();
        }}
      />
      <BulkModal
        state={bulk}
        onChange={setBulk}
        onClose={() => setBulk(null)}
        onSaved={async () => {
          setBulk(null);
          await load();
        }}
      />
    </>
  );
}

function AddModal({ route, onChange, onClose, onSaved }) {
  const [busy, setBusy] = useState(false);
  const toast = useToast();
  if (!route) return null;
  const set = (patch) => onChange({ ...route, ...patch });

  const save = async () => {
    setBusy(true);
    try {
      await api.routeCreate(route);
      toast.success(`${route.prefix} anunciado.`);
      await onSaved();
    } catch (err) {
      toast.error(err.message);
    } finally {
      setBusy(false);
    }
  };

  return (
    <Modal
      open
      onClose={onClose}
      title="Nova rota"
      description="Um IP vira /32 automaticamente. Deixe next-hop e communities em branco para usar o padrão."
      footer={
        <>
          <Button variant="ghost" onClick={onClose}>
            Cancelar
          </Button>
          <Button onClick={save} disabled={busy || !route.prefix}>
            {busy ? <Loader2 size={15} className="animate-spin" /> : null} Anunciar
          </Button>
        </>
      }
    >
      <div className="grid gap-4 sm:grid-cols-2">
        <Label className="sm:col-span-2">
          Prefixo ou IP
          <Input
            value={route.prefix}
            onChange={(e) => set({ prefix: e.target.value })}
            placeholder="45.128.10.7 ou 45.128.10.0/24"
            autoFocus
          />
        </Label>
        <Label>
          Categoria
          <Input
            value={route.category || ''}
            onChange={(e) => set({ category: e.target.value })}
            placeholder="Mirai C2"
          />
        </Label>
        <Label>
          Next-hop (opcional)
          <Input
            value={route.next_hop || ''}
            onChange={(e) => set({ next_hop: e.target.value })}
            placeholder="usa o padrão"
          />
        </Label>
        <Label className="sm:col-span-2">
          Communities (opcional, separadas por vírgula)
          <Input
            value={route.communities || ''}
            onChange={(e) => set({ communities: e.target.value })}
            placeholder="usa o padrão (65535:666)"
          />
        </Label>
        <Label className="sm:col-span-2">
          Nota
          <Input
            value={route.note || ''}
            onChange={(e) => set({ note: e.target.value })}
            placeholder="origem da informação, ticket, etc"
          />
        </Label>
      </div>
    </Modal>
  );
}

function BulkModal({ state, onChange, onClose, onSaved }) {
  const [busy, setBusy] = useState(false);
  const [result, setResult] = useState(null);
  const toast = useToast();
  if (!state) return null;
  const set = (patch) => onChange({ ...state, ...patch });

  const save = async () => {
    setBusy(true);
    try {
      const res = await api.routeBulkAdd(state);
      setResult(res);
      toast.success(`${res.adicionados} prefixo(s) adicionados.`);
      if (!res.total_invalidos) await onSaved();
    } catch (err) {
      toast.error(err.message);
    } finally {
      setBusy(false);
    }
  };

  return (
    <Modal
      open
      onClose={onClose}
      title="Adicionar em lote"
      description="Um prefixo por linha. Aceita 'prefixo' ou 'prefixo, categoria'. Linhas com # são ignoradas."
      size="lg"
      footer={
        <>
          <Button variant="ghost" onClick={onClose}>
            Fechar
          </Button>
          <Button onClick={save} disabled={busy || !state.content.trim()}>
            {busy ? <Loader2 size={15} className="animate-spin" /> : null} Adicionar
          </Button>
        </>
      }
    >
      <div className="space-y-4">
        <Textarea
          rows={12}
          value={state.content}
          onChange={(e) => set({ content: e.target.value })}
          placeholder={'45.128.10.7\n185.220.101.0/24, Mirai C2\n# comentário'}
        />
        <Label>
          Categoria padrão (para as linhas sem categoria)
          <Input
            value={state.category || ''}
            onChange={(e) => set({ category: e.target.value })}
            placeholder="opcional"
          />
        </Label>

        {result ? (
          <div className="rounded-lg border border-border p-3 text-sm">
            <p className="tabular-nums">
              {result.adicionados} adicionados · {result.ja_existiam} já existiam ·{' '}
              {result.duplicados_no_texto} duplicados no texto · {result.total_invalidos}{' '}
              inválidos
            </p>
            {result.invalidos?.length ? (
              <ul className="scrollbar-thin mt-2 max-h-40 space-y-1 overflow-y-auto text-xs text-muted-foreground">
                {result.invalidos.map((i, idx) => (
                  <li key={`${i.raw}-${idx}`}>
                    linha {i.line}: <code>{i.raw}</code> — {i.reason}
                  </li>
                ))}
              </ul>
            ) : null}
          </div>
        ) : null}
      </div>
    </Modal>
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

function Td({ children, className = '' }) {
  return <td className={`px-3 py-1.5 ${className}`}>{children}</td>;
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
