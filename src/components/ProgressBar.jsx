/**
 * Progress Bar Component
 * Displays progress for various operations
 */

import { cn } from '../lib/utils';

const ProgressBar = ({
  progress = 0,
  label,
  showPercentage = true,
  color = 'blue',
  size = 'md',
  className = '',
  animated = true
}) => {
  const colorClasses = {
    blue: 'bg-blue-600',
    green: 'bg-green-600',
    red: 'bg-red-600',
    yellow: 'bg-yellow-600',
    purple: 'bg-purple-600'
  };

  const sizeClasses = {
    sm: 'h-1',
    md: 'h-2',
    lg: 'h-3'
  };

  const bgColor = colorClasses[color] || colorClasses.blue;
  const heightClass = sizeClasses[size] || sizeClasses.md;

  return (
    <div className={`w-full ${className}`}>
      {(label || showPercentage) && (
        <div className="flex justify-between mb-1">
          {label && (
            <span className="text-sm font-medium text-gray-700 dark:text-gray-300">
              {label}
            </span>
          )}
          {showPercentage && (
            <span className="text-sm font-semibold text-gray-900 dark:text-gray-100">
              {Math.round(progress)}%
            </span>
          )}
        </div>
      )}
      <div className={`w-full bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden ${heightClass}`}>
        <div
          className={`
            ${bgColor} ${heightClass}
            transition-all duration-300 ease-out
            ${animated ? 'animate-pulse' : ''}
          `}
          style={{ width: `${Math.min(100, Math.max(0, progress))}%` }}
          role="progressbar"
          aria-valuenow={progress}
          aria-valuemin="0"
          aria-valuemax="100"
          aria-label={label || `Progress: ${Math.round(progress)}%`}
        />
      </div>
    </div>
  );
};

export default ProgressBar;
