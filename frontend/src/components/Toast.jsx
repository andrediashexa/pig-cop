'use client';
import { createContext, useCallback, useContext, useMemo, useRef, useState } from 'react';
import { AlertTriangle, CheckCircle2, Info, XCircle } from 'lucide-react';
import { cn } from '../lib/utils';

const ToastContext = createContext(null);
const MAX_TOASTS = 4;
const DISMISS_MS = 4000;

const TONES = {
  success: { icon: CheckCircle2, cls: 'border-emerald-500/30 text-emerald-500' },
  error: { icon: XCircle, cls: 'border-destructive/40 text-destructive' },
  warning: { icon: AlertTriangle, cls: 'border-amber-500/30 text-amber-500' },
  info: { icon: Info, cls: 'border-primary/30 text-primary' }
};

export function ToastProvider({ children }) {
  const [toasts, setToasts] = useState([]);
  const idRef = useRef(0);

  const remove = useCallback((id) => {
    setToasts((current) => current.filter((t) => t.id !== id));
  }, []);

  const push = useCallback(
    (tone, message) => {
      const id = ++idRef.current;
      setToasts((current) => [...current, { id, tone, message }].slice(-MAX_TOASTS));
      setTimeout(() => remove(id), DISMISS_MS);
    },
    [remove]
  );

  const value = useMemo(
    () => ({
      success: (m) => push('success', m),
      error: (m) => push('error', m),
      warning: (m) => push('warning', m),
      info: (m) => push('info', m)
    }),
    [push]
  );

  return (
    <ToastContext.Provider value={value}>
      {children}
      <div className="pointer-events-none fixed bottom-4 right-4 z-[60] flex w-[min(92vw,380px)] flex-col gap-2">
        {toasts.map((t) => {
          const { icon: Icon, cls } = TONES[t.tone] || TONES.info;
          return (
            <div
              key={t.id}
              className={cn(
                'pointer-events-auto flex items-start gap-3 rounded-lg border bg-card/95 p-3 shadow-xl backdrop-blur',
                cls
              )}
            >
              <Icon size={18} className="mt-0.5 shrink-0" />
              <p className="min-w-0 flex-1 break-words text-sm text-foreground">{t.message}</p>
              <button
                type="button"
                onClick={() => remove(t.id)}
                className="text-muted-foreground transition-colors hover:text-foreground"
                aria-label="Fechar aviso"
              >
                ×
              </button>
            </div>
          );
        })}
      </div>
    </ToastContext.Provider>
  );
}

const NOOP = {
  success: (m) => console.warn('[toast sem provider]', m),
  error: (m) => console.warn('[toast sem provider]', m),
  warning: (m) => console.warn('[toast sem provider]', m),
  info: (m) => console.warn('[toast sem provider]', m)
};

export function useToast() {
  return useContext(ToastContext) || NOOP;
}
