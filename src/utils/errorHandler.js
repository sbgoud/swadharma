/**
 * Centralized Error Handler
 * Provides consistent error handling across the application
 */

class ErrorHandler {
  constructor() {
    this.errorLog = [];
    this.maxLogSize = 100;
  }

  /**
   * Handle API errors with user-friendly messages
   * @param {Error} error - The error object
   * @param {string} context - Context where error occurred
   * @param {Object} options - Additional options
   * @returns {Object} - Formatted error response
   */
  handle(error, context = 'Unknown', options = {}) {
    const { showToast = true, logToConsole = true } = options;

    // Log to console
    if (logToConsole) {
      console.error(`[${context}] Error:`, error);
    }

    // Add to error log
    this.addToLog(error, context);

    // Format error message
    const formattedError = this.formatError(error);

    // Show toast notification (if enabled and toast is available)
    if (showToast && typeof window !== 'undefined' && window.toast) {
      window.toast.error(formattedError.userMessage);
    }

    return {
      success: false,
      error: formattedError,
      context,
      timestamp: new Date().toISOString()
    };
  }

  /**
   * Format error into user-friendly message
   * @param {Error} error - The error object
   * @returns {Object} - Formatted error with user and dev messages
   */
  formatError(error) {
    // Supabase specific errors
    if (error?.code) {
      return this.formatSupabaseError(error);
    }

    // Network errors
    if (error?.name === 'TypeError' && error?.message?.includes('fetch')) {
      return {
        userMessage: 'Network error. Please check your internet connection.',
        devMessage: error.message,
        code: 'NETWORK_ERROR'
      };
    }

    // Validation errors
    if (error?.name === 'ValidationError') {
      return {
        userMessage: error.message || 'Invalid input provided.',
        devMessage: error.message,
        code: 'VALIDATION_ERROR'
      };
    }

    // Default error
    return {
      userMessage: 'An unexpected error occurred. Please try again.',
      devMessage: error?.message || 'Unknown error',
      code: 'UNKNOWN_ERROR'
    };
  }

  /**
   * Format Supabase-specific errors
   * @param {Object} error - Supabase error object
   * @returns {Object} - Formatted error
   */
  formatSupabaseError(error) {
    const errorMessages = {
      '23505': 'This record already exists.',
      '23503': 'Referenced record does not exist.',
      '23502': 'Required field is missing.',
      'PGRST116': 'Resource not found.',
      'auth/user-not-found': 'User not found.',
      'auth/wrong-password': 'Incorrect password.',
      'auth/email-already-in-use': 'Email already registered.',
      'auth/invalid-email': 'Invalid email address.',
      'auth/weak-password': 'Password is too weak.',
      'auth/too-many-requests': 'Too many attempts. Please try again later.'
    };

    const userMessage = errorMessages[error.code] || 'An error occurred with the database.';

    return {
      userMessage,
      devMessage: error.message,
      code: error.code,
      details: error.details
    };
  }

  /**
   * Add error to internal log
   * @param {Error} error - The error object
   * @param {string} context - Context where error occurred
   */
  addToLog(error, context) {
    this.errorLog.push({
      error: error?.message || 'Unknown error',
      context,
      timestamp: new Date().toISOString(),
      stack: error?.stack
    });

    // Keep log size manageable
    if (this.errorLog.length > this.maxLogSize) {
      this.errorLog.shift();
    }
  }

  /**
   * Get error log
   * @param {number} limit - Number of recent errors to return
   * @returns {Array} - Array of logged errors
   */
  getErrorLog(limit = 10) {
    return this.errorLog.slice(-limit);
  }

  /**
   * Clear error log
   */
  clearErrorLog() {
    this.errorLog = [];
  }

  /**
   * Create a custom error
   * @param {string} message - Error message
   * @param {string} code - Error code
   * @returns {Error} - Custom error object
   */
  createError(message, code = 'CUSTOM_ERROR') {
    const error = new Error(message);
    error.code = code;
    return error;
  }
}

// Export singleton instance
export const errorHandler = new ErrorHandler();

// Export convenience functions
export const handleError = (error, context, options) => {
  return errorHandler.handle(error, context, options);
};

export const createError = (message, code) => {
  return errorHandler.createError(message, code);
};

export default errorHandler;
