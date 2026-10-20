import { useEffect, useState } from 'react';
import { Link, NavLink, useLocation } from 'react-router-dom';
import { BookOpen, History, LayoutDashboard, LogOut, Menu, User, X } from 'lucide-react';
import { cn } from '../lib/utils';
import { useAuth } from '../context/AuthContext';
import ThemeToggle from './ThemeToggle';

const Navbar = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const [scrolled, setScrolled] = useState(false);
  const { user, signOut } = useAuth();
  const location = useLocation();

  useEffect(() => {
    const handleScroll = () => setScrolled(window.scrollY > 10);
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  const publicLinks = [
    { name: 'Home', path: '/' },
    { name: 'About', path: '/about' },
  ];

  const userLinks = [
    { name: 'Dashboard', path: '/dashboard', icon: <LayoutDashboard size={16} /> },
    { name: 'My Tests', path: '/attempts', icon: <History size={16} /> },
    { name: 'Profile', path: '/profile', icon: <User size={16} /> },
  ];

  const isActive = (path) => location.pathname === path;

  const linkClass = (path) =>
    cn(
      'text-sm font-medium transition-colors hover:text-blue-600',
      isActive(path) ? 'text-blue-600 font-semibold' : 'text-slate-600'
    );

  return (
    <nav
      className={cn(
        'sticky top-0 w-full z-40 transition-all duration-300 border-b bg-white/95 backdrop-blur-md',
        scrolled ? 'border-slate-200 shadow-sm' : 'border-transparent'
      )}
    >
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between items-center h-16">
          <Link to="/" className="flex items-center space-x-2">
            <div className="bg-blue-600 text-white p-2 rounded-lg">
              <BookOpen size={22} />
            </div>
            <div className="flex flex-col leading-none">
              <span className="text-lg font-bold text-slate-900">Swadharma</span>
              <span className="text-[11px] font-semibold text-blue-600 uppercase tracking-widest">
                IAS
              </span>
            </div>
          </Link>

          <div className="hidden md:flex items-center gap-7">
            <ThemeToggle />
            {publicLinks.map((link) => (
              <Link key={link.path} to={link.path} className={linkClass(link.path)}>
                {link.name}
              </Link>
            ))}
            {user &&
              userLinks.map((link) => (
                <NavLink key={link.path} to={link.path} className={linkClass(link.path)}>
                  <span className="inline-flex items-center gap-1.5">
                    {link.icon}
                    {link.name}
                  </span>
                </NavLink>
              ))}
            {user ? (
              <button
                type="button"
                onClick={signOut}
                className="inline-flex items-center gap-1.5 text-sm font-medium text-slate-600 hover:text-rose-600"
              >
                <LogOut size={16} /> Sign out
              </button>
            ) : (
              <Link
                to="/login"
                className="px-4 py-2 rounded-lg bg-blue-600 text-white text-sm font-semibold hover:bg-blue-700 transition"
              >
                Sign in
              </Link>
            )}
          </div>

          <div className="md:hidden flex items-center gap-3">
            <ThemeToggle />
            <button
              type="button"
              onClick={() => setIsMenuOpen((value) => !value)}
              aria-label="Toggle menu"
              className="text-slate-700 p-2 rounded-lg hover:bg-slate-100"
            >
              {isMenuOpen ? <X size={22} /> : <Menu size={22} />}
            </button>
          </div>
        </div>
      </div>

      {isMenuOpen && (
        <div className="md:hidden bg-white border-t border-slate-200 px-4 py-3 space-y-1">
          {publicLinks.map((link) => (
            <Link
              key={link.path}
              to={link.path}
              onClick={() => setIsMenuOpen(false)}
              className="block px-3 py-2 rounded-lg text-slate-700 hover:bg-slate-100 text-sm font-medium"
            >
              {link.name}
            </Link>
          ))}
          {user &&
            userLinks.map((link) => (
              <Link
                key={link.path}
                to={link.path}
                onClick={() => setIsMenuOpen(false)}
                className="block px-3 py-2 rounded-lg text-slate-700 hover:bg-slate-100 text-sm font-medium inline-flex items-center gap-2"
              >
                {link.icon}
                {link.name}
              </Link>
            ))}
          {user ? (
            <button
              type="button"
              onClick={signOut}
              className="w-full text-left px-3 py-2 rounded-lg text-rose-600 hover:bg-rose-50 text-sm font-medium inline-flex items-center gap-2"
            >
              <LogOut size={16} /> Sign out
            </button>
          ) : (
            <Link
              to="/login"
              onClick={() => setIsMenuOpen(false)}
              className="block px-3 py-2 rounded-lg bg-blue-600 text-white text-center text-sm font-semibold"
            >
              Sign in
            </Link>
          )}
        </div>
      )}
    </nav>
  );
};

export default Navbar;
