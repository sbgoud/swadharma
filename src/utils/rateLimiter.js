/**
 * Rate Limiter
 * Prevents excessive API calls and protects against abuse
 */

/**
 * Rate Limiter Class
 */
class RateLimiter {
  /**
   * @param {number} maxRequests - Maximum number of requests allowed
   * @param {number} timeWindow - Time window in milliseconds
   * @param {string} key - Unique identifier for this rate limiter
   */
  constructor(maxRequests = 10, timeWindow = 60000, key = 'default') {
    this.maxRequests = maxRequests;
    this.timeWindow = timeWindow;
    this.key = key;
    this.requests = [];
    this.blockedUntil = null;
  }

  /**
   * Check if a request can be made
   * @returns {Object} - Result with canMakeRequest boolean and waitTime
   */
  canMakeRequest() {
    const now = Date.now();

    // Check if currently blocked
    if (this.blockedUntil && now < this.blockedUntil) {
      return {
        canMakeRequest: false,
        waitTime: this.blockedUntil - now,
        message: `Rate limit exceeded. Please wait ${Math.ceil((this.blockedUntil - now) / 1000)} seconds.`
      };
    }

    // Clear expired requests
    this.requests = this.requests.filter(time => now - time < this.timeWindow);

    // Check if limit reached
    if (this.requests.length >= this.maxRequests) {
      // Block for the time window
      this.blockedUntil = now + this.timeWindow;
      return {
        canMakeRequest: false,
        waitTime: this.timeWindow,
        message: `Rate limit exceeded. Please wait ${this.timeWindow / 1000} seconds.`
      };
    }

    // Allow request
    return {
      canMakeRequest: true,
      waitTime: 0,
      message: null
    };
  }

  /**
   * Record a request
   */
  recordRequest() {
    this.requests.push(Date.now());
  }

  /**
   * Reset the rate limiter
   */
  reset() {
    this.requests = [];
    this.blockedUntil = null;
  }

  /**
   * Get current request count
   * @returns {number} - Number of requests in current window
   */
  getRequestCount() {
    const now = Date.now();
    this.requests = this.requests.filter(time => now - time < this.timeWindow);
    return this.requests.length;
  }

  /**
   * Get remaining requests
   * @returns {number} - Number of requests remaining
   */
  getRemainingRequests() {
    return Math.max(0, this.maxRequests - this.getRequestCount());
  }

  /**
   * Get time until reset
   * @returns {number} - Time in milliseconds until reset
   */
  getTimeUntilReset() {
    if (this.requests.length === 0) return 0;
    const oldestRequest = this.requests[0];
    const resetTime = oldestRequest + this.timeWindow;
    return Math.max(0, resetTime - Date.now());
  }
}

/**
 * Rate Limiter Manager
 * Manages multiple rate limiters
 */
class RateLimiterManager {
  constructor() {
    this.limiters = new Map();
  }

  /**
   * Get or create a rate limiter
   * @param {string} key - Unique identifier for the rate limiter
   * @param {number} maxRequests - Maximum number of requests
   * @param {number} timeWindow - Time window in milliseconds
   * @returns {RateLimiter} - Rate limiter instance
   */
  getLimiter(key, maxRequests = 10, timeWindow = 60000) {
    if (!this.limiters.has(key)) {
      this.limiters.set(key, new RateLimiter(maxRequests, timeWindow, key));
    }
    return this.limiters.get(key);
  }

  /**
   * Remove a rate limiter
   * @param {string} key - Unique identifier for the rate limiter
   */
  removeLimiter(key) {
    this.limiters.delete(key);
  }

  /**
   * Clear all rate limiters
   */
  clearAll() {
    this.limiters.clear();
  }
}

// Create global rate limiter manager
const rateLimiterManager = new RateLimiterManager();

/**
 * Pre-configured rate limiters for common use cases
 */
export const rateLimiters = {
  // Auth operations: 5 requests per minute
  auth: rateLimiterManager.getLimiter('auth', 5, 60000),

  // API calls: 60 requests per minute
  api: rateLimiterManager.getLimiter('api', 60, 60000),

  // Form submissions: 3 requests per minute
  form: rateLimiterManager.getLimiter('form', 3, 60000),

  // File uploads: 2 requests per minute
  upload: rateLimiterManager.getLimiter('upload', 2, 60000),

  // Search operations: 20 requests per minute
  search: rateLimiterManager.getLimiter('search', 20, 60000)
};

/**
 * Check if a request can be made
 * @param {string} key - Rate limiter key
 * @returns {Object} - Result with canMakeRequest boolean and waitTime
 */
export const checkRateLimit = (key = 'api') => {
  const limiter = rateLimiterManager.getLimiter(key);
  return limiter.canMakeRequest();
};

/**
 * Record a request
 * @param {string} key - Rate limiter key
 */
export const recordRequest = (key = 'api') => {
  const limiter = rateLimiterManager.getLimiter(key);
  limiter.recordRequest();
};

/**
 * Execute a function with rate limiting
 * @param {Function} fn - Function to execute
 * @param {string} key - Rate limiter key
 * @returns {Promise<*>} - Result of the function
 */
export const withRateLimit = async (fn, key = 'api') => {
  const limiter = rateLimiterManager.getLimiter(key);
  const check = limiter.canMakeRequest();

  if (!check.canMakeRequest) {
    throw new Error(check.message);
  }

  limiter.recordRequest();
  return await fn();
};

/**
 * Create a custom rate limiter
 * @param {string} key - Unique identifier
 * @param {number} maxRequests - Maximum requests
 * @param {number} timeWindow - Time window in milliseconds
 * @returns {RateLimiter} - New rate limiter instance
 */
export const createRateLimiter = (key, maxRequests, timeWindow) => {
  return rateLimiterManager.getLimiter(key, maxRequests, timeWindow);
};

/**
 * React Hook for rate limiting
 * @param {string} key - Rate limiter key
 * @returns {Object} - Rate limit status and functions
 */
export const useRateLimit = (key = 'api') => {
  const [status, setStatus] = useState({
    canMakeRequest: true,
    waitTime: 0,
    remainingRequests: 0,
    timeUntilReset: 0
  });

  const limiter = rateLimiterManager.getLimiter(key);

  const check = () => {
    const result = limiter.canMakeRequest();
    setStatus({
      canMakeRequest: result.canMakeRequest,
      waitTime: result.waitTime,
      remainingRequests: limiter.getRemainingRequests(),
      timeUntilReset: limiter.getTimeUntilReset()
    });
    return result;
  };

  const record = () => {
    limiter.recordRequest();
    check();
  };

  const reset = () => {
    limiter.reset();
    check();
  };

  return {
    status,
    check,
    record,
    reset
  };
};

export default rateLimiterManager;
