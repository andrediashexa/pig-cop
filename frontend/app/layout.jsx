import { Inter } from 'next/font/google';
import '../src/styles/globals.css';

const inter = Inter({
  subsets: ['latin'],
  display: 'swap',
  weight: ['400', '500', '600', '700'],
  variable: '--font-inter'
});

export const metadata = {
  title: 'PIG-COP — Controller BGP',
  description: 'PIG-COP: bloqueio de controladores C2 de botnets DDoS via BGP'
};

export const viewport = { width: 'device-width', initialScale: 1 };

export default function RootLayout({ children }) {
  return (
    <html lang="pt-BR" className={`dark ${inter.variable}`} data-theme="dark">
      <body className="font-sans">{children}</body>
    </html>
  );
}
