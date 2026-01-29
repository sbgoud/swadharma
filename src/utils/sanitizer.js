/**
 * Input Sanitization
 * Sanitizes user inputs to prevent XSS and injection attacks
 */

/**
 * Sanitize a string input
 * @param {string} input - Input string to sanitize
 * @param {Object} options - Sanitization options
 * @returns {string} - Sanitized string
 */
export const sanitizeString = (input, options = {}) => {
  if (typeof input !== 'string') {
    return input;
  }

  const {
    trim = true,
    removeHTML = true,
    removeScripts = true,
    maxLength = null,
    allowedTags = []
  } = options;

  let sanitized = input;

  // Trim whitespace
  if (trim) {
    sanitized = sanitized.trim();
  }

  // Remove HTML tags
  if (removeHTML && allowedTags.length === 0) {
    sanitized = sanitized.replace(/<[^>]*>/g, '');
  } else if (removeHTML && allowedTags.length > 0) {
    // Remove all tags except allowed ones
    const allowedTagsPattern = allowedTags.join('|');
    sanitized = sanitized.replace(
      new RegExp(`<(?!\/?(?:${allowedTagsPattern})\\b)[^>]*>`, 'gi'),
      ''
    );
  }

  // Remove script tags and content
  if (removeScripts) {
    sanitized = sanitized.replace(/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi, '');
  }

  // Remove dangerous attributes
  sanitized = sanitized.replace(
    /on\w+="[^"]*"/gi,
    ''
  );

  // Remove javascript: protocol
  sanitized = sanitized.replace(
    /javascript:/gi,
    ''
  );

  // Remove data: protocol (except for images)
  sanitized = sanitized.replace(
    /data:(?!image\/)/gi,
    ''
  );

  // Limit length
  if (maxLength && sanitized.length > maxLength) {
    sanitized = sanitized.substring(0, maxLength);
  }

  return sanitized;
};

/**
 * Sanitize email address
 * @param {string} email - Email address to sanitize
 * @returns {string} - Sanitized email
 */
export const sanitizeEmail = (email) => {
  if (typeof email !== 'string') {
    return email;
  }

  return email
    .toLowerCase()
    .trim()
    .replace(/[<>]/g, '');
};

/**
 * Sanitize phone number
 * @param {string} phone - Phone number to sanitize
 * @returns {string} - Sanitized phone number
 */
export const sanitizePhone = (phone) => {
  if (typeof phone !== 'string') {
    return phone;
  }

  // Keep only digits, +, -, spaces, and parentheses
  return phone.replace(/[^\d+\-\s()]/g, '').trim();
};

/**
 * Sanitize URL
 * @param {string} url - URL to sanitize
 * @returns {string} - Sanitized URL
 */
