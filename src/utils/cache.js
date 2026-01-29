/**
 * Cache Utility
 * Provides in-memory and localStorage caching for API responses
 */

class Cache {
  constructor(options = {}) {
    this.memoryCache = new Map();
    this.defaultTTL = options.defaultTTL || 5 * 60 * 1000; // 5 minutes default
    this.maxSize = options.maxSize || 100;
    this.useLocalStorage = options.useLocalStorage !== false;
    this.prefix = options.prefix || 'swadharma_cache_';
  }

  /**
   * Generate cache key
   * @param {string} key - Cache key
   * @returns {string} - Prefixed cache key
   */
  getKey(key) {
    return `${this.prefix}${key}`;
  }

  /**
   * Set a value in cache
   * @param {string} key - Cache key
   * @param {*} value - Value to cache
   * @param {number} ttl - Time to live in milliseconds
   */
  set(key, value, ttl = this.defaultTTL) {
    const cacheKey = this.getKey(key);
    const expiry = Date.now() + ttl;
    const cacheItem = {
      value,
      expiry,
      timestamp: Date.now()
    };

    // Set in memory cache
    this.memoryCache.set(cacheKey, cacheItem);

    // Enforce max size
    if (this.memoryCache.size > this.maxSize) {
      this.evictOldest();
    }

    // Set in localStorage if enabled
    if (this.useLocalStorage && typeof window !== 'undefined') {
      try {
        localStorage.setItem(cacheKey, JSON.stringify(cacheItem));
      } catch (error) {
        console.warn('Failed to set cache in localStorage:', error);
      }
    }
  }

  /**
   * Get a value from cache
   * @param {string} key - Cache key
   * @returns {*} - Cached value or null
   */
  get(key) {
    const cacheKey = this.getKey(key);

    // Try memory cache first
    let cacheItem = this.memoryCache.get(cacheKey);

    // Try localStorage if not in memory
    if (!cacheItem && this.useLocalStorage && typeof window !== 'undefined') {
      try {
        const item = localStorage.getItem(cacheKey);
        if (item) {
          cacheItem = JSON.parse(item);
          // Restore to memory cache
          this.memoryCache.set(cacheKey, cacheItem);
        }
      } catch (error) {
        console.warn('Failed to get cache from localStorage:', error);
      }
    }

    // Check if expired
    if (!cacheItem || Date.now() > cacheItem.expiry) {
      this.delete(key);
      return null;
    }

    return cacheItem.value;
  }

  /**
   * Check if a key exists in cache
   * @param {string} key - Cache key
   * @returns {boolean} - True if key exists and is not expired
   */
  has(key) {
    return this.get(key) !== null;
  }

  /**
   * Delete a value from cache
   * @param {string} key - Cache key
   */
  delete(key) {
    const cacheKey = this.getKey(key);
    this.memoryCache.delete(cacheKey);

    if (this.useLocalStorage && typeof window !== 'undefined') {
      try {
        localStorage.removeItem(cacheKey);
      } catch (error) {
        console.warn('Failed to delete cache from localStorage:', error);
      }
    }
  }

  /**
   * Clear all cache
   */
  clear() {
    this.memoryCache.clear();

    if (this.useLocalStorage && typeof window !== 'undefined') {
      try {
        // Clear all items with our prefix
        const keys = Object.keys(localStorage);
        keys.forEach(key => {
          if (key.startsWith(this.prefix)) {
            localStorage.removeItem(key);
          }
        });
      } catch (error) {
        console.warn('Failed to clear cache from localStorage:', error);
      }
    }
  }

  /**
   * Evict oldest cache entry
   */
  evictOldest() {
    let oldestKey = null;
    let oldestTimestamp = Infinity;

    for (const [key, value] of this.memoryCache.entries()) {
      if (value.timestamp < oldestTimestamp) {
        oldestTimestamp = value.timestamp;
        oldestKey = key;
      }
    }

    if (oldestKey) {
      this.memoryCache.delete(oldestKey);
    }
  }

  /**
   * Get cache statistics
   * @returns {Object} - Cache statistics
   */
  getStats() {
    return {
      size: this.memoryCache.size,
      maxSize: this.maxSize,
      keys: Array.from(this.memoryCache.keys())
    };
  }
}

// Create default cache instance
export const cache = new Cache({
  defaultTTL: 5 * 60 * 1000, // 5 minutes
  maxSize: 100,
  useLocalStorage: true
});

/**
 * Cache decorator for async functions
 * @param {Function} fn - Async function to cache
 * @param {Object} options - Cache options
 * @returns {Function} - Cached function
 */
export const withCache = (fn, options = {}) => {
  const {
    keyGenerator = (...args) => JSON.stringify(args),
    ttl = cache.defaultTTL,
    cacheInstance = cache
  } = options;

  return async (...args) => {
    const cacheKey = keyGenerator(...args);

    // Check cache
    const cachedValue = cacheInstance.get(cacheKey);
    if (cachedValue !== null) {
      return cachedValue;
    }

    // Execute function
    const result = await fn(...args);

    // Cache result
    cacheInstance.set(cacheKey, result, ttl);

    return result;
  };
};

/**
 * React hook for caching
 * @param {string} key - Cache key
 * @param {Function} fetcher - Function to fetch data
 * @param {Object} options - Cache options
 * @returns {Object} - Cache value and functions
 */
export const useCache = (key, fetcher, options = {}) => {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  const { ttl = cache.defaultTTL, cacheInstance = cache } = options;

  useEffect(() => {
    // Check cache first
    const cachedValue = cacheInstance.get(key);
    if (cachedValue !== null) {
      setData(cachedValue);
      return;
    }

    // Fetch data
    const fetchData = async () => {
      setLoading(true);
      setError(null);

      try {
        const result = await fetcher();
        cacheInstance.set(key, result, ttl);
        setData(result);
      } catch (err) {
        setError(err);
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [key]);

  const invalidate = () => {
    cacheInstance.delete(key);
    setData(null);
  };

  const refresh = async () => {
    cacheInstance.delete(key);
    setLoading(true);
    setError(null);

    try {
      const result = await fetcher();
      cacheInstance.set(key, result, ttl);
      setData(result);
    } catch (err) {
      setError(err);
    } finally {
      setLoading(false);
    }
  };

  return { data, loading, error, invalidate, refresh };
};

/**
 * Cache keys for common operations
 */
export const CacheKeys = {
  USER_PROFILE: (userId) => `user_profile_${userId}`,
  COURSES: 'courses_list',
  USER_COURSES: (userId) => `user_courses_${userId}`,
  TESTS: 'tests_list',
  COURSE_TESTS: (courseId) => `course_tests_${courseId}`,
  TEST_QUESTIONS: (testId) => `test_questions_${testId}`,
  USER_ATTEMPTS: (userId) => `user_attempts_${userId}`,
  SUBJECTS: 'subjects_list'
};

export default cache;
