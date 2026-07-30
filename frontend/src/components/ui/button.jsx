import { Slot } from '@radix-ui/react-slot';
import { cn } from '../../lib/utils';

const base =
  'inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 focus-visible:ring-offset-background disabled:pointer-events-none disabled:opacity-50';

const variants = {
  default: 'bg-primary text-primary-foreground hover:bg-primary/90',
  outline: 'border border-border bg-transparent text-foreground hover:bg-muted',
  ghost: 'bg-transparent text-foreground hover:bg-muted',
  destructive: 'bg-destructive text-destructive-foreground hover:bg-destructive/90',
  link: 'bg-transparent text-primary underline-offset-4 hover:underline'
};

const sizes = {
  default: 'h-9 px-4 text-sm',
  sm: 'h-8 px-3 text-xs',
  lg: 'h-10 px-5 text-sm',
  icon: 'h-9 w-9',
  'icon-sm': 'h-8 w-8'
};

export function Button({
  asChild = false,
  variant = 'default',
  size = 'default',
  className,
  ...props
}) {
  const Component = asChild ? Slot : 'button';
  return (
    <Component className={cn(base, variants[variant], sizes[size], className)} {...props} />
  );
}
