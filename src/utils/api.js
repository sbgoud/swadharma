/**
 * API Response Standardization
 * Provides consistent API response handling across the application
 */

import { handleError } from './errorHandler';

/**
 * Standard API response structure
 * @typedef {Object} ApiResponse
 * @property {boolean} success - Whether the request was successful
 * @property {*} data - The response data (if successful)
 * @property {Object} error - Error object (if failed)
 * @property {string} message - User-friendly message
 * @property {string} timestamp - ISO timestamp of response
 */

/**
 * Wrapper for Supabase API calls
 * @param {Promise} promise - Supabase promise
 * @param {Object} options - Additional options
 * @returns {Promise<ApiResponse>} - Standardized API response
 */
export const apiCall = async (promise, options = {}) => {
  const {
    errorMessage = 'An error occurred',
    context = 'API Call',
    showToast = true,
    returnNullOnError = false
  } = options;

  try {
    const { data, error } = await promise;

    if (error) {
      throw error;
    }

    return {
      success: true,
      data,
      message: 'Success',
      timestamp: new Date().toISOString()
    };
  } catch (error) {
    const handledError = handleError(error, context, { showToast });

    if (returnNullOnError) {
      return {
        success: false,
        data: null,
        error: handledError.error,
        message: handledError.error.userMessage,
        timestamp: new Date().toISOString()
      };
    }

    throw handledError;
  }
};

/**
 * Wrapper for Supabase single record queries
 * @param {Promise} promise - Supabase promise
 * @param {Object} options - Additional options
 * @returns {Promise<ApiResponse>} - Standardized API response
 */
export const apiSingle = async (promise, options = {}) => {
  const {
    errorMessage = 'Record not found',
    context = 'Single Query',
    showToast = true
  } = options;

  try {
    const { data, error } = await promise;

    if (error) {
      throw error;
    }

    if (!data) {
      const notFoundError = new Error(errorMessage);
      notFoundError.code = 'PGRST116';
      throw notFoundError;
    }

    return {
      success: true,
      data,
      message: 'Success',
      timestamp: new Date().toISOString()
    };
  } catch (error) {
    const handledError = handleError(error, context, { showToast });
    throw handledError;
  }
};

/**
 * Wrapper for Supabase insert operations
 * @param {Promise} promise - Supabase promise
 * @param {Object} options - Additional options
 * @returns {Promise<ApiResponse>} - Standardized API response
 */
export const apiInsert = async (promise, options = {}) => {
  const {
    errorMessage = 'Failed to create record',
    context = 'Insert Operation',
    showToast = true
  } = options;

  try {
    const { data, error } = await promise;

    if (error) {
      throw error;
    }

    return {
      success: true,
      data,
      message: 'Record created successfully',
      timestamp: new Date().toISOString()
    };
  } catch (error) {
    const handledError = handleError(error, context, { showToast });
    throw handledError;
  }
};

/**
 * Wrapper for Supabase update operations
 * @param {Promise} promise - Supabase promise
 * @param {Object} options - Additional options
 * @returns {Promise<ApiResponse>} - Standardized API response
 */
export const apiUpdate = async (promise, options = {}) => {
  const {
    errorMessage = 'Failed to update record',
    context = 'Update Operation',
    showToast = true
  } = options;

  try {
    const { data, error } = await promise;

    if (error) {
      throw error;
    }

    return {
      success: true,
      data,
      message: 'Record updated successfully',
      timestamp: new Date().toISOString()
    };
  } catch (error) {
    const handledError = handleError(error, context, { showToast });
    throw handledError;
  }
};

/**
 * Wrapper for Supabase delete operations
 * @param {Promise} promise - Supabase promise
 * @param {Object} options - Additional options
 * @returns {Promise<ApiResponse>} - Standardized API response
 */
export const apiDelete = async (promise, options = {}) => {
  const {
    errorMessage = 'Failed to delete record',
    context = 'Delete Operation',
    showToast = true
  } = options;

  try {
    const { data, error } = await promise;

    if (error) {
      throw error;
    }

    return {
      success: true,
      data,
      message: 'Record deleted successfully',
      timestamp: new Date().toISOString()
    };
  } catch (error) {
    const handledError = handleError(error, context, { showToast });
    throw handledError;
  }
};

/**
 * Batch API calls with Promise.all
 * @param {Array<Promise>} promises - Array of Supabase promises
 * @param {Object} options - Additional options
 * @returns {Promise<ApiResponse>} - Standardized API response
 */
export const apiBatch = async (promises, options = {}) => {
  const {
    errorMessage = 'One or more operations failed',
    context = 'Batch Operation',
    showToast = true
  } = options;

  try {
    const results = await Promise.all(promises);

    return {
      success: true,
      data: results,
      message: 'All operations completed successfully',
      timestamp: new Date().toISOString()
    };
  } catch (error) {
    const handledError = handleError(error, context, { showToast });
    throw handledError;
  }
};

/**
 * Paginated API call wrapper
 * @param {Function} fetchFunction - Function to fetch data
 * @param {Object} params - Query parameters
 * @param {Object} options - Additional options
 * @returns {Promise<ApiResponse>} - Standardized API response with pagination
 */
export const apiPaginated = async (fetchFunction, params = {}, options = {}) => {
  const {
    errorMessage = 'Failed to fetch data',
    context = 'Paginated Query',
    showToast = true
  } = options;

  try {
    const { data, error, count } = await fetchFunction(params);

    if (error) {
      throw error;
    }

    return {
      success: true,
      data,
      pagination: {
        total: count || 0,
        page: params.page || 1,
        limit: params.limit || 10
      },
      message: 'Success',
      timestamp: new Date().toISOString()
    };
  } catch (error) {
    const handledError = handleError(error, context, { showToast });
    throw handledError;
  }
};

/**
 * Create a success response
 * @param {*} data - Response data
 * @param {string} message - Success message
 * @returns {ApiResponse} - Standardized success response
 */
export const successResponse = (data, message = 'Success') => {
  return {
    success: true,
    data,
    message,
    timestamp: new Date().toISOString()
  };
};

/**
 * Create an error response
 * @param {string} message - Error message
 * @param {string} code - Error code
 * @returns {ApiResponse} - Standardized error response
 */
export const errorResponse = (message, code = 'ERROR') => {
  return {
    success: false,
    data: null,
    error: {
      userMessage: message,
      devMessage: message,
      code
    },
    message,
    timestamp: new Date().toISOString()
  };
};

export default {
  apiCall,
  apiSingle,
  apiInsert,
  apiUpdate,
  apiDelete,
  apiBatch,
  apiPaginated,
  successResponse,
  errorResponse
};
