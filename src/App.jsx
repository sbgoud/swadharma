import { BrowserRouter as Router, Routes, Route, useLocation, Navigate } from 'react-router-dom';
import Navbar from './components/Navbar';
import Footer from './components/Footer';
import Home from './pages/Home';
import About from './pages/About';
import Courses from './pages/Courses';
import Contact from './pages/Contact';
import Login from './pages/Login';
import MyCourses from './pages/MyCourses';
import WriteTest from './pages/WriteTest';
import TestResults from './pages/TestResults';
import Profile from './pages/Profile';
import InitializeDb from './pages/InitializeDb';
import CheckColumns from './pages/CheckColumns';
import { AppProvider } from './context/AppContext';
import { supabase } from './lib/supabase';

// Layout wrapper to conditionally hide Navbar/Footer if needed
const Layout = ({ children }) => {
  const location = useLocation();

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

// Logout component
const Logout = () => {
  supabase.auth.signOut();
  return <Navigate to="/" replace />;
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
            <Route path="/my-courses" element={<MyCourses />} />
            <Route path="/write-test" element={<WriteTest />} />
            <Route path="/test-results" element={<TestResults />} />
            <Route path="/profile" element={<Profile />} />
            <Route path="/logout" element={<Logout />} />
            <Route path="/initialize-db" element={<InitializeDb />} />
            <Route path="/check-columns" element={<CheckColumns />} />
          </Routes>
        </Layout>
      </Router>
    </AppProvider>
  );
}

export default App;
