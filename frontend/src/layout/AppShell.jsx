'use client';
import { useCallback, useEffect, useRef, useState } from 'react';
import {
  ChevronLeft,
  ChevronRight,
  Gauge,
  History,
  List,
  LogOut,
  Menu,
  Moon,
  Network,
  Sun,
  Upload,
  X
} from 'lucide-react';
import { cn } from '../lib/utils';
import { Slogan } from '../components/Slogan';

const ICONS = { gauge: Gauge, network: Network, list: List, upload: Upload, history: History };

function NavIcon({ name, size = 16, className = '' }) {
  const Cmp = ICONS[name] || Gauge;
  return <Cmp size={size} className={className} aria-hidden="true" />;
}

function useOutside(ref, onOutside, isOpen) {
  useEffect(() => {
    if (!isOpen) return undefined;
    const onMouse = (e) => {
      if (ref.current && !ref.current.contains(e.target)) onOutside();
    };
    const onKey = (e) => {
      if (e.key === 'Escape') onOutside();
    };
    document.addEventListener('mousedown', onMouse);
    document.addEventListener('keydown', onKey);
    return () => {
      document.removeEventListener('mousedown', onMouse);
      document.removeEventListener('keydown', onKey);
    };
  }, [ref, onOutside, isOpen]);
}

function NavLeaf({ item, active, collapsed, onSelect }) {
  return (
    <button
      type="button"
      onClick={() => onSelect(item.id)}
      title={collapsed ? item.label : undefined}
      className={cn(
        'group relative flex w-full items-center gap-3 rounded-md px-3 py-2 text-left text-sm transition-colors',
        active
          ? 'bg-primary/10 font-medium text-foreground'
          : 'text-muted-foreground hover:bg-muted hover:text-foreground',
        collapsed && 'justify-center px-0'
      )}
    >
      {active ? (
        <span className="absolute left-0 top-1/2 h-5 w-[2px] -translate-y-1/2 rounded-full bg-primary" />
      ) : null}
      <NavIcon name={item.icon} className={active ? 'text-primary' : ''} />
      {!collapsed ? <span className="truncate">{item.label}</span> : null}
    </button>
  );
}

function Wordmark({ collapsed }) {
  return (
    <div className="flex items-center gap-2">
      <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-lg bg-primary/15 text-primary">
        <Network size={17} />
      </div>
      {!collapsed ? (
        <div className="min-w-0">
          <p className="hexa-titanium-text truncate text-sm font-bold tracking-tight">
            PIG-COP
          </p>
          <p className="truncate text-[10px] uppercase tracking-[0.12em] text-muted-foreground">
            Controller
          </p>
        </div>
      ) : null}
    </div>
  );
}

function MobileSheet({ open, onClose, children }) {
  if (!open) return null;
  return (
    <div className="fixed inset-0 z-50 md:hidden">
      <div className="absolute inset-0 bg-black/40 backdrop-blur-sm" onClick={onClose} />
      <div className="absolute inset-y-0 left-0 w-[248px] border-r border-border bg-background">
        {children}
      </div>
    </div>
  );
}

