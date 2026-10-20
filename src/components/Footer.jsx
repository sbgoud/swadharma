import { Link } from 'react-router-dom';
import { BookOpen, Mail } from 'lucide-react';

const Footer = () => (
  <footer className="bg-slate-900 border-t border-slate-800 pt-14 pb-8">
    <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div className="grid grid-cols-1 md:grid-cols-3 gap-10 mb-10">
        <div className="space-y-4">
          <h2 className="text-xl font-bold text-white">
            Swadharma <span className="text-amber-500">IAS</span>
          </h2>
          <p className="text-slate-400 leading-relaxed text-sm">
            A free UPSC Prelims test series. Timed papers, official marking scheme and detailed
            explanations for every question — open to every aspirant.
          </p>
          <div className="flex items-center gap-2 text-slate-400 text-sm">
            <BookOpen size={16} className="text-blue-500" />
            Free, forever
          </div>
        </div>

        <div>
          <h3 className="text-base font-semibold text-white mb-4">Explore</h3>
          <ul className="space-y-3">
            {[
              { name: 'Home', path: '/' },
              { name: 'About', path: '/about' },
              { name: 'Dashboard', path: '/dashboard' },
              { name: 'My tests', path: '/attempts' },
            ].map((link) => (
              <li key={link.path}>
                <Link
                  to={link.path}
                  className="text-slate-400 hover:text-amber-500 transition-colors text-sm flex items-center gap-2"
                >
                  <span className="h-1 w-1 bg-slate-600 rounded-full" />
                  {link.name}
                </Link>
              </li>
            ))}
          </ul>
        </div>

        <div>
          <h3 className="text-base font-semibold text-white mb-4">Contact</h3>
          <ul className="space-y-3 text-slate-400 text-sm">
            <li className="flex items-center gap-2">
              <Mail size={16} className="text-blue-500" />
              <a href="mailto:contact@swadharmaias.com" className="hover:text-amber-500">
                contact@swadharmaias.com
              </a>
            </li>
            <li>
              Swadharma IAS Academy, Ashok Nagar X Roads, Hyderabad - 500020
            </li>
          </ul>
        </div>
      </div>

      <div className="border-t border-slate-800 pt-6 flex flex-col md:flex-row justify-between items-center gap-3">
        <p className="text-slate-500 text-sm text-center md:text-left">
          &copy; {new Date().getFullYear()} Swadharma IAS Academy. All rights reserved.
        </p>
        <p className="text-slate-600 text-xs">Forging the Steel Frame of India</p>
      </div>
    </div>
  </footer>
);

export default Footer;
