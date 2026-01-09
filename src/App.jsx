import { BrowserRouter as Router, Routes, Route, useLocation } from 'react-router-dom';
import Navbar from './components/Navbar';
import Footer from './components/Footer';
import Home from './pages/Home';
import About from './pages/About';
import Courses from './pages/Courses';
import Contact from './pages/Contact';
import Login from './pages/Login';
import { AppProvider } from './context/AppContext';

// Layout wrapper to conditionally hide Navbar/Footer if needed, 
// though currently we show them everywhere for consistency or specific design choices.
const Layout = ({ children }) => {
  const location = useLocation();
  // Example: Hide Navbar/Footer on login page if desired. 
  // For now, we keep Navbar but maybe simplify footer? 
  // Let's keep them for now, but you can uncomment below to hide.
  // const isAuthPage = location.pathname === '/login';

  return (
    <div className="flex flex-col min-h-screen bg-slate-900 text-white">
      <Navbar />
      <main className="flex-grow">
        {children}
      </main>
      <Footer />
    </div>
  );
};

function App() {
  return (
    <AppProvider>
      <Router>
        <Layout>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/about" element={<About />} />
            <Route path="/courses" element={<Courses />} />
            <Route path="/contact" element={<Contact />} />
            <Route path="/login" element={<Login />} />
          </Routes>
        </Layout>
      </Router>
    </AppProvider>
  );
}

export default App;
