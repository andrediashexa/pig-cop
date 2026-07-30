'use client';
import { useState } from 'react';
import { Loader2, Lock, Network, User } from 'lucide-react';
import { api } from '../../lib/api';
import { Button } from '../../components/ui/button';
import { Input, Label } from '../../components/ui/input';
import { Slogan } from '../../components/Slogan';

export default function LoginPage({ onLogin }) {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [busy, setBusy] = useState(false);

  const submit = async (e) => {
    e.preventDefault();
    if (busy) return;
    setBusy(true);
    setError('');
    try {
      const me = await api.login(username, password);
      onLogin(me.username);
    } catch (err) {
      setError(err.message || 'não foi possível entrar');
    } finally {
      setBusy(false);
    }
  };

  return (
    <div className="flex min-h-screen items-center justify-center bg-background px-4">
      <div className="titanium-gradient titanium-edge w-full max-w-md rounded-2xl border border-border p-7 shadow-2xl">
        <div className="mb-6 flex items-center gap-3">
          <div className="flex h-11 w-11 items-center justify-center rounded-xl bg-primary/15 text-primary">
            <Network size={22} />
          </div>
          <div>
            <h1 className="hexa-titanium-text text-xl font-bold tracking-tight">PIG-COP</h1>
            <p className="text-xs uppercase tracking-[0.12em] text-muted-foreground">
              Controller
            </p>
          </div>
        </div>

        <Slogan className="mb-6 text-center text-xs" />

        <form onSubmit={submit} className="space-y-4">
          <Label>
            Usuário
            <div className="relative">
              <User
                size={16}
                className="pointer-events-none absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground"
              />
              <Input
                value={username}
                onChange={(e) => setUsername(e.target.value)}
                autoComplete="username"
                autoFocus
                required
                className="pl-9"
                placeholder="usuário"
              />
            </div>
          </Label>

          <Label>
            Senha
            <div className="relative">
              <Lock
                size={16}
                className="pointer-events-none absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground"
              />
              <Input
                type="password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                autoComplete="current-password"
                required
                className="pl-9"
                placeholder="••••••••"
              />
            </div>
          </Label>

          {error ? (
            <p className="rounded-lg border border-destructive/25 bg-destructive/10 px-3 py-2 text-sm text-destructive">
              {error}
            </p>
          ) : null}

          <Button type="submit" disabled={busy} className="h-11 w-full">
            {busy ? <Loader2 size={16} className="animate-spin" /> : null}
            {busy ? 'Entrando…' : 'Entrar'}
          </Button>
        </form>
      </div>
    </div>
  );
}
