'use client';
import { useCallback, useEffect, useState } from 'react';
import AppShell from './layout/AppShell';
import { ToastProvider } from './components/Toast';
import { navItems } from './navItems';
import { api } from './lib/api';
import LoginPage from './features/login/LoginPage';
import DashboardPage from './features/dashboard/DashboardPage';
import PeersPage from './features/peers/PeersPage';
import RoutesPage from './features/routes/RoutesPage';
import ImportPage from './features/import/ImportPage';
import AuditPage from './features/audit/AuditPage';

const NAV_KEY = 'pigcop:nav';
const THEME_KEY = 'pigcop:theme';

function applyTheme(theme) {
  document.documentElement.setAttribute('data-theme', theme);
  document.documentElement.classList.toggle('dark', theme === 'dark');
}

export default function App() {
  const [user, setUser] = useState(null);
  const [checking, setChecking] = useState(true);
  const [activeNav, setActiveNav] = useState('dashboard');
  const [theme, setTheme] = useState('dark');
  const [version, setVersion] = useState('');

  useEffect(() => {
    const savedTheme = localStorage.getItem(THEME_KEY) || 'dark';
    setTheme(savedTheme);
    applyTheme(savedTheme);
    const savedNav = localStorage.getItem(NAV_KEY);
    if (savedNav && navItems.some((n) => n.id === savedNav)) setActiveNav(savedNav);

    api
      .me()
      .then((me) => {
        setUser(me.username);
        setVersion(me.version);
      })
      .catch(() => setUser(null))
      .finally(() => setChecking(false));
  }, []);

  const selectNav = useCallback((id) => {
    setActiveNav(id);
    localStorage.setItem(NAV_KEY, id);
  }, []);

  const toggleTheme = useCallback(() => {
    setTheme((current) => {
      const next = current === 'dark' ? 'light' : 'dark';
      applyTheme(next);
      localStorage.setItem(THEME_KEY, next);
      return next;
    });
  }, []);

  const logout = useCallback(async () => {
    try {
      await api.logout();
    } finally {
      setUser(null);
    }
  }, []);

  if (checking) {
    return (
      <div className="flex h-screen items-center justify-center bg-background text-muted-foreground">
        carregando…
      </div>
    );
  }

  if (!user) {
    return (
      <ToastProvider>
        <LoginPage
          onLogin={(username) => {
            setUser(username);
            api.me().then((me) => setVersion(me.version)).catch(() => {});
          }}
        />
      </ToastProvider>
    );
  }

  const pages = {
    dashboard: <DashboardPage onNavigate={selectNav} />,
    sessoes: <PeersPage />,
    rotas: <RoutesPage />,
    importar: <ImportPage onDone={() => selectNav('rotas')} />,
    auditoria: <AuditPage />
  };

  return (
    <ToastProvider>
      <AppShell
        navItems={navItems}
        activeNav={activeNav}
        onSelectNav={selectNav}
        user={user}
        onLogout={logout}
        theme={theme}
        onToggleTheme={toggleTheme}
        versionLabel={version ? `v${version}` : ''}
      >
        {pages[activeNav] || pages.dashboard}
      </AppShell>
    </ToastProvider>
  );
}