export default function AppShell({
  navItems,
  activeNav,
  onSelectNav,
  user,
  onLogout,
  theme,
  onToggleTheme,
  versionLabel,
  headerRight,
  children
}) {
  const [collapsed, setCollapsed] = useState(false);
  const [mobileOpen, setMobileOpen] = useState(false);
  const [userMenu, setUserMenu] = useState(false);
  const userRef = useRef(null);

  useOutside(userRef, useCallback(() => setUserMenu(false), []), userMenu);

  const selectNav = (id) => {
    onSelectNav(id);
    setMobileOpen(false);
  };

  const sidebar = (isCollapsed) => (
    <div className="flex h-full min-h-0 flex-col bg-background">
      <div className="titanium-gradient titanium-edge border-b border-border p-3">
        <Wordmark collapsed={isCollapsed} />
      </div>

      <nav className="scrollbar-thin min-h-0 flex-1 space-y-1 overflow-y-auto p-2">
        {navItems.map((item) => (
          <NavLeaf
            key={item.id}
            item={item}
            active={activeNav === item.id}
            collapsed={isCollapsed}
            onSelect={selectNav}
          />
        ))}
      </nav>

      <div className="space-y-2 border-t border-border p-2">
        <button
          type="button"
          onClick={onToggleTheme}
          title="Alternar tema"
          className={cn(
            'flex w-full items-center gap-3 rounded-md px-3 py-2 text-sm text-muted-foreground transition-colors hover:bg-muted hover:text-foreground',
            isCollapsed && 'justify-center px-0'
          )}
        >
          {theme === 'dark' ? <Moon size={16} /> : <Sun size={16} />}
          {!isCollapsed ? <span>{theme === 'dark' ? 'Tema escuro' : 'Tema claro'}</span> : null}
        </button>

        <div className="relative" ref={userRef}>
          <button
            type="button"
            onClick={() => setUserMenu((v) => !v)}
            className={cn(
              'flex w-full items-center gap-3 rounded-md px-3 py-2 text-sm transition-colors hover:bg-muted',
              isCollapsed && 'justify-center px-0'
            )}
          >
            <span className="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-primary/15 text-[11px] font-semibold uppercase text-primary">
              {(user || '?').slice(0, 2)}
            </span>
            {!isCollapsed ? (
              <span className="min-w-0 flex-1 truncate text-left text-foreground">{user}</span>
            ) : null}
          </button>
          {userMenu ? (
            <div className="absolute bottom-full left-0 z-20 mb-1 w-full min-w-[180px] overflow-hidden rounded-lg border border-border bg-card shadow-xl">
              <button
                type="button"
                onClick={onLogout}
                className="flex w-full items-center gap-2 px-3 py-2 text-left text-sm text-foreground transition-colors hover:bg-muted"
              >
                <LogOut size={15} /> Sair
              </button>
            </div>
          ) : null}
        </div>

        {!isCollapsed ? (
          <div className="px-3 pb-1">
            <Slogan className="text-[10px]" />
            {versionLabel ? (
              <p className="mt-0.5 text-[10px] text-muted-foreground">{versionLabel}</p>
            ) : null}
          </div>
        ) : null}
      </div>
    </div>
  );

  return (
    <div className="flex h-screen flex-col bg-background text-foreground">
      <div className="flex min-h-0 flex-1">
        <div
          className={cn(
            'relative hidden shrink-0 border-r border-border transition-[width] duration-200 md:block',
            collapsed ? 'w-16' : 'w-[248px]'
          )}
        >
          {sidebar(collapsed)}
          <button
            type="button"
            onClick={() => setCollapsed((v) => !v)}
            aria-label={collapsed ? 'Expandir menu' : 'Recolher menu'}
            className="absolute -right-3 top-16 z-10 flex h-6 w-6 items-center justify-center rounded-full border border-border bg-card text-muted-foreground shadow transition-colors hover:text-foreground"
          >
            {collapsed ? <ChevronRight size={14} /> : <ChevronLeft size={14} />}
          </button>
        </div>

        <main className="flex min-h-0 min-w-0 flex-1 flex-col">
          <div className="flex items-center justify-between gap-2 border-b border-border px-3 py-2 md:hidden">
            <button
              type="button"
              onClick={() => setMobileOpen(true)}
              className="rounded-md p-2 text-muted-foreground hover:bg-muted hover:text-foreground"
              aria-label="Abrir menu"
            >
              <Menu size={18} />
            </button>
            <Wordmark collapsed={false} />
            <span className="w-9" />
          </div>

          <div className="scrollbar-thin min-h-0 flex-1 overflow-y-auto">
            <div className="mx-auto w-full max-w-[1280px] px-3 py-4 sm:px-4 lg:px-6 lg:py-6">
              {headerRight}
              {children}
            </div>
          </div>
        </main>
      </div>

      <MobileSheet open={mobileOpen} onClose={() => setMobileOpen(false)}>
        <div className="flex h-full flex-col">
          <div className="flex justify-end p-2">
            <button
              type="button"
              onClick={() => setMobileOpen(false)}
              className="rounded-md p-1 text-muted-foreground hover:bg-muted hover:text-foreground"
              aria-label="Fechar menu"
            >
              <X size={18} />
            </button>
          </div>
          <div className="min-h-0 flex-1">{sidebar(false)}</div>
        </div>
      </MobileSheet>
    </div>
  );
}
