import React, { useState, useEffect } from 'react';
import Card from '../components/Card';
import { User, Mail, Phone, Edit, Save, Upload, X } from 'lucide-react';
import { useApp } from '../context/AppContext';
import { supabase } from '../lib/supabase';
import { updateUserProfile } from '../services/supabaseService';
import { useToast } from '../components/Toast';

const Profile = () => {
  const { user, profile, setProfile } = useApp();
  const { toast } = useToast();
  const [editMode, setEditMode] = useState(false);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
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
  });

  useEffect(() => {
    const loadProfile = async () => {
      if (user) {
        console.log('Profile component: User from context:', user);
        console.log('Profile component: Profile from context:', profile);
        console.log('Profile component: User metadata:', user.user_metadata);

        // Use user_metadata as fallback when profile is null/empty
        const metadata = user.user_metadata || {};

        if (profile && (profile.full_name || profile.phone_number)) {
          // Format date_of_birth for input field (YYYY-MM-DD)
          let formattedDate = '';
          if (profile.date_of_birth) {
            const date = new Date(profile.date_of_birth);
            if (!isNaN(date.getTime())) {
              formattedDate = date.toISOString().split('T')[0];
            }
          }

          const newProfileData = {
            name: profile.full_name || profile.name || '',
            email: profile.email || user.email || '',
            phone: profile.phone_number || profile.phone || '',
            city: profile.city || '',
            state: profile.state || '',
            pincode: profile.pincode || '',
            education: profile.education || '',
            date_of_birth: formattedDate,
            course: profile.course || '',
          };

          console.log('Setting profileData from database profile:', newProfileData);
          setProfileData(newProfileData);
        } else {
          // Use user_metadata as fallback when no profile in database
          const newProfileData = {
            name: metadata.full_name || '',
            email: user.email || metadata.email || '',
            phone: metadata.phone_number || '',
            city: metadata.city || '',
            state: metadata.state || '',
            pincode: metadata.pincode || '',
            education: metadata.education || '',
            date_of_birth: metadata.date_of_birth || '',
            course: metadata.course || '',
          };

          console.log('Setting profileData from user_metadata:', newProfileData);
          setProfileData(newProfileData);
        }
      }
      setLoading(false);
    };

    loadProfile();
  }, [user, profile]);

  const handleChange = (e) => {
    setProfileData({
      ...profileData,
      [e.target.name]: e.target.value,
    });
  };

  const handleSave = async () => {
    if (!user) {
      setSaving(false);
      return;
    }

    setSaving(true);
    console.log('=== STARTING PROFILE SAVE ===');

    try {
      // Step 1: Update users table in database
      const updatedProfile = await updateUserProfile(user.id, {
        full_name: profileData.name,
        phone_number: profileData.phone,
        city: profileData.city,
        state: profileData.state,
        pincode: profileData.pincode,
        education: profileData.education,
        date_of_birth: profileData.date_of_birth,
      });

      if (!updatedProfile) {
        throw new Error('Failed to save profile to database');
      }

      // Step 2: Update user_metadata in Supabase Auth
      const { error: authError } = await supabase.auth.updateUser({
        data: {
          full_name: profileData.name,
          phone_number: profileData.phone,
          city: profileData.city,
          state: profileData.state,
          pincode: profileData.pincode,
          education: profileData.education,
          date_of_birth: profileData.date_of_birth,
        }
      });

      if (authError) {
        console.error('Auth update error:', authError);
        // Continue anyway since DB update was successful, but warn user
        toast.warning('Profile saved, but account details may take time to sync.');
      } else {
        toast.success('Profile saved successfully!');
      }

      // Step 3: Update local state securely
      setProfile(updatedProfile);

      // Update local form state to match result
      setProfileData(prev => ({
        ...prev,
        // Ensure we keep existing email/course if not returned
        email: updatedProfile.email || prev.email,
        course: updatedProfile.course || prev.course,
        // Update user editable fields
        name: updatedProfile.full_name || prev.name,
        phone: updatedProfile.phone_number || prev.phone,
        city: updatedProfile.city || prev.city,
        state: updatedProfile.state || prev.state,
        pincode: updatedProfile.pincode || prev.pincode,
        education: updatedProfile.education || prev.education,
        date_of_birth: updatedProfile.date_of_birth || prev.date_of_birth,
      }));

      setEditMode(false);

    } catch (error) {
      console.error('Error saving profile:', error);
      toast.error(error.message || 'Failed to save profile');
    } finally {
      // Always stop loading, even on error
      setSaving(false);
    }
  };

  const handleCancel = () => {
    setEditMode(false);
    // Reload profile data to reset any changes
    if (user) {
      const metadata = user.user_metadata || {};
      if (profile && (profile.full_name || profile.phone_number)) {
        let formattedDate = '';
        if (profile.date_of_birth) {
          const date = new Date(profile.date_of_birth);
          if (!isNaN(date.getTime())) {
            formattedDate = date.toISOString().split('T')[0];
          }
        }
        setProfileData({
          name: profile.full_name || '',
          email: profile.email || user.email || '',
          phone: profile.phone_number || '',
          city: profile.city || '',
          state: profile.state || '',
          pincode: profile.pincode || '',
          education: profile.education || '',
          date_of_birth: formattedDate,
          course: profile.course || '',
        });
      } else {
        setProfileData({
          name: metadata.full_name || '',
          email: user.email || metadata.email || '',
          phone: metadata.phone_number || '',
          city: metadata.city || '',
          state: metadata.state || '',
          pincode: metadata.pincode || '',
          education: metadata.education || '',
          date_of_birth: metadata.date_of_birth || '',
          course: metadata.course || '',
        });
      }
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
        <div className="max-w-4xl mx-auto text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600 mx-auto"></div>
          <p className="mt-4 text-gray-600">Loading profile...</p>
        </div>
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
            <div className="relative">
              <div className="w-28 h-28 bg-gradient-to-br from-blue-500 to-blue-700 rounded-full flex items-center justify-center shadow-md">
                <User size={56} className="text-white" />
              </div>
              <button className="absolute bottom-0 right-0 bg-blue-600 text-white rounded-full p-2 hover:bg-blue-700 transition-colors shadow-lg">
                <Upload size={18} />
              </button>
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
                  onClick={() => setEditMode(true)}
                >
                  <Edit size={18} />
                  Edit Profile
                </button>
              )}
            </div>
          </div>
        </Card>

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
                    ? 'border-blue-300 bg-white text-gray-900 focus:border-blue-500 focus:ring-2 focus:ring-blue-200'
                    : 'border-gray-200 bg-gray-50 text-gray-800 cursor-not-allowed'
                  }`}
              />
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
                    ? 'border-blue-300 bg-white text-gray-900 focus:border-blue-500 focus:ring-2 focus:ring-blue-200'
                    : 'border-gray-200 bg-gray-50 text-gray-800 cursor-not-allowed'
                  }`}
              />
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
                    ? 'border-blue-300 bg-white text-gray-900 focus:border-blue-500 focus:ring-2 focus:ring-blue-200'
                    : 'border-gray-200 bg-gray-50 text-gray-800 cursor-not-allowed'
                  }`}
              />
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

          {/* Account Settings */}
          <div className="mt-8 pt-6 border-t-2 border-gray-200">
            <h3 className="text-xl font-bold text-gray-900 mb-4">Account Settings</h3>

            <div className="space-y-4">
              <button className="w-full sm:w-auto text-left bg-red-50 text-red-700 px-6 py-3 rounded-lg hover:bg-red-100 transition-colors font-medium border-2 border-red-200">
                Delete Account
              </button>
            </div>
          </div>
        </Card>
      </div>
    </div>
  );
};

export default Profile;
