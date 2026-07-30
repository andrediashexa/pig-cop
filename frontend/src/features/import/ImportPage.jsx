'use client';
import { useRef, useState } from 'react';
import { AlertTriangle, CheckCircle2, FileUp, Loader2, Upload } from 'lucide-react';
import { api } from '../../lib/api';
import { num } from '../../lib/format';
import { Badge } from '../../components/ui/badge';
import { Button } from '../../components/ui/button';
import { Input, Label, Textarea } from '../../components/ui/input';
import { PageHeader } from '../../components/PageHeader';
import { useToast } from '../../components/Toast';

export default function ImportPage({ onDone }) {
  const [file, setFile] = useState(null);
  const [text, setText] = useState('');
  const [onlyList, setOnlyList] = useState('BLOCK-BGP');
  const [category, setCategory] = useState('');
  const [preview, setPreview] = useState(null);
  const [busy, setBusy] = useState(false);
  const [job, setJob] = useState(null);
  const fileRef = useRef(null);
  const toast = useToast();

  const buildForm = () => {
    const fd = new FormData();
    if (file) fd.append('file', file);
    else fd.append('file', new Blob([text], { type: 'text/plain' }), 'colado.txt');
    if (onlyList) fd.append('only_list', onlyList);
    if (category) fd.append('category', category);
    return fd;
  };

  const hasInput = !!file || !!text.trim();

  const doPreview = async () => {
    setBusy(true);
    setJob(null);
    try {
      setPreview(await api.importPreview(buildForm()));
    } catch (err) {
      toast.error(err.message);
      setPreview(null);
    } finally {
      setBusy(false);
    }
  };

  const doImport = async () => {
    setBusy(true);
    try {
      const res = await api.importCommit(buildForm());
      if (!res.job_id) {
        toast.info(res.mensagem || 'nada novo para importar');
        setBusy(false);
        return;
      }
      setJob({ id: res.job_id, status: 'running', done: 0, total: res.novos });
      let attempts = 0;
      while (attempts < 600) {
        // eslint-disable-next-line no-await-in-loop
        await new Promise((r) => setTimeout(r, 700));
        // eslint-disable-next-line no-await-in-loop
        const status = await api.job(res.job_id);
        setJob(status);
        if (status.status === 'done') {
          toast.success(
            `${status.result.gravados} prefixos importados e ${status.result.injetados} injetados no BGP.`
          );
          break;
        }
        if (status.status === 'error') {
          toast.error(status.error || 'falha na importação');
          break;
        }
        attempts += 1;
      }
    } catch (err) {
      toast.error(err.message);
    } finally {
      setBusy(false);
    }
  };

  return (
    <>
      <PageHeader
        title="Importar prefixos"
        description="Aceita export do RouterOS (/ip firewall address-list) ou lista simples. O dry-run mostra o que vai acontecer antes de gravar."
      />

      <div className="grid gap-4 lg:grid-cols-2">
        <div className="space-y-4 rounded-lg border border-border bg-card p-4">
          <h2 className="text-sm font-semibold">1. Origem</h2>

          <div
            onClick={() => fileRef.current?.click()}
            onKeyDown={(e) => e.key === 'Enter' && fileRef.current?.click()}
            role="button"
            tabIndex={0}
            className="flex cursor-pointer flex-col items-center gap-2 rounded-lg border border-dashed border-border px-4 py-8 text-center transition-colors hover:border-primary/40 hover:bg-muted/40"
          >
            <FileUp size={22} className="text-muted-foreground" />
            <p className="text-sm">
              {file ? (
                <span className="font-medium text-foreground">{file.name}</span>
              ) : (
                'Clique para escolher um arquivo .rsc / .txt / .csv'
              )}
            </p>
            <p className="text-xs text-muted-foreground">máximo 16 MB</p>
          </div>
          <input
            ref={fileRef}
            type="file"
            accept=".rsc,.txt,.csv,text/plain"
            className="hidden"
            onChange={(e) => {
              setFile(e.target.files?.[0] || null);
              setText('');
              setPreview(null);
            }}
          />

          <div className="relative text-center text-xs uppercase tracking-widest text-muted-foreground">
            ou cole abaixo
          </div>

          <Textarea
            rows={8}
            value={text}
            onChange={(e) => {
              setText(e.target.value);
              setFile(null);
              setPreview(null);
            }}
            placeholder={'add address=1.2.3.4 comment="block-attack-Mirai C2" list=BLOCK-BGP\nou simplesmente\n1.2.3.4'}
          />

          <div className="grid gap-3 sm:grid-cols-2">
            <Label>
              Filtrar por address-list
              <Input
                value={onlyList}
                onChange={(e) => setOnlyList(e.target.value)}
                placeholder="BLOCK-BGP (vazio = todas)"
              />
            </Label>
            <Label>
              Categoria padrão
              <Input
                value={category}
                onChange={(e) => setCategory(e.target.value)}
                placeholder="opcional"
              />
            </Label>
          </div>

          <Button variant="outline" onClick={doPreview} disabled={busy || !hasInput} className="w-full">
            {busy && !job ? <Loader2 size={15} className="animate-spin" /> : null}
            Analisar (dry-run)
          </Button>
        </div>

        <div className="space-y-4 rounded-lg border border-border bg-card p-4">
          <h2 className="text-sm font-semibold">2. Conferência</h2>

          {!preview ? (
            <p className="rounded-lg border border-dashed border-border px-4 py-10 text-center text-sm text-muted-foreground">
              Rode o dry-run para ver o que será importado.
            </p>
          ) : (
            <div className="space-y-3">
              <div className="grid grid-cols-2 gap-2 sm:grid-cols-4">
                <Stat label="Lidos" value={num(preview.parsed)} />
                <Stat label="Novos" value={num(preview.novos)} tone="accent" />
                <Stat label="Já existem" value={num(preview.ja_existem)} />
                <Stat
                  label="Inválidos"
                  value={num(preview.invalidos)}
                  tone={preview.invalidos ? 'danger' : undefined}
                />
              </div>

              {preview.listas_encontradas?.length ? (
                <p className="text-xs text-muted-foreground">
                  address-lists no arquivo:{' '}
                  {preview.listas_encontradas.map((l) => (
                    <Badge key={l} className="ml-1">
                      {l}
                    </Badge>
                  ))}
                  {preview.only_list ? ` · filtrando por ${preview.only_list}` : ''}
                </p>
              ) : null}

              {preview.excede_limite ? (
                <p className="flex items-start gap-2 rounded-lg border border-destructive/25 bg-destructive/10 px-3 py-2 text-sm text-destructive">
                  <AlertTriangle size={16} className="mt-0.5 shrink-0" />
                  Excede o limite: restam {num(preview.capacidade_restante)} vagas
                  (MAX_ROUTES). Aumente o limite ou remova rotas antes.
                </p>
              ) : null}

              {Object.keys(preview.categorias).length ? (
                <div>
                  <p className="mb-1 text-xs font-semibold uppercase tracking-wider text-muted-foreground">
                    Categorias detectadas
                  </p>
                  <div className="scrollbar-thin flex max-h-40 flex-wrap gap-1 overflow-y-auto">
                    {Object.entries(preview.categorias).map(([cat, total]) => (
                      <Badge key={cat} tone="primary">
                        {cat} · {num(total)}
                      </Badge>
                    ))}
                  </div>
                </div>
              ) : null}

              {preview.invalidos_amostra?.length ? (
                <div>
                  <p className="mb-1 text-xs font-semibold uppercase tracking-wider text-muted-foreground">
                    Recusados (amostra)
                  </p>
                  <ul className="scrollbar-thin max-h-40 space-y-1 overflow-y-auto text-xs text-muted-foreground">
                    {preview.invalidos_amostra.map((i, idx) => (
                      <li key={`${i.raw}-${idx}`}>
                        linha {i.line}: <code>{i.raw}</code> — {i.reason}
                      </li>
                    ))}
                  </ul>
                </div>
              ) : null}

              <Button
                onClick={doImport}
                disabled={busy || !preview.novos || preview.excede_limite}
                className="w-full"
              >
                {busy && job ? (
                  <Loader2 size={15} className="animate-spin" />
                ) : (
                  <Upload size={15} />
                )}
                Confirmar importação de {num(preview.novos)} prefixo(s)
              </Button>
            </div>
          )}

          {job ? (
            <div className="rounded-lg border border-border p-3">
              <div className="flex items-center justify-between text-xs">
                <span className="text-muted-foreground">
                  {job.status === 'done'
                    ? 'concluído'
                    : job.status === 'error'
                      ? 'erro'
                      : 'importando…'}
                </span>
                <span className="tabular-nums">
                  {num(job.done)} / {num(job.total)}
                </span>
              </div>
              <div className="mt-2 h-1.5 overflow-hidden rounded-full bg-muted">
                <div
                  className={`h-full rounded-full transition-all ${
                    job.status === 'error' ? 'bg-destructive' : 'bg-primary'
                  }`}
                  style={{ width: `${job.total ? (job.done / job.total) * 100 : 0}%` }}
                />
              </div>
              {job.status === 'done' ? (
                <div className="mt-3 flex items-center justify-between gap-2">
                  <p className="flex items-center gap-1.5 text-sm text-emerald-500">
                    <CheckCircle2 size={15} /> {num(job.result?.injetados)} injetados no BGP
                  </p>
                  <Button size="sm" variant="outline" onClick={onDone}>
                    Ver rotas
                  </Button>
                </div>
              ) : null}
              {job.status === 'error' ? (
                <p className="mt-2 text-sm text-destructive">{job.error}</p>
              ) : null}
            </div>
          ) : null}
        </div>
      </div>
    </>
  );
}

function Stat({ label, value, tone }) {
  const toneText =
    tone === 'accent' ? 'text-primary' : tone === 'danger' ? 'text-destructive' : 'text-foreground';
  return (
    <div className="rounded-lg border border-border p-2.5">
      <p className="text-[10px] font-semibold uppercase tracking-[0.08em] text-muted-foreground">
        {label}
      </p>
      <p className={`mt-1 text-lg font-semibold tabular-nums ${toneText}`}>{value}</p>
    </div>
  );
}
