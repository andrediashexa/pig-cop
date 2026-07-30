'use client';
import { useEffect } from 'react';
import { X } from 'lucide-react';
import { cn } from '../../lib/utils';

export function Modal({ open, onClose, title, description, children, footer, size = 'md' }) {
  useEffect(() => {
    if (!open) return undefined;
    const onKey = (e) => {
      if (e.key === 'Escape') onClose?.();
    };
    document.addEventListener('keydown', onKey);
    return () => document.removeEventListener('keydown', onKey);
  }, [open, onClose]);

  if (!open) return null;

  const widths = { sm: 'max-w-md', md: 'max-w-xl', lg: 'max-w-3xl', xl: 'max-w-5xl' };

  return (
    <div className="fixed inset-0 z-50 flex items-start justify-center overflow-y-auto bg-black/50 p-4 backdrop-blur-sm sm:items-center">
      <div
        className={cn(
          'titanium-edge w-full rounded-2xl border border-border bg-card shadow-2xl',
          widths[size]
        )}
        role="dialog"
        aria-modal="true"
      >
        <div className="titanium-gradient flex items-start justify-between gap-4 rounded-t-2xl border-b border-border p-5">
          <div className="min-w-0">
            <h2 className="text-lg font-semibold leading-tight">{title}</h2>
            {description ? (
              <p className="mt-1 text-sm text-muted-foreground">{description}</p>
            ) : null}
          </div>
          <button
            type="button"
            onClick={onClose}
            className="rounded-md p-1 text-muted-foreground transition-colors hover:bg-muted hover:text-foreground"
            aria-label="Fechar"
          >
            <X size={18} />
          </button>
        </div>
        <div className="scrollbar-thin max-h-[65vh] overflow-y-auto p-5">{children}</div>
        {footer ? (
          <div className="flex items-center justify-end gap-2 border-t border-border p-4">
            {footer}
          </div>
        ) : null}
      </div>
    </div>
  );
}
