/**
 * Form Validation Utility
 * Provides validation functions for form inputs
 */

/**
 * Validate email address
 * @param {string} email - Email to validate
 * @returns {Object} - Validation result
 */
export const validateEmail = (email) => {
  if (!email || typeof email !== 'string') {
    return {
      isValid: false,
      error: 'Email is required'
    };
  }

  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email)) {
    return {
      isValid: false,
      error: 'Please enter a valid email address'
    };
  }

  return {
    isValid: true,
    error: null
  };
};

/**
 * Validate password
 * @param {string} password - Password to validate
 * @param {Object} options - Validation options
 * @returns {Object} - Validation result
 */
export const validatePassword = (password, options = {}) => {
  const {
    minLength = 6,
    requireUppercase = false,
    requireLowercase = false,
    requireNumber = false,
    requireSpecialChar = false
  } = options;

  if (!password || typeof password !== 'string') {
    return {
      isValid: false,
      error: 'Password is required'
    };
  }

  const errors = [];

  if (password.length < minLength) {
    errors.push(`Password must be at least ${minLength} characters`);
  }

  if (requireUppercase && !/[A-Z]/.test(password)) {
    errors.push('Password must contain at least one uppercase letter');
  }

  if (requireLowercase && !/[a-z]/.test(password)) {
    errors.push('Password must contain at least one lowercase letter');
  }

  if (requireNumber && !/\d/.test(password)) {
    errors.push('Password must contain at least one number');
  }

  if (requireSpecialChar && !/[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/.test(password)) {
    errors.push('Password must contain at least one special character');
  }

  return {
    isValid: errors.length === 0,
    error: errors.length > 0 ? errors.join('. ') : null,
    errors
  };
};

/**
 * Validate phone number
 * @param {string} phone - Phone number to validate
 * @returns {Object} - Validation result
 */
export const validatePhone = (phone) => {
  if (!phone || typeof phone !== 'string') {
    return {
      isValid: false,
      error: 'Phone number is required'
    };
  }

  // Remove all non-digit characters
  const digits = phone.replace(/\D/g, '');

  if (digits.length < 10 || digits.length > 15) {
    return {
      isValid: false,
      error: 'Please enter a valid phone number (10-15 digits)'
    };
  }

  return {
    isValid: true,
    error: null
  };
};

/**
 * Validate name
 * @param {string} name - Name to validate
 * @param {Object} options - Validation options
 * @returns {Object} - Validation result
 */
export const validateName = (name, options = {}) => {
  const {
    minLength = 2,
    maxLength = 100,
    fieldName = 'Name'
  } = options;

  if (!name || typeof name !== 'string') {
    return {
      isValid: false,
      error: `${fieldName} is required`
    };
  }

  const trimmedName = name.trim();

  if (trimmedName.length < minLength) {
    return {
      isValid: false,
      error: `${fieldName} must be at least ${minLength} characters`
    };
  }

  if (trimmedName.length > maxLength) {
    return {
      isValid: false,
      error: `${fieldName} must be at most ${maxLength} characters`
    };
  }

  return {
    isValid: true,
    error: null
  };
};

/**
 * Validate text field
 * @param {string} text - Text to validate
 * @param {Object} options - Validation options
 * @returns {Object} - Validation result
 */
export const validateText = (text, options = {}) => {
  const {
    minLength = 0,
    maxLength = 500,
    required = false,
    fieldName = 'Field'
  } = options;

  if (!text || typeof text !== 'string') {
    if (required) {
      return {
        isValid: false,
        error: `${fieldName} is required`
      };
    }
    return {
      isValid: true,
      error: null
    };
  }

  const trimmedText = text.trim();

  if (trimmedText.length < minLength) {
    return {
      isValid: false,
      error: `${fieldName} must be at least ${minLength} characters`
    };
  }

  if (trimmedText.length > maxLength) {
    return {
      isValid: false,
      error: `${fieldName} must be at most ${maxLength} characters`
    };
  }

  return {
    isValid: true,
      error: null
  };
};

/**
 * Validate date
 * @param {string} date - Date string to validate
 * @returns {Object} - Validation result
 */
export const validateDate = (date) => {
  if (!date || typeof date !== 'string') {
    return {
      isValid: false,
      error: 'Date is required'
    };
  }

  const parsedDate = new Date(date);

  if (isNaN(parsedDate.getTime())) {
    return {
      isValid: false,
      error: 'Please enter a valid date'
    };
  }

  // Check if date is not in the future
  if (parsedDate > new Date()) {
    return {
      isValid: false,
      error: 'Date cannot be in the future'
    };
  }

  return {
    isValid: true,
    error: null
  };
};

/**
 * Validate pincode
 * @param {string} pincode - Pincode to validate
 * @returns {Object} - Validation result
 */
export const validatePincode = (pincode) => {
  if (!pincode || typeof pincode !== 'string') {
    return {
      isValid: false,
      error: 'Pincode is required'
    };
  }

  const digits = pincode.replace(/\D/g, '');

  if (digits.length < 6 || digits.length > 10) {
    return {
      isValid: false,
      error: 'Please enter a valid pincode (6-10 digits)'
    };
  }

  return {
    isValid: true,
    error: null
  };
};

/**
 * Validate URL
 * @param {string} url - URL to validate
 * @returns {Object} - Validation result
 */
export const validateUrl = (url) => {
  if (!url || typeof url !== 'string') {
    return {
      isValid: false,
      error: 'URL is required'
    };
  }

  try {
    new URL(url);
    return {
      isValid: true,
      error: null
    };
  } catch {
    return {
      isValid: false,
      error: 'Please enter a valid URL'
    };
  }
};

/**
 * Validate form against schema
 * @param {Object} formData - Form data to validate
 * @param {Object} schema - Validation schema
 * @returns {Object} - Validation result
 */
export const validateForm = (formData, schema) => {
  const errors = {};
  let isValid = true;

  for (const field in schema) {
    const rules = schema[field];
    const value = formData[field];

    // Check if field is required
    if (rules.required && (value === undefined || value === null || value === '')) {
      errors[field] = rules.errorMessage || `${field} is required`;
      isValid = false;
      continue;
    }

    // Skip validation if field is not required and not provided
    if (!rules.required && (value === undefined || value === null || value === '')) {
      continue;
    }

    // Type-specific validation
    let validationResult;

    switch (rules.type) {
      case 'email':
        validationResult = validateEmail(value);
        break;
      case 'password':
        validationResult = validatePassword(value, rules.options);
        break;
      case 'phone':
        validationResult = validatePhone(value);
        break;
      case 'name':
        validationResult = validateName(value, rules.options);
        break;
      case 'text':
        validationResult = validateText(value, { ...rules.options, required: rules.required });
        break;
      case 'date':
        validationResult = validateDate(value);
        break;
      case 'pincode':
        validationResult = validatePincode(value);
        break;
      case 'url':
        validationResult = validateUrl(value);
        break;
      default:
        validationResult = { isValid: true, error: null };
    }

    if (!validationResult.isValid) {
      errors[field] = validationResult.error;
      isValid = false;
    }
  }

  return {
    isValid,
    errors
  };
};

/**
 * Login form schema
 */
export const loginSchema = {
  email: {
    type: 'email',
    required: true
  },
  password: {
    type: 'password',
    required: true
  }
};

/**
 * Signup form schema
 */
export const signupSchema = {
  fullName: {
    type: 'name',
    required: true,
    options: {
      minLength: 2,
      maxLength: 100,
      fieldName: 'Full name'
    }
  },
  email: {
    type: 'email',
    required: true
  },
  password: {
    type: 'password',
    required: true,
    options: {
      minLength: 6
    }
  },
  confirmPassword: {
    type: 'text',
    required: true,
    customValidate: (value, formData) => {
      if (value !== formData.password) {
        return 'Passwords do not match';
      }
      return null;
    }
  },
  dateOfBirth: {
    type: 'date',
    required: true
  },
  address: {
    type: 'text',
    required: true,
    options: {
      minLength: 5,
      maxLength: 500,
      fieldName: 'Address'
    }
  },
  phoneNumber: {
    type: 'phone',
    required: true
  }
};

/**
 * Profile form schema
 */
export const profileSchema = {
  fullName: {
    type: 'name',
    required: true,
    options: {
      minLength: 2,
      maxLength: 100,
      fieldName: 'Full name'
    }
  },
  email: {
    type: 'email',
    required: true
  },
  phoneNumber: {
    type: 'phone',
    required: false
  },
  address: {
    type: 'text',
    required: false,
    options: {
      maxLength: 500,
      fieldName: 'Address'
    }
  },
  city: {
    type: 'name',
    required: false,
    options: {
      maxLength: 100,
      fieldName: 'City'
    }
  },
  state: {
    type: 'name',
    required: false,
    options: {
      maxLength: 100,
      fieldName: 'State'
    }
  },
  pincode: {
    type: 'pincode',
    required: false
  },
  education: {
    type: 'text',
    required: false,
    options: {
      maxLength: 200,
      fieldName: 'Education'
    }
  }
};

export default {
  validateEmail,
  validatePassword,
  validatePhone,
  validateName,
  validateText,
  validateDate,
  validatePincode,
  validateUrl,
  validateForm,
  loginSchema,
  signupSchema,
  profileSchema
};
