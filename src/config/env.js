/**
 * Environment Variables Validation
 * Validates and manages environment variables
 */

/**
 * Required environment variables
 */
const REQUIRED_ENV_VARS = [
  'VITE_SUPABASE_URL',
  'VITE_SUPABASE_ANON_KEY'
];

/**
 * Optional environment variables with defaults
 */
const OPTIONAL_ENV_VARS = {
  'VITE_PEXELS_API_KEY': '',
  'VITE_APP_NAME': 'Swadharma IAS Academy',
  'VITE_APP_VERSION': '1.0.0',
  'VITE_API_TIMEOUT': '30000',
  'VITE_MAX_RETRIES': '3'
};

/**
 * Environment configuration
 */
let envConfig = null;

/**
 * Validate environment variables
 * @throws {Error} - If required environment variables are missing
 */
export const validateEnv = () => {
  const missingVars = [];
  const warnings = [];

  // Check required variables
  REQUIRED_ENV_VARS.forEach(varName => {
    if (!import.meta.env[varName]) {
      missingVars.push(varName);
    }
  });

  // Throw error if required variables are missing
  if (missingVars.length > 0) {
    throw new Error(
      `Missing required environment variables: ${missingVars.join(', ')}\n` +
      'Please check your .env file and ensure all required variables are set.'
    );
  }

  // Check optional variables and warn if missing
  Object.keys(OPTIONAL_ENV_VARS).forEach(varName => {
    if (!import.meta.env[varName]) {
      warnings.push(`Optional environment variable not set: ${varName}`);
    }
  });

  // Log warnings
  if (warnings.length > 0 && import.meta.env.DEV) {
    console.warn('Environment warnings:', warnings);
  }

  return true;
};

/**
 * Get environment configuration
 * @returns {Object} - Environment configuration object
 */
export const getEnvConfig = () => {
  if (envConfig) {
    return envConfig;
  }

  // Validate environment before returning config
  validateEnv();

  // Build configuration object
  envConfig = {
    // Supabase configuration
    supabase: {
      url: import.meta.env.VITE_SUPABASE_URL,
      anonKey: import.meta.env.VITE_SUPABASE_ANON_KEY
    },

    // Pexels API
    pexels: {
      apiKey: import.meta.env.VITE_PEXELS_API_KEY || OPTIONAL_ENV_VARS['VITE_PEXELS_API_KEY']
    },

    // App configuration
    app: {
      name: import.meta.env.VITE_APP_NAME || OPTIONAL_ENV_VARS['VITE_APP_NAME'],
      version: import.meta.env.VITE_APP_VERSION || OPTIONAL_ENV_VARS['VITE_APP_VERSION'],
      isDevelopment: import.meta.env.DEV,
      isProduction: import.meta.env.PROD,
      mode: import.meta.env.MODE
    },

    // API configuration
    api: {
      timeout: parseInt(import.meta.env.VITE_API_TIMEOUT || OPTIONAL_ENV_VARS['VITE_API_TIMEOUT'], 10),
      maxRetries: parseInt(import.meta.env.VITE_MAX_RETRIES || OPTIONAL_ENV_VARS['VITE_MAX_RETRIES'], 10)
    }
  };

  return envConfig;
};

/**
 * Get a specific environment variable
 * @param {string} varName - Name of the environment variable
 * @param {*} defaultValue - Default value if variable is not set
 * @returns {*} - Environment variable value or default
 */
export const getEnvVar = (varName, defaultValue = null) => {
  const value = import.meta.env[varName];
  return value !== undefined ? value : defaultValue;
};

/**
 * Check if running in development mode
 * @returns {boolean} - True if in development mode
 */
export const isDevelopment = () => {
  return import.meta.env.DEV;
};

/**
 * Check if running in production mode
 * @returns {boolean} - True if in production mode
 */
export const isProduction = () => {
  return import.meta.env.PROD;
};

/**
 * Get Supabase URL
 * @returns {string} - Supabase URL
 */
export const getSupabaseUrl = () => {
  return getEnvConfig().supabase.url;
};

/**
 * Get Supabase Anon Key
 * @returns {string} - Supabase Anon Key
 */
export const getSupabaseAnonKey = () => {
  return getEnvConfig().supabase.anonKey;
};

/**
 * Get Pexels API Key
 * @returns {string} - Pexels API Key
 */
export const getPexelsApiKey = () => {
  return getEnvConfig().pexels.apiKey;
};

/**
 * Validate environment on module load
 */
try {
  validateEnv();
  console.log('✓ Environment variables validated successfully');
} catch (error) {
  console.error('✗ Environment validation failed:', error.message);
  // In development, show a more helpful error
  if (isDevelopment()) {
    console.error('\nPlease create a .env file with the following variables:');
    REQUIRED_ENV_VARS.forEach(varName => {
      console.error(`  ${varName}=your_value_here`);
    });
  }
  // Don't throw in production to allow app to render error UI
  if (!isDevelopment()) {
    throw error;
  }
}

export default getEnvConfig;
