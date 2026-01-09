import React from 'react';
import { Link } from 'react-router-dom';
import { Facebook, Twitter, Instagram, Linkedin, Mail, Phone, MapPin } from 'lucide-react';
import { cn } from '../lib/utils';

const Footer = () => {
  return (
    <footer className="bg-slate-900 border-t border-slate-800 pt-16 pb-8">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-12 mb-12">
          {/* Brand Info */}
          <div className="space-y-6">
            <h3 className="text-2xl font-bold text-white font-serif tracking-wide">
              Swadharma <span className="text-amber-500">IAS</span>
            </h3>
            <p className="text-slate-400 leading-relaxed text-sm">
              Empowering aspirants with the right strategy, mentorship, and resources to conquer the Civil Services Examination.
            </p>
            <div className="flex space-x-4">
              {[Facebook, Twitter, Instagram, Linkedin].map((Icon, i) => (
                <a key={i} href="#" className="h-10 w-10 rounded-lg bg-slate-800 flex items-center justify-center text-slate-400 hover:bg-blue-600 hover:text-white transition-all duration-300 hover:-translate-y-1">
                  <Icon size={18} />
                </a>
              ))}
            </div>
          </div>

          {/* Quick Links */}
          <div>
            <h4 className="text-lg font-semibold text-white mb-6 font-serif">Academy</h4>
            <ul className="space-y-3">
              {[
                { name: 'Home', path: '/' },
                { name: 'About Vision', path: '/about' },
                { name: 'Our Courses', path: '/courses' },
                { name: 'Contact Us', path: '/contact' },
              ].map((link) => (
                <li key={link.name}>
                  <Link to={link.path} className="text-slate-400 hover:text-amber-500 transition-colors text-sm flex items-center gap-2">
                    <span className="h-1 w-1 bg-slate-600 rounded-full"></span>
                    {link.name}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          {/* Contact Info */}
          <div>
            <h4 className="text-lg font-semibold text-white mb-6 font-serif">Visit Us</h4>
            <ul className="space-y-4">
              <li className="flex items-start space-x-3 text-slate-400 group">
                <MapPin className="h-5 w-5 text-blue-500 mt-1 flex-shrink-0 group-hover:text-amber-500 transition-colors" />
                <span className="text-sm">Swadharma IAS Academy,<br />Ashok Nagar X Roads,<br />Hyderabad - 500020</span>
              </li>
              <li className="flex items-center space-x-3 text-slate-400 group">
                <Phone className="h-5 w-5 text-blue-500 flex-shrink-0 group-hover:text-amber-500 transition-colors" />
                <span className="text-sm">+91 78978 92499</span>
              </li>
              <li className="flex items-center space-x-3 text-slate-400 group">
                <Mail className="h-5 w-5 text-blue-500 flex-shrink-0 group-hover:text-amber-500 transition-colors" />
                <span className="text-sm">contact@swadharmaias.com</span>
              </li>
            </ul>
          </div>

          {/* Copyright/Legal */}
          <div className="space-y-6">
            <h4 className="text-lg font-semibold text-white mb-6 font-serif">Legal</h4>
            <ul className="space-y-3">
              {[
                { name: 'Privacy Policy', path: '#' },
                { name: 'Terms of Service', path: '#' },
                { name: 'Refund Policy', path: '#' },
              ].map((link) => (
                <li key={link.name}>
                  <Link to={link.path} className="text-slate-400 hover:text-amber-500 transition-colors text-sm">
                    {link.name}
                  </Link>
                </li>
              ))}
            </ul>
          </div>
        </div>

        <div className="border-t border-slate-800 pt-8 flex flex-col md:flex-row justify-between items-center gap-4">
          <p className="text-slate-500 text-sm text-center md:text-left">
            &copy; {new Date().getFullYear()} Swadharma IAS Academy. All rights reserved.
          </p>
          <p className="text-slate-600 text-xs flex items-center gap-1">
            Forging the Steel Frame of India
          </p>
        </div>
      </div>
    </footer>
  );
};

export default Footer;