/**
 * Skeleton Loader Components
 * Provides loading placeholders for various UI elements
 */

export const SkeletonText = ({ className = '', lines = 1 }) => {
  return (
    <div className={`space-y-2 ${className}`}>
      {Array.from({ length: lines }).map((_, i) => (
        <div
          key={i}
          className="h-4 bg-gray-200 rounded animate-pulse"
          style={{
            width: i === lines - 1 ? '60%' : '100%'
          }}
        />
      ))}
    </div>
  );
};

export const SkeletonCard = ({ className = '' }) => {
  return (
    <div className={`bg-white rounded-lg shadow-sm border border-gray-200 p-4 ${className}`}>
      <div className="h-48 bg-gray-200 rounded-lg mb-4 animate-pulse" />
      <div className="h-6 bg-gray-200 rounded w-3/4 mb-2 animate-pulse" />
      <div className="h-4 bg-gray-200 rounded w-1/2 animate-pulse" />
    </div>
  );
};

export const SkeletonCourseCard = ({ className = '' }) => {
  return (
    <div className={`bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden ${className}`}>
      <div className="h-48 bg-gray-200 animate-pulse" />
      <div className="p-6">
        <div className="h-6 bg-gray-200 rounded w-3/4 mb-3 animate-pulse" />
        <div className="h-4 bg-gray-200 rounded w-1/2 mb-4 animate-pulse" />
        <div className="space-y-2 mb-6">
          <div className="h-3 bg-gray-200 rounded animate-pulse" />
          <div className="h-3 bg-gray-200 rounded w-5/6 animate-pulse" />
          <div className="h-3 bg-gray-200 rounded w-4/6 animate-pulse" />
        </div>
        <div className="h-10 bg-gray-200 rounded animate-pulse" />
      </div>
    </div>
  );
};

export const SkeletonTestCard = ({ className = '' }) => {
  return (
    <div className={`bg-white rounded-lg shadow-sm border border-gray-200 p-6 ${className}`}>
      <div className="flex items-start justify-between mb-4">
        <div className="h-12 w-12 bg-gray-200 rounded-lg animate-pulse" />
        <div className="h-6 w-20 bg-gray-200 rounded-full animate-pulse" />
      </div>
      <div className="h-6 bg-gray-200 rounded w-3/4 mb-4 animate-pulse" />
      <div className="space-y-2 mb-6">
        <div className="h-4 bg-gray-200 rounded w-full animate-pulse" />
        <div className="h-4 bg-gray-200 rounded w-5/6 animate-pulse" />
        <div className="h-4 bg-gray-200 rounded w-4/6 animate-pulse" />
      </div>
      <div className="h-10 bg-gray-200 rounded animate-pulse" />
    </div>
  );
};

export const SkeletonAvatar = ({ size = 'md', className = '' }) => {
  const sizeClasses = {
    sm: 'h-8 w-8',
    md: 'h-12 w-12',
    lg: 'h-16 w-16',
    xl: 'h-24 w-24'
  };

  return (
    <div
      className={`rounded-full bg-gray-200 animate-pulse ${sizeClasses[size]} ${className}`}
    />
  );
};

export const SkeletonButton = ({ className = '' }) => {
  return (
    <div
      className={`h-10 bg-gray-200 rounded animate-pulse ${className}`}
      style={{ width: '120px' }}
    />
  );
};

export const SkeletonInput = ({ className = '' }) => {
  return (
    <div className={`h-12 bg-gray-200 rounded animate-pulse ${className}`} />
  );
};

export const SkeletonTable = ({ rows = 5, columns = 4, className = '' }) => {
  return (
    <div className={`w-full ${className}`}>
      <div className="border-b border-gray-200 pb-4 mb-4">
        <div className="flex gap-4">
          {Array.from({ length: columns }).map((_, i) => (
            <div
              key={i}
              className="h-6 bg-gray-200 rounded animate-pulse"
              style={{ flex: 1 }}
            />
          ))}
        </div>
      </div>
      {Array.from({ length: rows }).map((_, rowIndex) => (
        <div key={rowIndex} className="flex gap-4 py-3 border-b border-gray-100">
          {Array.from({ length: columns }).map((_, colIndex) => (
            <div
              key={colIndex}
              className="h-4 bg-gray-200 rounded animate-pulse"
              style={{ flex: 1 }}
            />
          ))}
        </div>
      ))}
    </div>
  );
};

export const SkeletonList = ({ items = 5, className = '' }) => {
  return (
    <div className={`space-y-4 ${className}`}>
      {Array.from({ length: items }).map((_, i) => (
        <div key={i} className="flex items-center space-x-4">
          <div className="h-12 w-12 bg-gray-200 rounded-lg animate-pulse" />
          <div className="flex-1 space-y-2">
            <div className="h-4 bg-gray-200 rounded w-3/4 animate-pulse" />
            <div className="h-3 bg-gray-200 rounded w-1/2 animate-pulse" />
          </div>
        </div>
      ))}
    </div>
  );
};

export const SkeletonProfile = ({ className = '' }) => {
  return (
    <div className={`bg-white rounded-lg shadow-sm border border-gray-200 p-6 ${className}`}>
      <div className="flex items-center space-x-4 mb-6">
        <div className="h-20 w-20 bg-gray-200 rounded-full animate-pulse" />
        <div className="flex-1 space-y-2">
          <div className="h-6 bg-gray-200 rounded w-1/2 animate-pulse" />
          <div className="h-4 bg-gray-200 rounded w-3/4 animate-pulse" />
        </div>
      </div>
      <div className="space-y-4">
        {Array.from({ length: 4 }).map((_, i) => (
          <div key={i}>
            <div className="h-4 bg-gray-200 rounded w-1/4 mb-2 animate-pulse" />
            <div className="h-10 bg-gray-200 rounded animate-pulse" />
          </div>
        ))}
      </div>
    </div>
  );
};

export default {
  SkeletonText,
  SkeletonCard,
  SkeletonCourseCard,
  SkeletonTestCard,
  SkeletonAvatar,
  SkeletonButton,
  SkeletonInput,
  SkeletonTable,
  SkeletonList,
  SkeletonProfile
};
