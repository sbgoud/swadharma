// Pexels API utility for fetching images
// Get your free API key from https://www.pexels.com/api/

const PEXELS_API_KEY = import.meta.env.VITE_PEXELS_API_KEY || 'YOUR_PEXELS_API_KEY';
const PEXELS_BASE_URL = 'https://api.pexels.com/v1';

export const pexelsClient = {
  async searchPhotos(query, perPage = 15, page = 1) {
    try {
      const response = await fetch(
        `${PEXELS_BASE_URL}/search?query=${encodeURIComponent(query)}&per_page=${perPage}&page=${page}`,
        {
          headers: {
            Authorization: PEXELS_API_KEY,
          },
        }
      );
      
      if (!response.ok) {
        throw new Error('Failed to fetch photos from Pexels');
      }
      
      return await response.json();
    } catch (error) {
      console.error('Pexels API error:', error);
      return null;
    }
  },

  async getCuratedPhotos(perPage = 15, page = 1) {
    try {
      const response = await fetch(
        `${PEXELS_BASE_URL}/curated?per_page=${perPage}&page=${page}`,
        {
          headers: {
            Authorization: PEXELS_API_KEY,
          },
        }
      );
      
      if (!response.ok) {
        throw new Error('Failed to fetch curated photos from Pexels');
      }
      
      return await response.json();
    } catch (error) {
      console.error('Pexels API error:', error);
      return null;
    }
  },
};

// Default placeholder images if API is not configured
export const placeholderImages = {
  hero: 'https://images.pexels.com/photos/3184465/pexels-photo-3184465.jpeg?auto=compress&cs=tinysrgb&w=1920',
  about: 'https://images.pexels.com/photos/3182785/pexels-photo-3182785.jpeg?auto=compress&cs=tinysrgb&w=800',
  courses: 'https://images.pexels.com/photos/5428834/pexels-photo-5428834.jpeg?auto=compress&cs=tinysrgb&w=600',
  contact: 'https://images.pexels.com/photos/3184418/pexels-photo-3184418.jpeg?auto=compress&cs=tinysrgb&w=800',
  campus: 'https://images.pexels.com/photos/3184291/pexels-photo-3184291.jpeg?auto=compress&cs=tinysrgb&w=1200',
  faculty: 'https://images.pexels.com/photos/3183150/pexels-photo-3183150.jpeg?auto=compress&cs=tinysrgb&w=400',
};

export default pexelsClient;