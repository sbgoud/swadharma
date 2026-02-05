import { useState, useEffect } from 'react';
import { ArrowLeft, CheckCircle2, Clock, User, Mail, Phone } from 'lucide-react';
import Button from '../components/Button';
import { useNavigate, useLocation } from 'react-router-dom';
import { useApp } from '../context/AppContext';

const Checkout = () => {
  const navigate = useNavigate();
  const location = useLocation();
  const { user } = useApp();
  
  const [selectedValidity, setSelectedValidity] = useState('1m');
  const [orderId, setOrderId] = useState('');

  const course = location.state?.course;

  if (!course) {
    return (
      <div className="bg-white min-h-screen pt-20">
        <div className="container-width py-12 text-center">
          <h2 className="text-2xl font-bold text-gray-900 mb-4">Course Not Found</h2>
          <p className="text-gray-600 mb-8">The course you are trying to enroll in could not be found.</p>
          <Button variant="primary" onClick={() => navigate('/courses')}>
            Back to Courses
          </Button>
        </div>
      </div>
    );
  }

  const validityOptions = [
    { value: '1d', label: '1 Day', multiplier: 0.1 },
    { value: '1w', label: '1 Week', multiplier: 0.3 },
    { value: '1m', label: '1 Month', multiplier: 1 },
    { value: '3m', label: '3 Months', multiplier: 2.5 },
    { value: '6m', label: '6 Months', multiplier: 4.5 },
    { value: '12m', label: '1 Year', multiplier: 8 }
  ];

  const basePrice = parseFloat(course.amount.replace('₹', '').replace(',', ''));
  const selectedOption = validityOptions.find(opt => opt.value === selectedValidity);
  const calculatedPrice = Math.round(basePrice * selectedOption.multiplier);

  useEffect(() => {
    const randomCode = Math.floor(Math.random() * 1000000000000).toString().padStart(12, '0');
    const newOrderId = `${course.planPrefix}${selectedValidity.toUpperCase()}${randomCode}`;
    setOrderId(newOrderId);
  }, [course.planPrefix, selectedValidity]);

  const handlePayment = () => {
    alert('Payment gateway integration would go here');
  };

  return (
    <div className="bg-white min-h-screen pt-20">
      <div className="bg-[#003366] py-8 relative overflow-hidden">
        <div className="absolute top-0 right-0 w-48 h-48 bg-white/5 rounded-full blur-3xl -translate-y-1/2 translate-x-1/2"></div>
        <div className="absolute bottom-0 left-0 w-36 h-36 bg-amber-500/10 rounded-full blur-2xl translate-y-1/2 -translate-x-1/2"></div>
        <div className="container-width text-center relative z-10">
          <span className="inline-block py-1 px-3 rounded-full bg-blue-800/50 border border-blue-400/30 text-blue-200 text-xs font-bold tracking-widest uppercase mb-2">
            Enrollment Process
          </span>
          <h1 className="text-3xl md:text-4xl font-black text-white mb-3 font-serif">
            Complete Your Purchase
          </h1>
          <p className="text-lg text-blue-100 max-w-2xl mx-auto leading-relaxed">
            Review your order details and complete the payment to access the course
          </p>
        </div>
      </div>

      <div className="container-width py-8">
        <div className="flex items-center gap-2 mb-6">
          <button
            onClick={() => navigate('/courses')}
            className="flex items-center gap-2 text-gray-600 hover:text-[#003366] transition-colors"
          >
            <ArrowLeft size={20} />
            <span className="text-lg font-medium">Back to Courses</span>
          </button>
        </div>

        <div className="grid lg:grid-cols-2 gap-8">
          <div className="space-y-6">
            <div>
              <h2 className="text-2xl font-bold text-gray-900 mb-4">Order Summary</h2>
              
              <div className="bg-gray-50 rounded-xl p-4 mb-4">
                <div className="flex justify-between items-center mb-3">
                  <h3 className="text-xl font-bold text-gray-800">{course.name}</h3>
                </div>
                
                <div className="mb-4">
                  <h4 className="text-sm font-semibold text-gray-600 uppercase tracking-wide mb-2">Validity</h4>
                  <div className="grid grid-cols-3 gap-2">
                    {validityOptions.map((option) => (
                      <button
                        key={option.value}
                        onClick={() => setSelectedValidity(option.value)}
                        className={`p-2 rounded-lg border-2 text-xs font-medium transition-all ${
                          selectedValidity === option.value
                            ? 'border-[#003366] bg-[#003366] text-white'
                            : 'border-gray-200 bg-white text-gray-700 hover:border-gray-300'
                        }`}
                      >
                        <Clock size={14} className="mx-auto mb-1" />
                        {option.label}
                      </button>
                    ))}
                  </div>
                </div>

                <div className="border-t border-gray-200 pt-3">
                  <div className="flex justify-between items-center mb-1">
                    <span className="text-gray-600 text-sm">Base Price</span>
                    <span className="font-semibold text-sm">{course.amount}</span>
                  </div>
                  <div className="flex justify-between items-center mb-1">
                    <span className="text-gray-600 text-sm">Validity</span>
                    <span className="font-semibold text-sm">
                      {selectedOption.multiplier === 1 ? 'Standard' : `${Math.round(selectedOption.multiplier * 100)}%`}
                    </span>
                  </div>
                  <div className="flex justify-between items-center mt-2 pt-2 border-t border-gray-300">
                    <span className="text-lg font-bold text-gray-900">Total</span>
                    <span className="text-2xl font-bold text-[#003366]">₹{calculatedPrice.toLocaleString()}</span>
                  </div>
                </div>
              </div>

              <div className="bg-gray-50 rounded-xl p-4">
                <h4 className="text-sm font-semibold text-gray-600 uppercase tracking-wide mb-3">Order Details</h4>
                <div className="space-y-2 text-sm">
                  <div className="flex justify-between">
                    <span className="text-gray-500">Order ID</span>
                    <span className="font-mono text-gray-900">{orderId}</span>
                  </div>
                  <div className="flex justify-between">
                    <span className="text-gray-500">Plan Code</span>
                    <span className="font-mono text-gray-900">{course.planPrefix}{selectedValidity.toUpperCase()}</span>
                  </div>
                  <div className="flex justify-between">
                    <span className="text-gray-500">Enrollment Date</span>
                    <span className="text-gray-900">{new Date().toLocaleDateString('en-GB')}</span>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div className="space-y-6">
            <div>
              <h2 className="text-2xl font-bold text-gray-900 mb-4">Your Details</h2>
              
              <div className="bg-gray-50 rounded-xl p-4 space-y-3">
                <div>
                  <label className="block text-xs font-semibold text-gray-600 uppercase tracking-wide mb-1">Full Name</label>
                  <div className="flex items-center gap-2 bg-white rounded-lg p-2 border border-gray-200">
                    <User size={14} className="text-gray-400" />
                    <span className="text-gray-900 text-sm">{user?.user_metadata?.full_name || user?.email?.split('@')[0]}</span>
                  </div>
                </div>

                <div>
                  <label className="block text-xs font-semibold text-gray-600 uppercase tracking-wide mb-1">Email Address</label>
                  <div className="flex items-center gap-2 bg-white rounded-lg p-2 border border-gray-200">
                    <Mail size={14} className="text-gray-400" />
                    <span className="text-gray-900 text-sm">{user?.email}</span>
                  </div>
                </div>

                <div>
                  <label className="block text-xs font-semibold text-gray-600 uppercase tracking-wide mb-1">Mobile Number</label>
                  <div className="flex items-center gap-2 bg-white rounded-lg p-2 border border-gray-200">
                    <Phone size={14} className="text-gray-400" />
                    <span className="text-gray-900 text-sm">{user?.user_metadata?.phone || 'Not provided'}</span>
                  </div>
                </div>
              </div>
            </div>

            <div>
              <h2 className="text-2xl font-bold text-gray-900 mb-4">Payment Method</h2>
              
              <div className="bg-gray-50 rounded-xl p-4">
                <h4 className="text-sm font-semibold text-gray-600 uppercase tracking-wide mb-3">Select Payment Option</h4>
                
                <div className="space-y-2">
                  <button
                    className="w-full flex items-center gap-3 p-3 rounded-lg border-2 border-[#003366] bg-[#003366] text-white transition-all"
                    onClick={handlePayment}
                  >
                    <div className="w-5 h-5 rounded-full bg-green-500"></div>
                    <span className="font-semibold">UPI Payment</span>
                  </button>
                </div>

                <div className="mt-4 pt-3 border-t border-gray-200">
                  <div className="flex items-center gap-2 text-xs text-gray-600 mb-3">
                    <CheckCircle2 size={14} className="text-green-600" />
                    <span>100% Secure Payment</span>
                  </div>
                  
                  <Button variant="primary" size="lg" className="w-full" onClick={handlePayment}>
                    Pay ₹{calculatedPrice.toLocaleString()}
                  </Button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Checkout;
