import React, { useState, useEffect } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { Menu, X, Landmark } from 'lucide-react'; // Changed icon to Landmark for institution feel
import { cn } from '../lib/utils';
import Button from './Button';

const Navbar = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const [scrolled, setScrolled] = useState(false);
  const location = useLocation();

  useEffect(() => {
    const handleScroll = () => {
      setScrolled(window.scrollY > 20);
    };
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  const navLinks = [
    { name: 'Home', path: '/' },
    { name: 'About Us', path: '/about' },
    { name: 'Courses', path: '/courses' },
    { name: 'Contact', path: '/contact' },
  ];

  const isActive = (path) => location.pathname === path;

  return (
    <nav
      className={cn(
        "fixed w-full z-50 transition-all duration-300 border-b border-transparent",
        scrolled ? "bg-white/95 backdrop-blur-md shadow-md py-2 border-gray-100" : "bg-white py-4"
      )}
    >
      <div className="container-width">
        <div className="flex justify-between items-center h-16">
          {/* Logo */}
          <Link to="/" className="flex items-center space-x-3 group">
            <div className="bg-[#003366] text-white p-2 rounded-md transition-transform duration-300 group-hover:scale-110">
              <Landmark size={24} />
            </div>
            <div className="flex flex-col">
              <span className="text-2xl font-black text-[#003366] leading-none tracking-tight font-serif">
                SWADHARMA
              </span>
              <span className="text-xs font-bold text-[#b91c1c] tracking-[0.2em] uppercase">
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
                  "text-sm font-bold uppercase tracking-wide transition-colors duration-200 py-2 border-b-2 border-transparent",
                  isActive(link.path)
                    ? "text-[#b91c1c] border-[#b91c1c]"
                    : "text-gray-600 hover:text-[#003366] hover:border-[#003366]"
                )}
              >
                {link.name}
              </Link>
            ))}

            <Button to="/login" variant="primary" size="sm">
              Student Portal
            </Button>
          </div>

          {/* Mobile Menu Button */}
          <div className="md:hidden flex items-center">
            <button
              onClick={() => setIsMenuOpen(!isMenuOpen)}
              className="text-gray-700 hover:text-[#003366] p-2 focus:outline-none"
            >
              {isMenuOpen ? <X size={28} /> : <Menu size={28} />}
            </button>
          </div>
        </div>
      </div>

      {/* Mobile Menu */}
      <div className={cn(
        "md:hidden absolute top-full left-0 w-full bg-white border-b border-gray-100 shadow-lg transition-all duration-300 ease-in-out overflow-hidden",
        isMenuOpen ? "max-h-[400px]" : "max-h-0"
      )}>
        <div className="px-4 py-4 space-y-2">
          {navLinks.map((link) => (
            <Link
              key={link.name}
              to={link.path}
              onClick={() => setIsMenuOpen(false)}
              className={cn(
                "block px-4 py-3 rounded-lg text-sm font-bold uppercase tracking-wide",
                isActive(link.path)
                  ? "bg-blue-50 text-[#003366]"
                  : "text-gray-600 hover:bg-gray-50"
              )}
            >
              {link.name}
            </Link>
          ))}
          <div className="pt-2">
            <Button to="/login" variant="primary" className="w-full justify-center">
              Student Portal
            </Button>
          </div>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;