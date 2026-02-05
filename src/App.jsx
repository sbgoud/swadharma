import { BrowserRouter as Router, Routes, Route, useLocation, Navigate } from 'react-router-dom';
import { lazy, Suspense } from 'react';
import Navbar from './components/Navbar';
import Footer from './components/Footer';
import { AppProvider } from './context/AppContext';
import { ThemeProvider } from './context/ThemeContext';
import { ToastProvider } from './components/Toast';
import { supabase } from './lib/supabase';

// Lazy load pages for code splitting
const Home = lazy(() => import('./pages/Home'));
const About = lazy(() => import('./pages/About'));
const Courses = lazy(() => import('./pages/Courses'));
const Contact = lazy(() => import('./pages/Contact'));
const Login = lazy(() => import('./pages/Login'));
const WriteTest = lazy(() => import('./pages/WriteTest'));
const TestResults = lazy(() => import('./pages/TestResults'));
const Profile = lazy(() => import('./pages/Profile'));
const InitializeDb = lazy(() => import('./pages/InitializeDb'));
const CheckColumns = lazy(() => import('./pages/CheckColumns'));
const AddQuestions = lazy(() => import('./pages/AddQuestions'));
const AddQuestionsBulk = lazy(() => import('./pages/AddQuestionsBulk'));
const Checkout = lazy(() => import('./pages/Checkout'));

// Loading component for Suspense fallback
const PageLoader = () => (
  <div className="min-h-screen flex items-center justify-center bg-gray-50">
    <div className="text-center">
      <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600 mx-auto mb-4"></div>
      <p className="text-gray-600">Loading...</p>
    </div>
  </div>
);

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
    <ThemeProvider>
      <ToastProvider>
        <AppProvider>
          <Router>
            <Layout>
              <Suspense fallback={<PageLoader />}>
                <Routes>
                  <Route path="/" element={<Home />} />
                  <Route path="/about" element={<About />} />
                  <Route path="/courses" element={<Courses />} />
                  <Route path="/contact" element={<Contact />} />
                  <Route path="/login" element={<Login />} />
                  <Route path="/write-test" element={<WriteTest />} />
                  <Route path="/test-results" element={<TestResults />} />
                  <Route path="/profile" element={<Profile />} />
                  <Route path="/logout" element={<Logout />} />
                  <Route path="/initialize-db" element={<InitializeDb />} />
                  <Route path="/check-columns" element={<CheckColumns />} />
                  <Route path="/add-questions" element={<AddQuestions />} />
                  <Route path="/add-questions-bulk" element={<AddQuestionsBulk />} />
                  <Route path="/checkout" element={<Checkout />} />
                </Routes>
              </Suspense>
            </Layout>
          </Router>
        </AppProvider>
      </ToastProvider>
    </ThemeProvider>
  );
}

export default App;
