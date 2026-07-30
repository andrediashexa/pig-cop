export const nf = new Intl.NumberFormat('pt-BR');

export function num(value) {
  if (value === null || value === undefined) return '—';
  return nf.format(value);
}

export function dateTime(iso) {
  if (!iso) return '—';
  const d = new Date(iso);
  if (Number.isNaN(d.getTime())) return '—';
  return d.toLocaleString('pt-BR', { dateStyle: 'short', timeStyle: 'medium' });
}

/** '2026-07-28T07:00:00Z' -> '2h 13m' desde então. */
export function since(iso) {
  if (!iso) return '—';
  const start = new Date(iso).getTime();
  if (Number.isNaN(start)) return '—';
  return duration(Math.max(0, Math.floor((Date.now() - start) / 1000)));
}

export function duration(totalSeconds) {
  const s = Math.floor(totalSeconds % 60);
  const m = Math.floor((totalSeconds / 60) % 60);
  const h = Math.floor((totalSeconds / 3600) % 24);
  const d = Math.floor(totalSeconds / 86400);
  if (d) return `${d}d ${h}h`;
  if (h) return `${h}h ${m}m`;
  if (m) return `${m}m ${s}s`;
  return `${s}s`;
}

export const SESSION_TONES = {
  established: 'success',
  openconfirm: 'warning',
  opensent: 'warning',
  active: 'warning',
  connect: 'warning',
  idle: 'danger',
  unknown: 'neutral'
};

export const SESSION_LABELS = {
  established: 'ESTABLISHED',
  openconfirm: 'OPENCONFIRM',
  opensent: 'OPENSENT',
  active: 'ACTIVE',
  connect: 'CONNECT',
  idle: 'IDLE',
  unknown: 'DESCONHECIDO'
};
