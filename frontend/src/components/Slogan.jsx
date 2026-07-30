import { cn } from '../lib/utils';

/** Slogan do projeto: "I've Got ~~Balls~~ Routers Of Steel". */
export function Slogan({ className }) {
  return (
    <p
      className={cn(
        'select-none text-[11px] italic tracking-tight text-muted-foreground',
        className
      )}
    >
      I&apos;ve Got{' '}
      <span className="line-through decoration-destructive decoration-2">Balls</span>{' '}
      <span className="font-semibold not-italic text-foreground">Routers</span> Of Steel
    </p>
  );
}
