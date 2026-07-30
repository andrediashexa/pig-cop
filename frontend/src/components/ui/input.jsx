import { cn } from '../../lib/utils';

export function Input({ className, ...props }) {
  return (
    <input
      className={cn(
        'flex h-11 w-full rounded-lg border border-border bg-card px-3 py-2 text-sm text-foreground shadow-sm transition-colors placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 focus-visible:ring-offset-background disabled:cursor-not-allowed disabled:opacity-70',
        className
      )}
      {...props}
    />
  );
}

export function Textarea({ className, ...props }) {
  return (
    <textarea
      className={cn(
        'scrollbar-thin flex w-full rounded-lg border border-border bg-card px-3 py-2 font-mono text-[12.5px] text-foreground shadow-sm transition-colors placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 focus-visible:ring-offset-background',
        className
      )}
      {...props}
    />
  );
}

export function Label({ className, children, ...props }) {
  return (
    <label
      className={cn('flex w-full flex-col gap-2 text-sm font-semibold text-foreground', className)}
      {...props}
    >
      {children}
    </label>
  );
}

/** Input denso usado dentro de tabelas e barras de filtro. */
export const denseInput =
  'h-9 rounded-md border border-border bg-card px-2 text-[12.5px] text-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring';
