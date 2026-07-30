import { cn } from '../../lib/utils';

const tones = {
  neutral: 'bg-muted text-muted-foreground border-border',
  primary: 'bg-primary/12 text-primary border-primary/20',
  success: 'bg-emerald-500/12 text-emerald-600 dark:text-emerald-400 border-emerald-500/20',
  warning: 'bg-amber-500/12 text-amber-700 dark:text-amber-400 border-amber-500/20',
  danger: 'bg-destructive/12 text-destructive border-destructive/25'
};

export function Badge({ tone = 'neutral', className, ...props }) {
  return (
    <span
      className={cn(
        'inline-flex items-center gap-1 whitespace-nowrap rounded-full border px-2 py-0.5 text-xs font-medium',
        tones[tone],
        className
      )}
      {...props}
    />
  );
}
