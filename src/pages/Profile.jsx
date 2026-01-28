import React, { useState } from 'react';
import Card from '../components/Card';
import { User, Mail, Phone, Edit, Save, Upload } from 'lucide-react';
import { useApp } from '../context/AppContext';

const Profile = () => {
  const { user } = useApp();
  const [editMode, setEditMode] = useState(false);

  const [profileData, setProfileData] = useState({
    name: 'John Doe',
    email: user?.email || '',
    phone: '+91 98765 43210',
    city: 'Delhi',
    state: 'Delhi',
    pincode: '110001',
    education: 'Graduate',
    course: 'Prelims Test Series 2026',
  });

  const handleChange = (e) => {
    setProfileData({
      ...profileData,
      [e.target.name]: e.target.value,
    });
  };

  const handleSave = () => {
    // Save profile data to database
    setEditMode(false);
  };

  return (
    <div className="min-h-screen bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-4xl mx-auto">
        <div className="text-center mb-12">
          <h1 className="text-3xl font-bold text-gray-900 mb-4">Profile</h1>
          <p className="text-lg text-gray-600">Manage your account information</p>
        </div>

        <Card className="mb-8">
          <div className="flex items-center space-x-6">
            <div className="relative">
              <div className="w-24 h-24 bg-gray-200 rounded-full flex items-center justify-center">
                <User size={48} className="text-gray-400" />
              </div>
              <button className="absolute bottom-0 right-0 bg-blue-600 text-white rounded-full p-2 hover:bg-blue-700 transition-colors">
                <Upload size={16} />
              </button>
            </div>
            
            <div className="flex-1">
              <h2 className="text-2xl font-bold text-gray-900 mb-1">{profileData.name}</h2>
              <p className="text-gray-600 mb-2">{profileData.email}</p>
              <p className="text-gray-600">{profileData.phone}</p>
            </div>

            <div className="flex space-x-2">
              {editMode ? (
                <button 
                  className="bg-green-600 text-white px-4 py-2 rounded-lg text-sm font-medium hover:bg-green-700 transition-colors"
                  onClick={handleSave}
                >
                  <Save size={16} className="mr-1" />
                  Save
                </button>
              ) : (
                <button 
                  className="bg-blue-600 text-white px-4 py-2 rounded-lg text-sm font-medium hover:bg-blue-700 transition-colors"
                  onClick={() => setEditMode(true)}
                >
                  <Edit size={16} className="mr-1" />
                  Edit
                </button>
              )}
            </div>
          </div>
        </Card>

        <Card>
          <h3 className="text-xl font-bold text-gray-900 mb-6">Personal Information</h3>
          
          <div className="grid md:grid-cols-2 gap-6">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Full Name</label>
              <input
                type="text"
                name="name"
                value={profileData.name}
                onChange={handleChange}
                disabled={!editMode}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 disabled:bg-gray-100"
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Email Address</label>
              <input
                type="email"
                name="email"
                value={profileData.email}
                onChange={handleChange}
                disabled={true}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 disabled:bg-gray-100"
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Phone Number</label>
              <input
                type="tel"
                name="phone"
                value={profileData.phone}
                onChange={handleChange}
                disabled={!editMode}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 disabled:bg-gray-100"
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">City</label>
              <input
                type="text"
                name="city"
                value={profileData.city}
                onChange={handleChange}
                disabled={!editMode}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 disabled:bg-gray-100"
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">State</label>
              <input
                type="text"
                name="state"
                value={profileData.state}
                onChange={handleChange}
                disabled={!editMode}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 disabled:bg-gray-100"
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Pincode</label>
              <input
                type="text"
                name="pincode"
                value={profileData.pincode}
                onChange={handleChange}
                disabled={!editMode}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 disabled:bg-gray-100"
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Education</label>
              <input
                type="text"
                name="education"
                value={profileData.education}
                onChange={handleChange}
                disabled={!editMode}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 disabled:bg-gray-100"
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Current Course</label>
              <input
                type="text"
                name="course"
                value={profileData.course}
                onChange={handleChange}
                disabled={!editMode}
                className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 disabled:bg-gray-100"
              />
            </div>
          </div>

          <div className="mt-8 pt-6 border-t border-gray-100">
            <h3 className="text-xl font-bold text-gray-900 mb-4">Account Settings</h3>
            
            <div className="space-y-4">
              <button className="w-full text-left bg-red-50 text-red-700 px-4 py-3 rounded-lg hover:bg-red-100 transition-colors">
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
