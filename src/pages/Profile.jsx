import React, { useState, useEffect } from 'react';
import Card from '../components/Card';
import { User, Mail, Phone, Edit, Save, X } from 'lucide-react';
import { useApp } from '../context/AppContext';
import { updateUserProfile } from '../services/supabaseService';
import { useToast } from '../components/Toast';

const Profile = () => {
  const { user, profile, setProfile } = useApp();
  const toast = useToast();
  const [editMode, setEditMode] = useState(false);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [originalData, setOriginalData] = useState(null);
  const [errors, setErrors] = useState({});
  const [profileData, setProfileData] = useState({
    name: '',
    email: '',
    phone: '',
    city: '',
    state: '',
    pincode: '',
    education: '',
    date_of_birth: '',
    course: '',
    user_id: '',
  });

  useEffect(() => {
    const loadProfile = async () => {
      if (user) {
        let initialData = {
          name: '',
          email: user.email || '',
          phone: '',
          city: '',
          state: '',
          pincode: '',
          education: '',
          date_of_birth: '',
          course: '',
          user_id: '',
        };

        if (profile) {
          initialData = {
            name: profile.full_name || '',
            email: profile.email || user.email || '',
            phone: profile.phone_number || '',
            city: profile.city || '',
            state: profile.state || '',
            pincode: profile.pincode || '',
            education: profile.education || '',
            date_of_birth: profile.date_of_birth || '',
            course: profile.course || '',
            user_id: profile.user_id || '',
          };
        }
        setProfileData(initialData);
      }
      setLoading(false);
    };

    loadProfile();
  }, [user, profile]);

  const validateField = (name, value) => {
    let error = '';

    switch (name) {
      case 'name':
        if (!value || value.trim().length === 0) {
          error = 'Full name is required';
        } else if (value.trim().length < 2) {
          error = 'Full name must be at least 2 characters';
        }
        break;
      case 'phone':
         if (value && value.trim().length > 0) {
           const phoneRegex = /^\+91\d{10}$/;
           if (!phoneRegex.test(value)) {
             error = 'Please enter a valid phone number starting with +91 followed by 10 digits';
           }
         }
         break;
      case 'pincode':
        if (value && value.trim().length > 0) {
          const pincodeRegex = /^\d{5,6}$/;
          if (!pincodeRegex.test(value)) {
            error = 'Please enter a valid pincode (5-6 digits)';
          }
        }
        break;
      case 'email':
        if (value && value.trim().length > 0) {
          const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
          if (!emailRegex.test(value)) {
            error = 'Please enter a valid email address';
          }
        }
        break;
      default:
        break;
    }

    setErrors(prev => ({ ...prev, [name]: error }));
    return error === '';
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setProfileData(prev => ({ ...prev, [name]: value }));
    validateField(name, value);
  };

  const validateAllFields = () => {
    const newErrors = {};
    let isValid = true;

    // Validate name
    if (!profileData.name || profileData.name.trim().length === 0) {
      newErrors.name = 'Full name is required';
      isValid = false;
    } else if (profileData.name.trim().length < 2) {
      newErrors.name = 'Full name must be at least 2 characters';
      isValid = false;
    }

    // Validate phone
    if (profileData.phone && profileData.phone.trim().length > 0) {
      const phoneRegex = /^\+91\d{10}$/;
      if (!phoneRegex.test(profileData.phone)) {
        newErrors.phone = 'Please enter a valid phone number starting with +91 followed by 10 digits';
        isValid = false;
      }
    }

    // Validate pincode
    if (profileData.pincode && profileData.pincode.trim().length > 0) {
      const pincodeRegex = /^\d{5,6}$/;
      if (!pincodeRegex.test(profileData.pincode)) {
        newErrors.pincode = 'Please enter a valid pincode (5-6 digits)';
        isValid = false;
      }
    }

    setErrors(newErrors);
    return isValid;
  };

   const handleSave = async () => {
     if (!user) return;

     // Validate all fields before saving
     if (!validateAllFields()) {
       toast.error('Please fix the errors before saving');
       return;
     }

     setSaving(true);

     try {
        const profileDataToUpdate = {
          full_name: profileData.name,
          email: profileData.email, // Required field
          phone_number: profileData.phone,
          city: profileData.city,
          state: profileData.state,
          pincode: profileData.pincode,
          education: profileData.education,
          date_of_birth: profileData.date_of_birth,
          course: profileData.course,
        };

       console.log('Attempting to update profile with data:', profileDataToUpdate);
       
       const updatedProfile = await updateUserProfile(user.id, profileDataToUpdate);
       
       console.log('Update response:', updatedProfile);

       if (updatedProfile) {
         setProfile(updatedProfile);
         setEditMode(false);
         setOriginalData(null);
         toast.success('Profile updated successfully');
       } else {
         throw new Error('Update failed');
       }
     } catch (error) {
       console.error('Save error:', error);
       console.error('Error details:', JSON.stringify(error, null, 2));
       toast.error(error.message || 'Failed to update profile');
     } finally {
       setSaving(false);
     }
   };

  const handleCancel = () => {
    setEditMode(false);
    if (originalData) {
      setProfileData(originalData);
      setOriginalData(null);
    }
    setErrors({});
  };

  if (loading) {
    return (
      <div className="flex justify-center items-center h-screen">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600"></div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-4xl mx-auto">

        <div className="text-center mb-12">
          <h1 className="text-4xl font-bold text-gray-900 mb-4">My Profile</h1>
          <p className="text-lg text-gray-600">Manage your account information</p>
        </div>

        {/* Profile Header Card */}
        <Card className="mb-8 bg-white shadow-lg">
          <div className="flex flex-col sm:flex-row items-center sm:items-start space-y-4 sm:space-y-0 sm:space-x-6 p-4">
            {/* Avatar */}
            <div className="w-28 h-28 bg-gradient-to-br from-blue-500 to-blue-700 rounded-full flex items-center justify-center shadow-md">
              <User size={56} className="text-white" />
            </div>

            {/* User Info */}
            <div className="flex-1 text-center sm:text-left">
              <h2 className="text-3xl font-bold text-gray-900 mb-2">
                {profileData.name || 'No name set'}
              </h2>
              <div className="space-y-1">
                <p className="text-gray-700 flex items-center justify-center sm:justify-start gap-2">
                  <Mail size={18} className="text-blue-600" />
                  <span className="font-medium">{profileData.email}</span>
                </p>
                <p className="text-gray-700 flex items-center justify-center sm:justify-start gap-2">
                  <Phone size={18} className="text-blue-600" />
                  <span className="font-medium">{profileData.phone || 'No phone number'}</span>
                </p>
                <p className="text-gray-700 flex items-center justify-center sm:justify-start gap-2">
                  <User size={18} className="text-blue-600" />
                  <span className="font-medium font-mono text-sm">{profileData.user_id || 'No user ID'}</span>
                </p>
              </div>
            </div>

            {/* Action Buttons */}
            <div className="flex flex-col gap-2">
              {editMode ? (
                <>
                  <button
                    className="bg-green-600 text-white px-6 py-2.5 rounded-lg font-semibold hover:bg-green-700 transition-all duration-200 shadow-md hover:shadow-lg disabled:opacity-50 disabled:cursor-not-allowed flex items-center justify-center gap-2 min-w-[120px]"
                    onClick={handleSave}
                    disabled={saving}
                  >
                    {saving ? (
                      <>
                        <div className="animate-spin rounded-full h-4 w-4 border-2 border-white border-t-transparent"></div>
                        Saving...
                      </>
                    ) : (
                      <>
                        <Save size={18} />
                        Save
                      </>
                    )}
                  </button>
                  <button
                    className="bg-gray-500 text-white px-6 py-2.5 rounded-lg font-semibold hover:bg-gray-600 transition-all duration-200 shadow-md hover:shadow-lg flex items-center justify-center gap-2 min-w-[120px]"
                    onClick={handleCancel}
                    disabled={saving}
                  >
                    <X size={18} />
                    Cancel
                  </button>
                </>
              ) : (
                <button
                  className="bg-blue-600 text-white px-6 py-2.5 rounded-lg font-semibold hover:bg-blue-700 transition-all duration-200 shadow-md hover:shadow-lg flex items-center justify-center gap-2 min-w-[120px]"
                  onClick={() => {
                    setOriginalData({ ...profileData });
                    setEditMode(true);
                  }}
                >
                  <Edit size={18} />
                  Edit Profile
                </button>
              )}
            </div>
          </div>
        </Card >

        {/* Personal Information Card */}
        <Card className="bg-white shadow-lg">
          <div className="flex items-center justify-between mb-6">
            <h3 className="text-2xl font-bold text-gray-900">Personal Information</h3>
            {editMode && (
              <span className="text-sm text-blue-600 font-medium bg-blue-50 px-3 py-1 rounded-full">
                Editing Mode
              </span>
            )}
          </div>

          <div className="grid md:grid-cols-2 gap-6">
            {/* Full Name */}
            <div className="space-y-2">
              <label className="block text-sm font-semibold text-gray-800">
                Full Name <span className="text-red-500">*</span>
              </label>
              <input
                type="text"
                name="name"
                value={profileData.name}
                onChange={handleChange}
                disabled={!editMode}
                placeholder="Enter your full name"
                className={`w-full px-4 py-3 border-2 rounded-lg transition-all duration-200 ${editMode
                  ? errors.name
                    ? 'border-red-300 bg-white text-gray-900 focus:border-red-500 focus:ring-2 focus:ring-red-200'
                    : 'border-blue-300 bg-white text-gray-900 focus:border-blue-500 focus:ring-2 focus:ring-blue-200'
                  : 'border-gray-200 bg-gray-50 text-gray-800 cursor-not-allowed'
                  }`}
              />
              {editMode && errors.name && (
                <p className="text-sm text-red-500">{errors.name}</p>
              )}
            </div>

            {/* Email */}
            <div className="space-y-2">
              <label className="block text-sm font-semibold text-gray-800">
                Email Address
              </label>
              <input
                type="email"
                name="email"
                value={profileData.email}
                disabled={true}
                className="w-full px-4 py-3 border-2 border-gray-200 bg-gray-100 text-gray-600 rounded-lg cursor-not-allowed"
              />
              <p className="text-xs text-gray-500">Email cannot be changed</p>
            </div>

            {/* Date of Birth */}
            <div className="space-y-2">
              <label className="block text-sm font-semibold text-gray-800">
                Date of Birth
              </label>
              <input
                type="date"
                name="date_of_birth"
                value={profileData.date_of_birth}
                onChange={handleChange}
                disabled={!editMode}
                className={`w-full px-4 py-3 border-2 rounded-lg transition-all duration-200 ${editMode
                  ? 'border-blue-300 bg-white text-gray-900 focus:border-blue-500 focus:ring-2 focus:ring-blue-200'
                  : 'border-gray-200 bg-gray-50 text-gray-800 cursor-not-allowed'
                  }`}
              />
            </div>

            {/* Phone */}
            <div className="space-y-2">
              <label className="block text-sm font-semibold text-gray-800">
                Phone Number
              </label>
              <input
                type="tel"
                name="phone"
                value={profileData.phone}
                onChange={handleChange}
                disabled={!editMode}
                placeholder="+91 98765 43210"
                className={`w-full px-4 py-3 border-2 rounded-lg transition-all duration-200 ${editMode
                  ? errors.phone
                    ? 'border-red-300 bg-white text-gray-900 focus:border-red-500 focus:ring-2 focus:ring-red-200'
                    : 'border-blue-300 bg-white text-gray-900 focus:border-blue-500 focus:ring-2 focus:ring-blue-200'
                  : 'border-gray-200 bg-gray-50 text-gray-800 cursor-not-allowed'
                  }`}
              />
              {editMode && errors.phone && (
                <p className="text-sm text-red-500">{errors.phone}</p>
              )}
            </div>

            {/* City */}
            <div className="space-y-2">
              <label className="block text-sm font-semibold text-gray-800">
                City
              </label>
              <input
                type="text"
                name="city"
                value={profileData.city}
                onChange={handleChange}
                disabled={!editMode}
                placeholder="Enter your city"
                className={`w-full px-4 py-3 border-2 rounded-lg transition-all duration-200 ${editMode
                  ? 'border-blue-300 bg-white text-gray-900 focus:border-blue-500 focus:ring-2 focus:ring-blue-200'
                  : 'border-gray-200 bg-gray-50 text-gray-800 cursor-not-allowed'
                  }`}
              />
            </div>

            {/* State */}
            <div className="space-y-2">
              <label className="block text-sm font-semibold text-gray-800">
                State
              </label>
              <input
                type="text"
                name="state"
                value={profileData.state}
                onChange={handleChange}
                disabled={!editMode}
                placeholder="Enter your state"
                className={`w-full px-4 py-3 border-2 rounded-lg transition-all duration-200 ${editMode
                  ? 'border-blue-300 bg-white text-gray-900 focus:border-blue-500 focus:ring-2 focus:ring-blue-200'
                  : 'border-gray-200 bg-gray-50 text-gray-800 cursor-not-allowed'
                  }`}
              />
            </div>

            {/* Pincode */}
            <div className="space-y-2">
              <label className="block text-sm font-semibold text-gray-800">
                Pincode
              </label>
              <input
                type="text"
                name="pincode"
                value={profileData.pincode}
                onChange={handleChange}
                disabled={!editMode}
                placeholder="500001"
                className={`w-full px-4 py-3 border-2 rounded-lg transition-all duration-200 ${editMode
                  ? errors.pincode
                    ? 'border-red-300 bg-white text-gray-900 focus:border-red-500 focus:ring-2 focus:ring-red-200'
                    : 'border-blue-300 bg-white text-gray-900 focus:border-blue-500 focus:ring-2 focus:ring-blue-200'
                  : 'border-gray-200 bg-gray-50 text-gray-800 cursor-not-allowed'
                  }`}
              />
              {editMode && errors.pincode && (
                <p className="text-sm text-red-500">{errors.pincode}</p>
              )}
            </div>

            {/* Education */}
            <div className="space-y-2">
              <label className="block text-sm font-semibold text-gray-800">
                Education
              </label>
              <input
                type="text"
                name="education"
                value={profileData.education}
                onChange={handleChange}
                disabled={!editMode}
                placeholder="e.g., B.Tech, B.Sc, etc."
                className={`w-full px-4 py-3 border-2 rounded-lg transition-all duration-200 ${editMode
                  ? 'border-blue-300 bg-white text-gray-900 focus:border-blue-500 focus:ring-2 focus:ring-blue-200'
                  : 'border-gray-200 bg-gray-50 text-gray-800 cursor-not-allowed'
                  }`}
              />
            </div>

            {/* Course */}
            <div className="space-y-2 md:col-span-2">
              <label className="block text-sm font-semibold text-gray-800">
                Current Course
              </label>
              <input
                type="text"
                name="course"
                value={profileData.course}
                onChange={handleChange}
                disabled={!editMode}
                placeholder="e.g., UPSC Preparation, TNPSC Group 2, etc."
                className={`w-full px-4 py-3 border-2 rounded-lg transition-all duration-200 ${editMode
                  ? 'border-blue-300 bg-white text-gray-900 focus:border-blue-500 focus:ring-2 focus:ring-blue-200'
                  : 'border-gray-200 bg-gray-50 text-gray-800 cursor-not-allowed'
                  }`}
              />
            </div>
          </div>
        </Card >
      </div >
    </div >
  );
};

export default Profile;