export const sanitizeUrl = (url) => {
  if (typeof url !== 'string') {
    return url;
  }

  let sanitized = url.trim();

  // Remove javascript: protocol
  sanitized = sanitized.replace(/^javascript:/i, '');

  // Remove data: protocol (except for images)
  if (!sanitized.startsWith('data:image/')) {
    sanitized = sanitized.replace(/^data:/i, '');
  }

  // Ensure URL starts with http:// or https://
  if (sanitized && !sanitized.match(/^https?:\/\//i)) {
    sanitized = 'https://' + sanitized;
  }

  return sanitized;
};

/**
 * Sanitize object recursively
 * @param {Object} obj - Object to sanitize
 * @param {Object} options - Sanitization options
 * @returns {Object} - Sanitized object
 */
export const sanitizeObject = (obj, options = {}) => {
  if (typeof obj !== 'object' || obj === null) {
    return obj;
  }

  const sanitized = Array.isArray(obj) ? [] : {};

  for (const key in obj) {
    if (obj.hasOwnProperty(key)) {
      const value = obj[key];

      if (typeof value === 'string') {
        sanitized[key] = sanitizeString(value, options);
      } else if (typeof value === 'object') {
        sanitized[key] = sanitizeObject(value, options);
      } else {
        sanitized[key] = value;
      }
    }
  }

  return sanitized;
};

/**
 * Sanitize form data
 * @param {FormData} formData - Form data to sanitize
 * @param {Object} options - Sanitization options
 * @returns {Object} - Sanitized form data object
 */
export const sanitizeFormData = (formData, options = {}) => {
  const sanitized = {};

  for (const [key, value] of formData.entries()) {
    if (typeof value === 'string') {
      sanitized[key] = sanitizeString(value, options);
    } else {
      sanitized[key] = value;
    }
  }

  return sanitized;
};

/**
 * Escape HTML entities
 * @param {string} str - String to escape
 * @returns {string} - Escaped string
 */
export const escapeHtml = (str) => {
  if (typeof str !== 'string') {
    return str;
  }

  const htmlEntities = {
    '&': '&amp;',
    '<': '&lt;',
    '>': '&gt;',
    '"': '&quot;',
    "'": '&#39;',
    '/': '&#x2F;'
  };

  return str.replace(/[&<>"'/]/g, char => htmlEntities[char]);
};

/**
 * Unescape HTML entities
 * @param {string} str - String to unescape
 * @returns {string} - Unescaped string
 */
export const unescapeHtml = (str) => {
  if (typeof str !== 'string') {
    return str;
  }

  const htmlEntities = {
    '&amp;': '&',
    '&lt;': '<',
    '&gt;': '>',
    '&quot;': '"',
    '&#39;': "'",
    '&#x2F;': '/'
  };

  return str.replace(/&(amp|lt|gt|quot|#39|#x2F);/g, entity => htmlEntities[entity]);
};

/**
 * Validate and sanitize input
 * @param {*} input - Input to validate and sanitize
 * @param {Object} schema - Validation schema
 * @returns {Object} - Result with isValid, sanitized data, and errors
 */
export const validateAndSanitize = (input, schema) => {
  const errors = [];
  const sanitized = {};

  for (const field in schema) {
    const rules = schema[field];
    const value = input[field];

    // Check if field is required
    if (rules.required && (value === undefined || value === null || value === '')) {
      errors.push(`${field} is required`);
      continue;
    }

    // Skip validation if field is not required and not provided
    if (!rules.required && (value === undefined || value === null || value === '')) {
      continue;
    }

    // Type validation
    if (rules.type && typeof value !== rules.type) {
      errors.push(`${field} must be of type ${rules.type}`);
      continue;
    }

    // String validation
    if (typeof value === 'string') {
      // Min length
      if (rules.minLength && value.length < rules.minLength) {
        errors.push(`${field} must be at least ${rules.minLength} characters`);
      }

      // Max length
      if (rules.maxLength && value.length > rules.maxLength) {
        errors.push(`${field} must be at most ${rules.maxLength} characters`);
      }

      // Pattern validation
      if (rules.pattern && !rules.pattern.test(value)) {
        errors.push(`${field} is invalid`);
      }

      // Email validation
      if (rules.isEmail && !isValidEmail(value)) {
        errors.push(`${field} must be a valid email`);
      }

      // Phone validation
      if (rules.isPhone && !isValidPhone(value)) {
        errors.push(`${field} must be a valid phone number`);
      }

      // Sanitize string
      sanitized[field] = sanitizeString(value, rules.sanitizeOptions || {});
    } else {
      sanitized[field] = value;
    }
  }

  return {
    isValid: errors.length === 0,
    data: sanitized,
    errors
  };
};

/**
 * Validate email format
 * @param {string} email - Email to validate
 * @returns {boolean} - True if valid
 */
export const isValidEmail = (email) => {
  if (typeof email !== 'string') {
    return false;
  }

  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
};

/**
 * Validate phone number format
 * @param {string} phone - Phone number to validate
 * @returns {boolean} - True if valid
 */
export const isValidPhone = (phone) => {
  if (typeof phone !== 'string') {
    return false;
  }

  // Remove all non-digit characters
  const digits = phone.replace(/\D/g, '');

  // Check if it has 10-15 digits
  return digits.length >= 10 && digits.length <= 15;
};

/**
 * Sanitize and validate user profile data
 * @param {Object} profileData - User profile data
 * @returns {Object} - Result with isValid, sanitized data, and errors
 */
export const sanitizeUserProfile = (profileData) => {
  const schema = {
    full_name: {
      type: 'string',
      required: true,
      minLength: 2,
      maxLength: 100,
      sanitizeOptions: { trim: true, removeHTML: true }
    },
    email: {
      type: 'string',
      required: true,
      isEmail: true,
      sanitizeOptions: { trim: true }
    },
    phone_number: {
      type: 'string',
      required: false,
      isPhone: true,
      sanitizeOptions: { trim: true }
    },
    address: {
      type: 'string',
      required: false,
      maxLength: 500,
      sanitizeOptions: { trim: true, removeHTML: true }
    },
    city: {
      type: 'string',
      required: false,
      maxLength: 100,
      sanitizeOptions: { trim: true, removeHTML: true }
    },
    state: {
      type: 'string',
      required: false,
      maxLength: 100,
      sanitizeOptions: { trim: true, removeHTML: true }
    },
    pincode: {
      type: 'string',
      required: false,
      maxLength: 10,
      sanitizeOptions: { trim: true }
    },
    education: {
      type: 'string',
      required: false,
      maxLength: 200,
      sanitizeOptions: { trim: true, removeHTML: true }
    }
  };

  return validateAndSanitize(profileData, schema);
};

export default {
  sanitizeString,
  sanitizeEmail,
  sanitizePhone,
  sanitizeUrl,
  sanitizeObject,
  sanitizeFormData,
  escapeHtml,
  unescapeHtml,
  validateAndSanitize,
  isValidEmail,
  isValidPhone,
  sanitizeUserProfile
};
