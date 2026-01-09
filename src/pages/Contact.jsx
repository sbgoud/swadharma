import { useState } from 'react';
import { Mail, Phone, MapPin, Clock, Send, Loader2 } from 'lucide-react';
import Button from '../components/Button';
import Card from '../components/Card';
import { supabase } from '../lib/supabase';

const contactInfo = [
  {
    icon: Phone,
    title: 'Phone',
    details: ['+91 78978 92499'],
    subtitle: 'Mon-Sat: 9 AM - 7 PM',
  },
  {
    icon: Mail,
    title: 'Email',
    details: ['contact@swadharmaias.com'],
    subtitle: 'We reply within 24 hours',
  },
  {
    icon: MapPin,
    title: 'Campus',
    details: ['Ashok Nagar X Roads, Ashok Nagar', 'Hyderabad - 500020'],
    subtitle: 'Visit our center',
  },
  {
    icon: Clock,
    title: 'Working Hours',
    details: ['Monday - Saturday: 9 AM - 7 PM', 'Sunday: 10 AM - 2 PM'],
    subtitle: 'Except public holidays',
  },
];

const Contact = () => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    phone: '',
    course: '',
    message: '',
  });
  const [loading, setLoading] = useState(false);
  const [success, setSuccess] = useState(false);
  const [error, setError] = useState('');

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError('');

    try {
      // Insert enquiry into Supabase
      const { data, error } = await supabase
        .from('enquiries')
        .insert([
          {
            name: formData.name,
            email: formData.email,
            phone: formData.phone,
            course: formData.course,
            message: formData.message,
            created_at: new Date().toISOString(),
          },
        ])
        .select();

      if (error) {
        throw error;
      }

      setSuccess(true);

      // Reset form
      setFormData({
        name: '',
        email: '',
        phone: '',
        course: '',
        message: '',
      });
    } catch (err) {
      console.error('Error submitting form:', err);
      // Fallback for demo if supabase isn't configured
      if (err.message?.includes('apikey') || err.message?.includes('URL')) {
        setError('System configuration error: Please contact us directly via phone or email.');
      } else {
        setError('Failed to send message. Please try again or contact us directly.');
      }
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen pt-20">
      {/* Header */}
      <section className="bg-blue-900 py-20 text-center">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <h1 className="text-4xl md:text-5xl font-bold text-white mb-4 font-serif">
            Contact Us
          </h1>
          <p className="text-xl text-blue-100 max-w-2xl mx-auto">
            Visit our campus in Ashok Nagar or reach out to us for any queries regarding admissions.
          </p>
        </div>
      </section>

      {/* Contact Info Cards */}
      <section className="py-12 -mt-8 relative z-10">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
            {contactInfo.map((info, index) => (
              <Card key={index} className="text-center hover:shadow-lg transition-shadow border-t-4 border-t-blue-600">
                <info.icon className="h-10 w-10 text-blue-600 mx-auto mb-4" />
                <h3 className="font-semibold text-gray-900 mb-2">{info.title}</h3>
                {info.details.map((detail, idx) => (
                  <p key={idx} className="text-gray-600 text-sm font-medium">{detail}</p>
                ))}
                <p className="text-gray-400 text-xs mt-3 uppercase tracking-wider">{info.subtitle}</p>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Contact Form & Map */}
      <section className="py-16">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-12">
            {/* Contact Form */}
            <div>
              <h2 className="text-2xl font-bold text-gray-900 mb-6">Send us a Message</h2>
              <Card className="border-gray-200 shadow-xl">
                {success ? (
                  <div className="text-center py-8">
                    <div className="h-16 w-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
                      <Send className="h-8 w-8 text-green-600" />
                    </div>
                    <h3 className="text-xl font-semibold text-gray-900 mb-2">Message Sent Successfully!</h3>
                    <p className="text-gray-600 mb-6">
                      Thank you for reaching out. Our team will get back to you within 24 hours.
                    </p>
                    <Button onClick={() => setSuccess(false)} variant="outline">Send Another Message</Button>
                  </div>
                ) : (
                  <form onSubmit={handleSubmit} className="space-y-6">
                    {error && (
                      <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded-lg text-sm flex items-start">
                        <div className="mr-2">⚠️</div>
                        <div>{error}</div>
                      </div>
                    )}

                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                      <div>
                        <label htmlFor="name" className="block text-sm font-bold text-gray-700 mb-2">
                          Full Name *
                        </label>
                        <input
                          type="text"
                          id="name"
                          name="name"
                          value={formData.name}
                          onChange={handleChange}
                          required
                          className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all outline-none"
                          placeholder="Ex: Rahul Kumar"
                        />
                      </div>
                      <div>
                        <label htmlFor="email" className="block text-sm font-bold text-gray-700 mb-2">
                          Email Address *
                        </label>
                        <input
                          type="email"
                          id="email"
                          name="email"
                          value={formData.email}
                          onChange={handleChange}
                          required
                          className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all outline-none"
                          placeholder="Ex: rahul@example.com"
                        />
                      </div>
                    </div>

                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                      <div>
                        <label htmlFor="phone" className="block text-sm font-bold text-gray-700 mb-2">
                          Phone Number *
                        </label>
                        <input
                          type="tel"
                          id="phone"
                          name="phone"
                          value={formData.phone}
                          onChange={handleChange}
                          required
                          className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all outline-none"
                          placeholder="+91 XXXXX XXXXX"
                        />
                      </div>
                      <div>
                        <label htmlFor="course" className="block text-sm font-bold text-gray-700 mb-2">
                          Interested Course
                        </label>
                        <select
                          id="course"
                          name="course"
                          value={formData.course}
                          onChange={handleChange}
                          className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all outline-none bg-white"
                        >
                          <option value="">Select a course</option>
                          <option value="prelims-test-series-2026">Prelims Test Series 2026</option>
                          <option value="foundation">GS Foundation Course</option>
                          <option value="optional">Optional Subjects</option>
                          <option value="mentorship">General Mentorship</option>
                        </select>
                      </div>
                    </div>

                    <div>
                      <label htmlFor="message" className="block text-sm font-bold text-gray-700 mb-2">
                        Message *
                      </label>
                      <textarea
                        id="message"
                        name="message"
                        value={formData.message}
                        onChange={handleChange}
                        required
                        rows={4}
                        className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-all outline-none"
                        placeholder=" Tell us about your preparation level or queries..."
                      />
                    </div>

                    <Button type="submit" className="w-full py-3 text-base shadow-lg shadow-blue-500/20" disabled={loading}>
                      {loading ? (
                        <>
                          <Loader2 className="mr-2 h-5 w-5 animate-spin" />
                          Sending Enquiry...
                        </>
                      ) : (
                        <>
                          Send Message
                          <Send className="ml-2 h-5 w-5" />
                        </>
                      )}
                    </Button>
                  </form>
                )}
              </Card>
            </div>

            {/* Map */}
            <div>
              <h2 className="text-2xl font-bold text-gray-900 mb-6">Locate Campus</h2>
              <Card padding={false} className="overflow-hidden h-[550px] border-gray-200 shadow-xl relative">
                <div className="absolute top-4 left-4 z-10 bg-white/90 backdrop-blur px-4 py-2 rounded-lg shadow-md border border-gray-200">
                  <p className="text-xs font-bold text-gray-500 uppercase">Landmark</p>
                  <p className="font-semibold text-gray-900">Ashok Nagar X Roads</p>
                </div>
                <iframe
                  // Using a generic search embed for Ashok Nagar Hyderabad since I cannot get exact coordinates immediately. 
                  // This usually centers nicely on the locality.
                  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3807.037707324391!2d78.4878!3d17.4098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb99daeaebd2c7%3A0xae18210a2d55058d!2sAshok%20Nagar%2C%20Hyderabad%2C%20Telangana!5e0!3m2!1sen!2sin!4v1600000000000!5m2!1sen!2sin"
                  width="100%"
                  height="100%"
                  style={{ border: 0 }}
                  allowFullScreen=""
                  loading="lazy"
                  title="Swadharma IAS Academy Location"
                />
              </Card>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
};

export default Contact;