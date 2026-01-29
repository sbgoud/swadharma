import React, { useState } from 'react';
import { supabase } from '../lib/supabase';
import { useNavigate } from 'react-router-dom';
import { Mail, Lock, Check, AlertCircle, Eye, EyeOff, ArrowLeft, User, Calendar, MapPin, Phone, RefreshCw } from 'lucide-react';
import Card from '../components/Card';
import Button from '../components/Button';
import { createUserAccount, validateUserData } from '../services/edgeFunctionService';

const Login = () => {
    const [loading, setLoading] = useState(false);
    const [resendingEmail, setResendingEmail] = useState(false);
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [confirmPassword, setConfirmPassword] = useState('');
    const [fullName, setFullName] = useState('');
    const [dateOfBirth, setDateOfBirth] = useState('');
    const [address, setAddress] = useState('');
    const [phoneNumber, setPhoneNumber] = useState('');
    const [showPassword, setShowPassword] = useState(false);
    const [showConfirmPassword, setShowConfirmPassword] = useState(false);
    const [termsAccepted, setTermsAccepted] = useState(false);
    const [isSignUp, setIsSignUp] = useState(false);
    const [message, setMessage] = useState(null);
    const [error, setError] = useState(null);
    const [isEmailNotConfirmed, setIsEmailNotConfirmed] = useState(false);
    const navigate = useNavigate();

    const handleResendConfirmationEmail = async () => {
        if (!email) {
            setError('Please enter your email address to resend confirmation email');
            return;
        }

        setResendingEmail(true);
        setError(null);
        setMessage(null);

        try {
            const { error } = await supabase.auth.resend({
                type: 'signup',
                email: email,
            });

            if (error) throw error;

            setMessage('Confirmation email sent successfully! Please check your inbox.');
            setIsEmailNotConfirmed(false);
        } catch (err) {
            setError(err.message || 'Failed to resend confirmation email');
        } finally {
            setResendingEmail(false);
        }
    };

    const handleLogin = async (e) => {
        e.preventDefault();
        setLoading(true);
        setMessage(null);
        setError(null);
        setIsEmailNotConfirmed(false);

        try {
            if (isSignUp) {
                // Validate form fields
                if (!fullName || !dateOfBirth || !address || !phoneNumber) {
                    throw new Error('All fields are required');
                }

                if (password !== confirmPassword) {
                    throw new Error('Passwords do not match');
                }

                if (!termsAccepted) {
                    throw new Error('You must accept the terms and conditions');
                }

                // Validate email address
                const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                if (!emailRegex.test(email)) {
                    throw new Error('Please enter a valid email address');
                }

                // Validate password requirements
                const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]).{8,}$/;
                if (!passwordRegex.test(password)) {
                    throw new Error('Password must be at least 8 characters and include at least one lowercase letter, one uppercase letter, and one special character');
                }

                // Validate phone number (10 digits only)
                const phoneRegex = /^\d{10}$/;
                if (!phoneRegex.test(phoneNumber)) {
                    throw new Error('Phone number must be exactly 10 digits');
                }

                // Create auth user using anon key
                const { data: authData, error: authError } = await supabase.auth.signUp({
                    email,
                    password,
                    options: {
                        data: {
                            full_name: fullName,
                            date_of_birth: dateOfBirth,
                            address,
                            phone_number: phoneNumber
                        }
                    }
                });

                if (authError) throw authError;

                // Get user ID from auth response
                const userId = authData.user?.id;
                if (!userId) {
                    throw new Error('User ID not found after creation');
                }

                // Call Edge Function to create user profile in database
                const edgeFunctionUrl = import.meta.env.VITE_EDGE_FUNCTION_URL || 'https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user';
                const response = await fetch(edgeFunctionUrl, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({
                        user_id: userId,
                        email: email,
                        full_name: fullName,
                        date_of_birth: dateOfBirth,
                        address: address,
                        phone_number: `+91${phoneNumber}`
                    })
                });

                const profileData = await response.json();

                if (!response.ok || !profileData.success) {
                    throw new Error(profileData?.message || 'Failed to create user profile');
                }

                setMessage('Account created successfully! Please check your email to verify your account.');
                // Redirect to login page after delay
                setTimeout(() => {
                    setIsSignUp(false);
                    navigate('/login');
                }, 3000);
            } else {
                // Existing login flow
                const { error: signInError } = await supabase.auth.signInWithPassword({ email, password });
                if (signInError) {
                    // Check if error is due to unconfirmed email
                    if (signInError.message?.toLowerCase().includes('email not confirmed') ||
                        signInError.message?.toLowerCase().includes('email confirmation')) {
                        setIsEmailNotConfirmed(true);
                    }
                    throw signInError;
                }
                navigate('/');
            }
        } catch (err) {
            setError(err.message);
        } finally {
            setLoading(false);
        }
    };

    const handleToggleSignUp = () => {
        setIsSignUp(!isSignUp);
    };

    return (
        <div className="min-h-screen bg-gray-50 flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
            <div className="max-w-2xl w-full space-y-8">
                <div className="text-center">
                    <h2 className="text-3xl font-bold text-gray-900">
                        {isSignUp ? 'Create Account' : 'Welcome Back'}
                    </h2>
                    <p className="mt-2 text-sm text-gray-600">
                        {isSignUp ? 'Start your journey with us today' : 'Sign in to access your dashboard'}
                    </p>
                </div>

                <Card className="mt-8 border-t-4 border-t-blue-600">
                    {isSignUp && (
                        <div className="mb-4">
                            <Button
                                type="button"
                                variant="secondary"
                                onClick={handleToggleSignUp}
                                className="flex items-center space-x-2 text-sm"
                            >
                                <ArrowLeft size={16} />
                                <span>Back to Login</span>
                            </Button>
                        </div>
                    )}

                    <form className="space-y-6" onSubmit={handleLogin}>
                        {message && (
                            <div className="p-4 rounded-lg bg-green-50 text-green-700 flex items-start text-sm">
                                <Check className="h-5 w-5 mr-2 mt-0.5 flex-shrink-0" />
                                {message}
                            </div>
                        )}
                        {error && (
                            <div className="p-4 rounded-lg bg-red-50 text-red-700 flex flex-col items-start text-sm">
                                <div className="flex items-start">
                                    <AlertCircle className="h-5 w-5 mr-2 mt-0.5 flex-shrink-0" />
                                    <span>{error}</span>
                                </div>
                                {isEmailNotConfirmed && (
                                    <div className="mt-3 ml-7">
                                        <Button
                                            type="button"
                                            variant="secondary"
                                            size="sm"
                                            onClick={handleResendConfirmationEmail}
                                            loading={resendingEmail}
                                            className="flex items-center space-x-2"
                                        >
                                            <RefreshCw size={14} />
                                            <span>Resend Confirmation Email</span>
                                        </Button>
                                    </div>
                                )}
                            </div>
                        )}

                        {isSignUp && (
                            <>
                                <div>
                                    <label htmlFor="fullName" className="block text-sm font-medium text-gray-700 mb-1">Full Name</label>
                                    <div className="relative">
                                        <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <User className="h-5 w-5 text-gray-400" />
                                        </div>
                                        <input
                                            id="fullName"
                                            name="fullName"
                                            type="text"
                                            required
                                            value={fullName}
                                            onChange={(e) => setFullName(e.target.value)}
                                            className="block w-full pl-10 pr-3 py-2.5 border border-gray-300 rounded-lg text-gray-900 placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent sm:text-sm"
                                            placeholder="John Doe"
                                        />
                                    </div>
                                </div>

                                <div>
                                    <label htmlFor="dateOfBirth" className="block text-sm font-medium text-gray-700 mb-1">Date of Birth</label>
                                    <div className="relative">
                                        <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <Calendar className="h-5 w-5 text-gray-400" />
                                        </div>
                                        <input
                                            id="dateOfBirth"
                                            name="dateOfBirth"
                                            type="date"
                                            required
                                            value={dateOfBirth}
                                            onChange={(e) => setDateOfBirth(e.target.value)}
                                            className="block w-full pl-10 pr-3 py-2.5 border border-gray-300 rounded-lg text-gray-900 placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent sm:text-sm"
                                        />
                                    </div>
                                </div>

                                <div>
                                    <label htmlFor="address" className="block text-sm font-medium text-gray-700 mb-1">Address</label>
                                    <div className="relative">
                                        <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <MapPin className="h-5 w-5 text-gray-400" />
                                        </div>
                                        <input
                                            id="address"
                                            name="address"
                                            type="text"
                                            required
                                            value={address}
                                            onChange={(e) => setAddress(e.target.value)}
                                            className="block w-full pl-10 pr-3 py-2.5 border border-gray-300 rounded-lg text-gray-900 placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent sm:text-sm"
                                            placeholder="123 Main St, City, State, Zip"
                                        />
                                    </div>
                                </div>

                                <div>
                                    <label htmlFor="phoneNumber" className="block text-sm font-medium text-gray-700 mb-1">Phone Number</label>
                                    <div className="relative">
                                        <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                            <Phone className="h-5 w-5 text-gray-400" />
                                        </div>
                                        <div className="absolute inset-y-0 left-10 flex items-center pointer-events-none">
                                            <span className="text-gray-500 text-sm">+91</span>
                                        </div>
                                        <input
                                            id="phoneNumber"
                                            name="phoneNumber"
                                            type="tel"
                                            required
                                            value={phoneNumber}
                                            onChange={(e) => {
                                                const value = e.target.value.replace(/\D/g, '').slice(0, 10);
                                                setPhoneNumber(value);
                                            }}
                                            className="block w-full pl-16 pr-3 py-2.5 border border-gray-300 rounded-lg text-gray-900 placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent sm:text-sm"
                                            placeholder="1234567890"
                                            maxLength={10}
                                        />
                                    </div>
                                    <p className="mt-1 text-xs text-gray-500">Enter 10-digit phone number</p>
                                </div>
                            </>
                        )}

                        <div>
                            <label htmlFor="email" className="block text-sm font-medium text-gray-700 mb-1">Email address</label>
                            <div className="relative">
                                <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                    <Mail className="h-5 w-5 text-gray-400" />
                                </div>
                                <input
                                    id="email"
                                    name="email"
                                    type="email"
                                    required
                                    value={email}
                                    onChange={(e) => setEmail(e.target.value)}
                                    className="block w-full pl-10 pr-3 py-2.5 border border-gray-300 rounded-lg text-gray-900 placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent sm:text-sm"
                                    placeholder="you@example.com"
                                />
                            </div>
                        </div>

                        <div>
                            <label htmlFor="password" className="block text-sm font-medium text-gray-700 mb-1">Password</label>
                            <div className="relative">
                                <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                    <Lock className="h-5 w-5 text-gray-400" />
                                </div>
                                <input
                                    id="password"
                                    name="password"
                                    type={showPassword ? "text" : "password"}
                                    required
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                    className="block w-full pl-10 pr-10 py-2.5 border border-gray-300 rounded-lg text-gray-900 placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent sm:text-sm"
                                    placeholder="••••••••"
                                />
                                <button
                                    type="button"
                                    onClick={() => setShowPassword(!showPassword)}
                                    className="absolute inset-y-0 right-0 pr-3 flex items-center"
                                >
                                    {showPassword ? (
                                        <EyeOff className="h-5 w-5 text-gray-400" />
                                    ) : (
                                        <Eye className="h-5 w-5 text-gray-400" />
                                    )}
                                </button>
                            </div>
                            <p className="mt-1 text-xs text-gray-500">Must be at least 8 characters with one lowercase, one uppercase, and one special character</p>
                        </div>

                        {isSignUp && (
                            <div>
                                <label htmlFor="confirmPassword" className="block text-sm font-medium text-gray-700 mb-1">Confirm Password</label>
                                <div className="relative">
                                    <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                        <Lock className="h-5 w-5 text-gray-400" />
                                    </div>
                                    <input
                                        id="confirmPassword"
                                        name="confirmPassword"
                                        type={showConfirmPassword ? "text" : "password"}
                                        required
                                        value={confirmPassword}
                                        onChange={(e) => setConfirmPassword(e.target.value)}
                                        className="block w-full pl-10 pr-10 py-2.5 border border-gray-300 rounded-lg text-gray-900 placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent sm:text-sm"
                                        placeholder="••••••••"
                                    />
                                    <button
                                        type="button"
                                        onClick={() => setShowConfirmPassword(!showConfirmPassword)}
                                        className="absolute inset-y-0 right-0 pr-3 flex items-center"
                                    >
                                        {showConfirmPassword ? (
                                            <EyeOff className="h-5 w-5 text-gray-400" />
                                        ) : (
                                            <Eye className="h-5 w-5 text-gray-400" />
                                        )}
                                    </button>
                                </div>
                            </div>
                        )}

                        {isSignUp && (
                            <div className="flex items-start">
                                <div className="flex items-center h-5">
                                    <input
                                        id="terms"
                                        name="terms"
                                        type="checkbox"
                                        required
                                        checked={termsAccepted}
                                        onChange={(e) => setTermsAccepted(e.target.checked)}
                                        className="focus:ring-blue-500 h-4 w-4 text-blue-600 border-gray-300 rounded"
                                    />
                                </div>
                                <div className="ml-3 text-sm">
                                    <label htmlFor="terms" className="font-medium text-gray-700">
                                        I agree to the{" "}
                                        <a href="/terms" className="text-blue-600 hover:text-blue-500 underline">
                                            Terms and Conditions
                                        </a>
                                    </label>
                                </div>
                            </div>
                        )}

                        <div>
                            <Button
                                type="submit"
                                variant="primary"
                                className="w-full flex justify-center py-3"
                                loading={loading}
                            >
                                {isSignUp ? 'Sign Up' : 'Sign In'}
                            </Button>
                        </div>
                    </form>

                    {!isSignUp && (
                        <div className="mt-8 pt-6 border-t border-gray-100">
                            <p className="text-center text-sm text-gray-600">
                                Don't have an account?
                            </p>
                            <div className="mt-2 text-center">
                                <Button
                                    type="button"
                                    variant="secondary"
                                    onClick={handleToggleSignUp}
                                    className="w-full max-w-xs"
                                >
                                    Create account
                                </Button>
                            </div>
                        </div>
                    )}
                </Card>
            </div>
        </div>
    );
};

export default Login;
