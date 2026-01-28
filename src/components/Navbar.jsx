import React, { useState, useEffect } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { Menu, X, BookOpen, User, LogOut, Book, PenTool } from 'lucide-react';
import { cn } from '../lib/utils';
import Button from './Button';
import { useApp } from '../context/AppContext';

const Navbar = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const [scrolled, setScrolled] = useState(false);
  const location = useLocation();
  const { user } = useApp();

  useEffect(() => {
    const handleScroll = () => {
      setScrolled(window.scrollY > 10);
    };
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  const navLinks = [
    { name: 'Home', path: '/' },
    { name: 'About', path: '/about' },
    { name: 'Courses', path: '/courses' },
    { name: 'Contact', path: '/contact' },
  ];

  const loggedInLinks = [
    { name: 'My Courses', path: '/my-courses', icon: <Book size={16} /> },
    { name: 'Write a New Test', path: '/write-test', icon: <PenTool size={16} /> },
    { name: 'Test Results', path: '/test-results', icon: <BookOpen size={16} /> },
    { name: 'Profile', path: '/profile', icon: <User size={16} /> },
  ];

  const isActive = (path) => location.pathname === path;

  return (
    <nav
      className={cn(
        "fixed top-0 w-full z-50 transition-all duration-300 border-b",
        scrolled
          ? "bg-white/95 backdrop-blur-md border-gray-200 shadow-sm py-2"
          : "bg-white border-transparent py-4"
      )}
    >
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between items-center h-16">
          {/* Logo */}
          <Link to="/" className="flex items-center space-x-2">
            <div className="bg-blue-600 text-white p-2 rounded-lg">
              <BookOpen size={24} />
            </div>
            <div className="flex flex-col">
              <span className="text-xl font-bold text-gray-900 leading-none">
                Swadharma
              </span>
              <span className="text-xs font-semibold text-blue-600 uppercase tracking-widest">
                IAS Academy
              </span>
            </div>
          </Link>

          {/* Desktop Navigation */}
          <div className="hidden md:flex items-center space-x-8">
            {navLinks.map((link) => (
              <Link
                key={link.name}
                to={link.path}
                className={cn(
                  "text-sm font-medium transition-colors hover:text-blue-600",
                  isActive(link.path)
                    ? "text-blue-600 font-semibold"
                    : "text-gray-600"
                )}
              >
                {link.name}
              </Link>
            ))}

            {user ? (
              <div className="flex items-center space-x-3">
                {/* Logged in links */}
                {loggedInLinks.map((link) => (
                  <Link
                    key={link.name}
                    to={link.path}
                    className={cn(
                      "flex items-center space-x-1 text-sm font-medium transition-colors hover:text-blue-600",
                      isActive(link.path)
                        ? "text-blue-600 font-semibold"
                        : "text-gray-600"
                    )}
                  >
                    {link.icon}
                    <span>{link.name}</span>
                  </Link>
                ))}
                <Button to="/logout" variant="secondary" size="sm">
                  <LogOut size={16} className="mr-1" />
                  Logout
                </Button>
              </div>
            ) : (
              <div className="flex items-center space-x-3">
                <Button to="/login" variant="primary" size="sm">
                  Student Login
                </Button>
              </div>
            )}
          </div>

          {/* Mobile Menu Button */}
          <div className="md:hidden flex items-center">
            <button
              onClick={() => setIsMenuOpen(!isMenuOpen)}
              className="text-gray-600 hover:text-gray-900 p-2 focus:outline-none"
            >
              {isMenuOpen ? <X size={24} /> : <Menu size={24} />}
            </button>
          </div>
        </div>
      </div>

      {/* Mobile Menu */}
      {isMenuOpen && (
        <div className="md:hidden absolute top-full left-0 w-full bg-white border-b border-gray-200 shadow-xl">
          <div className="px-4 py-6 space-y-4">
            {navLinks.map((link) => (
              <Link
                key={link.name}
                to={link.path}
                onClick={() => setIsMenuOpen(false)}
                className={cn(
                  "block px-4 py-3 rounded-lg text-base font-medium",
                  isActive(link.path)
                    ? "bg-blue-50 text-blue-700"
                    : "text-gray-700 hover:bg-gray-50"
                )}
              >
                {link.name}
              </Link>
            ))}

            {user && (
              <>
                <div className="pt-4 border-t border-gray-100">
                  <p className="px-4 py-2 text-sm font-semibold text-gray-500 uppercase tracking-wider">
                    My Account
                  </p>
                  {loggedInLinks.map((link) => (
                    <Link
                      key={link.name}
                      to={link.path}
                      onClick={() => setIsMenuOpen(false)}
                      className={cn(
                        "flex items-center space-x-3 block px-4 py-3 rounded-lg text-base font-medium",
                        isActive(link.path)
                          ? "bg-blue-50 text-blue-700"
                          : "text-gray-700 hover:bg-gray-50"
                      )}
                    >
                      {link.icon}
                      <span>{link.name}</span>
                    </Link>
                  ))}
                </div>
                <div className="pt-4 border-t border-gray-100">
                  <Button to="/logout" variant="secondary" className="w-full justify-center">
                    <LogOut size={16} className="mr-1" />
                    Logout
                  </Button>
                </div>
              </>
            )}

            {!user && (
              <div className="pt-4 border-t border-gray-100">
                <Button to="/login" variant="primary" className="w-full justify-center">
                  Student Login
                </Button>
              </div>
            )}
          </div>
        </div>
      )}
    </nav>
  );
};

export default Navbar;