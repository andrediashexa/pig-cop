export function PageHeader({ title, description, actions }) {
  return (
    <div className="mb-5 flex flex-wrap items-start justify-between gap-3">
      <div className="min-w-0">
        <h1 className="text-2xl font-semibold leading-tight tracking-tight">{title}</h1>
        {description ? (
          <p className="mt-1 text-sm text-muted-foreground">{description}</p>
        ) : null}
      </div>
      {actions ? <div className="flex flex-wrap items-center gap-2">{actions}</div> : null}
    </div>
  );
}

export function Kpi({ label, value, hint, tone }) {
  const toneText =
    tone === 'accent'
      ? 'text-primary'
      : tone === 'warning'
        ? 'text-amber-400'
        : tone === 'danger'
          ? 'text-rose-400'
          : 'text-foreground';
  return (
    <div className="titanium-gradient titanium-edge rounded-lg border border-border p-4">
      <p className="text-[10.5px] font-semibold uppercase tracking-[0.08em] text-muted-foreground">
        {label}
      </p>
      <p className={`mt-2 text-[26px] font-semibold leading-none tabular-nums ${toneText}`}>
        {value}
      </p>
      {hint ? <p className="mt-1.5 text-[11px] text-muted-foreground">{hint}</p> : null}
    </div>
  );
}

export function EmptyState({ icon: Icon, title, description, action }) {
  return (
    <div className="flex flex-col items-center justify-center gap-2 rounded-lg border border-dashed border-border px-6 py-12 text-center">
      {Icon ? <Icon size={26} className="text-muted-foreground" /> : null}
      <p className="text-sm font-medium text-foreground">{title}</p>
      {description ? (
        <p className="max-w-md text-sm text-muted-foreground">{description}</p>
      ) : null}
      {action ? <div className="mt-2">{action}</div> : null}
    </div>
  );
}
