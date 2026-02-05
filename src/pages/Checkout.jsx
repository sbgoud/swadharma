import { useState, useEffect } from 'react';
import { ArrowLeft, CheckCircle2, Clock, User, Mail, Phone, Tag, X, Shield, CreditCard } from 'lucide-react';
import Button from '../components/Button';
import { useNavigate, useLocation } from 'react-router-dom';
import { useApp } from '../context/AppContext';
import { validateCoupon } from '../services/supabaseService';

const Checkout = () => {
  const navigate = useNavigate();
  const location = useLocation();
  const { user, profile } = useApp();
  
  const [selectedValidity, setSelectedValidity] = useState('1m');
  const [orderId, setOrderId] = useState('');
  const [orderNotes, setOrderNotes] = useState('');
  const [couponCode, setCouponCode] = useState('');
  const [appliedCoupon, setAppliedCoupon] = useState(null);
  const [couponError, setCouponError] = useState('');
  const [discountAmount, setDiscountAmount] = useState(0);
  const [finalPrice, setFinalPrice] = useState(0);

  const course = location.state?.course;

  if (!course) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-slate-50 to-blue-50 flex items-center justify-center">
        <div className="bg-white rounded-2xl shadow-xl p-8 max-w-md text-center">
          <div className="w-16 h-16 bg-red-100 rounded-full flex items-center justify-center mx-auto mb-4">
            <X size={32} className="text-red-500" />
          </div>
          <h2 className="text-2xl font-bold text-slate-800 mb-2">Course Not Found</h2>
          <p className="text-slate-500 mb-6">The course you are trying to enroll in could not be found.</p>
          <Button variant="primary" onClick={() => navigate('/courses')} className="w-full">
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
  const originalPrice = Math.round(basePrice * selectedOption.multiplier);

  useEffect(() => {
    if (appliedCoupon && originalPrice > 0) {
      let discount = 0;
      if (appliedCoupon.discount_type === 'percentage') {
        discount = (originalPrice * appliedCoupon.discount_value) / 100;
      } else {
        discount = appliedCoupon.discount_value;
      }
      setDiscountAmount(Math.round(discount));
      setFinalPrice(Math.max(0, originalPrice - discount));
    } else {
      setDiscountAmount(0);
      setFinalPrice(originalPrice);
    }
  }, [originalPrice, appliedCoupon]);

  useEffect(() => {
    const userId = profile?.user_id || user?.id || '000000000';
    const randomLetters = getRandomLetters(2);
    const randomDigits = getRandomDigits(2);
    const newOrderId = `${course.planPrefix}_${selectedValidity.toUpperCase()}${userId}${randomLetters}${randomDigits}`;
    setOrderId(newOrderId);

    const notes = `${newOrderId}D${getDDMMYY()}${finalPrice}`;
    setOrderNotes(notes);
  }, [course.planPrefix, selectedValidity, profile?.user_id, user?.id, finalPrice]);

  const getRandomLetters = (count) => {
    const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    let result = '';
    for (let i = 0; i < count; i++) {
      result += letters.charAt(Math.floor(Math.random() * letters.length));
    }
    return result;
  };

  const getRandomDigits = (count) => {
    return Math.floor(Math.random() * Math.pow(10, count)).toString().padStart(count, '0');
  };

  const getDDMMYY = () => {
    const now = new Date();
    const dd = now.getDate();
    const mm = now.getMonth() + 1;
    const yy = now.getFullYear() % 100;
    return `${dd.toString().padStart(2, '0')}${mm.toString().padStart(2, '0')}${yy.toString().padStart(2, '0')}`;
  };

  const handleApplyCoupon = async () => {
    if (!couponCode.trim()) {
      setCouponError('Please enter a coupon code');
      return;
    }

    setCouponError('');
    const coupon = await validateCoupon(couponCode, originalPrice);

    if (coupon) {
      setAppliedCoupon(coupon);
    } else {
      setCouponError('Invalid or expired coupon code');
      setAppliedCoupon(null);
    }
  };

  const handleRemoveCoupon = () => {
    setAppliedCoupon(null);
    setCouponCode('');
    setCouponError('');
  };

  const handlePayment = () => {
    alert('Payment gateway integration would go here');
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-50 via-blue-50 to-indigo-50">
      {/* Header */}
      <div className="bg-gradient-to-r from-indigo-900 via-blue-800 to-indigo-900 relative overflow-hidden">
        <div className="absolute inset-0">
          <div className="absolute top-0 right-0 w-96 h-96 bg-white/5 rounded-full blur-3xl"></div>
          <div className="absolute bottom-0 left-0 w-72 h-72 bg-amber-400/10 rounded-full blur-2xl"></div>
        </div>
        <div className="relative container-width py-12 text-center">
          <span className="inline-block py-2 px-4 rounded-full bg-white/10 backdrop-blur-sm border border-white/20 text-white/90 text-sm font-semibold tracking-wide uppercase mb-4">
            Secure Enrollment
          </span>
          <h1 className="text-4xl md:text-5xl font-bold text-white mb-3">
            Complete Your Purchase
          </h1>
          <p className="text-blue-100 text-lg max-w-2xl mx-auto">
            Review your order and unlock access to premium content
          </p>
        </div>
      </div>

      <div className="container-width py-8">
        {/* Back Button */}
        <button
          onClick={() => navigate('/courses')}
          className="flex items-center gap-2 text-slate-600 hover:text-indigo-600 mb-6 transition-colors"
        >
          <ArrowLeft size={20} />
          <span className="font-medium">Back to Courses</span>
        </button>

        <div className="grid lg:grid-cols-3 gap-8">
          {/* Left Column - Order Summary */}
          <div className="lg:col-span-2 space-y-6">
            {/* Course Card */}
            <div className="bg-white rounded-2xl shadow-lg overflow-hidden">
              <div className="bg-gradient-to-r from-indigo-500 to-blue-500 p-6">
                <h3 className="text-2xl font-bold text-white">{course.name}</h3>
              </div>
              <div className="p-6">
                {/* Validity Selection */}
                <div className="mb-6">
                  <h4 className="text-sm font-semibold text-slate-500 uppercase tracking-wide mb-3">Select Validity</h4>
                  <div className="grid grid-cols-3 gap-3">
                    {validityOptions.map((option) => (
                      <button
                        key={option.value}
                        onClick={() => setSelectedValidity(option.value)}
                        className={`p-4 rounded-xl border-2 transition-all ${
                          selectedValidity === option.value
                            ? 'border-indigo-500 bg-indigo-50 text-indigo-700'
                            : 'border-slate-200 bg-slate-50 text-slate-600 hover:border-slate-300'
                        }`}
                      >
                        <Clock size={20} className="mx-auto mb-2" />
                        <span className="font-semibold block">{option.label}</span>
                      </button>
                    ))}
                  </div>
                </div>

                {/* Price Details */}
                <div className="border-t border-slate-100 pt-4 space-y-3">
                  <div className="flex justify-between items-center">
                    <span className="text-slate-600">Base Price</span>
                    <span className="font-semibold text-slate-800">₹{basePrice.toLocaleString()}</span>
                  </div>
                  <div className="flex justify-between items-center">
                    <span className="text-slate-600">Duration</span>
                    <span className="font-medium text-slate-700">{selectedOption.label}</span>
                  </div>
                  
                  {appliedCoupon && (
                    <div className="flex justify-between items-center text-green-600">
                      <span className="flex items-center gap-2">
                        <Tag size={16} />
                        <span>Discount ({appliedCoupon.code})</span>
                      </span>
                      <span className="font-semibold">-₹{discountAmount.toLocaleString()}</span>
                    </div>
                  )}
                  
                  <div className="flex justify-between items-center pt-3 border-t border-slate-200">
                    <span className="text-lg font-bold text-slate-800">Total Amount</span>
                    <span className="text-3xl font-bold text-indigo-600">₹{finalPrice.toLocaleString()}</span>
                  </div>
                </div>
              </div>
            </div>

            {/* Coupon Section */}
            <div className="bg-white rounded-2xl shadow-lg p-6">
              {!appliedCoupon ? (
                <div>
                  <h4 className="text-lg font-semibold text-slate-800 mb-3 flex items-center gap-2">
                    <Tag size={20} className="text-indigo-500" />
                    Have a Coupon?
                  </h4>
                  <div className="flex gap-3">
                    <input
                      type="text"
                      value={couponCode}
                      onChange={(e) => {
                        setCouponCode(e.target.value.toUpperCase());
                        setCouponError('');
                      }}
                      placeholder="Enter coupon code"
                      className="flex-1 px-4 py-3 border border-slate-200 rounded-xl focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent"
                    />
                    <Button variant="primary" onClick={handleApplyCoupon}>
                      Apply
                    </Button>
                  </div>
                  {couponError && (
                    <p className="text-red-500 text-sm mt-2">{couponError}</p>
                  )}
                </div>
              ) : (
                <div className="flex items-center justify-between p-4 bg-green-50 rounded-xl border border-green-200">
                  <div className="flex items-center gap-3">
                    <div className="w-10 h-10 bg-green-100 rounded-full flex items-center justify-center">
                      <CheckCircle2 size={20} className="text-green-600" />
                    </div>
                    <div>
                      <span className="font-semibold text-green-800 block">{appliedCoupon.code} Applied</span>
                      <span className="text-sm text-green-600">
                        {appliedCoupon.discount_type === 'percentage' 
                          ? `${appliedCoupon.discount_value}% off` 
                          : `₹${appliedCoupon.discount_value} off`}
                      </span>
                    </div>
                  </div>
                  <button
                    onClick={handleRemoveCoupon}
                    className="p-2 text-green-600 hover:bg-green-100 rounded-lg transition-colors"
                  >
                    <X size={20} />
                  </button>
                </div>
              )}
            </div>

            {/* Order Details */}
            <div className="bg-white rounded-2xl shadow-lg p-6">
              <h4 className="text-lg font-semibold text-slate-800 mb-4">Order Details</h4>
              <div className="space-y-3">
                <div className="flex justify-between p-3 bg-slate-50 rounded-lg">
                  <span className="text-slate-500">Order ID</span>
                  <span className="font-mono font-medium text-slate-800">{orderId}</span>
                </div>
                <div className="flex justify-between p-3 bg-slate-50 rounded-lg">
                  <span className="text-slate-500">Plan Code</span>
                  <span className="font-mono font-medium text-slate-800">{course.planPrefix}_{selectedValidity.toUpperCase()}</span>
                </div>
                <div className="flex justify-between p-3 bg-slate-50 rounded-lg">
                  <span className="text-slate-500">Enrollment Date</span>
                  <span className="font-medium text-slate-800">{new Date().toLocaleDateString('en-GB')}</span>
                </div>
                <div className="flex justify-between p-3 bg-indigo-50 rounded-lg">
                  <span className="text-indigo-600 font-medium">Notes</span>
                  <span className="font-mono text-indigo-700 text-sm">{orderNotes}</span>
                </div>
              </div>
            </div>
          </div>

          {/* Right Column - User Details & Payment */}
          <div className="space-y-6">
            {/* User Details */}
            <div className="bg-white rounded-2xl shadow-lg p-6">
              <h4 className="text-lg font-semibold text-slate-800 mb-4">Your Information</h4>
              <div className="space-y-4">
                <div>
                  <label className="text-xs font-semibold text-slate-500 uppercase tracking-wide mb-1 block">Full Name</label>
                  <div className="flex items-center gap-3 p-3 bg-slate-50 rounded-xl">
                    <div className="w-10 h-10 bg-indigo-100 rounded-full flex items-center justify-center">
                      <User size={18} className="text-indigo-600" />
                    </div>
                    <span className="font-medium text-slate-800">{user?.user_metadata?.full_name || user?.email?.split('@')[0]}</span>
                  </div>
                </div>

                <div>
                  <label className="text-xs font-semibold text-slate-500 uppercase tracking-wide mb-1 block">Email Address</label>
                  <div className="flex items-center gap-3 p-3 bg-slate-50 rounded-xl">
                    <div className="w-10 h-10 bg-blue-100 rounded-full flex items-center justify-center">
                      <Mail size={18} className="text-blue-600" />
                    </div>
                    <span className="font-medium text-slate-800">{user?.email}</span>
                  </div>
                </div>

                <div>
                  <label className="text-xs font-semibold text-slate-500 uppercase tracking-wide mb-1 block">Mobile Number</label>
                  <div className="flex items-center gap-3 p-3 bg-slate-50 rounded-xl">
                    <div className="w-10 h-10 bg-green-100 rounded-full flex items-center justify-center">
                      <Phone size={18} className="text-green-600" />
                    </div>
                    <span className="font-medium text-slate-800">{profile?.phone_number || user?.user_metadata?.phone_number || 'Not provided'}</span>
                  </div>
                </div>
              </div>
            </div>

            {/* Payment Section */}
            <div className="bg-white rounded-2xl shadow-lg p-6">
              <h4 className="text-lg font-semibold text-slate-800 mb-4">Payment Method</h4>
              
              {/* UPI Option */}
              <button
                onClick={handlePayment}
                className="w-full flex items-center gap-4 p-4 border-2 border-indigo-500 bg-indigo-50 rounded-xl mb-4"
              >
                <div className="w-12 h-12 bg-indigo-500 rounded-xl flex items-center justify-center">
                  <CreditCard size={24} className="text-white" />
                </div>
                <div className="flex-1 text-left">
                  <span className="font-semibold text-indigo-800 block">UPI Payment</span>
                  <span className="text-sm text-indigo-600">Pay via UPI App</span>
                </div>
                <div className="w-4 h-4 bg-indigo-500 rounded-full"></div>
              </button>

              {/* Security Badge */}
              <div className="flex items-center gap-2 text-slate-500 text-sm mb-4">
                <Shield size={16} className="text-green-500" />
                <span>100% Secure Payment</span>
              </div>

              {/* Pay Button */}
              <Button variant="primary" size="lg" className="w-full py-4 text-lg" onClick={handlePayment}>
                Pay ₹{finalPrice.toLocaleString()}
              </Button>

              {/* Trust Badges */}
              <div className="flex items-center justify-center gap-6 mt-4 pt-4 border-t border-slate-100">
                <div className="flex items-center gap-2 text-slate-400 text-xs">
                  <Shield size={14} />
                  <span>SSL Encrypted</span>
                </div>
                <div className="flex items-center gap-2 text-slate-400 text-xs">
                  <CheckCircle2 size={14} />
                  <span>Verified</span>
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
