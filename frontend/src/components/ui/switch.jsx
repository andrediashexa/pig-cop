import { cn } from '../../lib/utils';

export function Switch({ checked = false, onCheckedChange, disabled = false, className, id, ...props }) {
  return (
    <button
      type="button"
      role="switch"
      id={id}
      aria-checked={checked}
      disabled={disabled}
      onClick={() => onCheckedChange?.(!checked)}
      className={cn(
        'relative inline-flex h-6 w-11 shrink-0 items-center rounded-full border border-transparent transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:opacity-60',
        checked ? 'bg-gradient-to-br from-emerald-500 to-green-600' : 'bg-slate-300 dark:bg-slate-700',
        className
      )}
      {...props}
    >
      <span
        className={cn(
          'pointer-events-none inline-block h-5 w-5 rounded-full bg-white shadow transition-transform',
          checked ? 'translate-x-[22px]' : 'translate-x-[2px]'
        )}
      />
    </button>
  );
}
