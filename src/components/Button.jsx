import { Link } from 'react-router-dom';
import { cn } from '../lib/utils';
import { Loader2 } from 'lucide-react';

const Button = ({
  children,
  to,
  href,
  variant = 'primary',
  size = 'md',
  className = '',
  disabled = false,
  loading = false,
  onClick,
  type = 'button',
  ...props
}) => {
  const baseStyles = 'inline-flex items-center justify-center font-bold rounded-md transition-all duration-300 focus:outline-none focus:ring-2 focus:ring-offset-2 disabled:opacity-70 disabled:cursor-not-allowed';

  const variants = {
    primary: 'bg-[#003366] text-white hover:bg-[#002244] shadow-md hover:shadow-lg',
    secondary: 'bg-[#D97706] text-white hover:bg-[#B45309] shadow-md hover:shadow-lg',
    outline: 'border-2 border-[#003366] text-[#003366] hover:bg-[#003366] hover:text-white',
    ghost: 'text-[#003366] hover:bg-[#f3f4f6]',
    white: 'bg-white text-[#003366] hover:bg-gray-100 shadow-md',
  };

  const sizes = {
    sm: 'px-4 py-2 text-xs uppercase tracking-wider',
    md: 'px-6 py-3 text-sm uppercase tracking-wider',
    lg: 'px-8 py-4 text-base uppercase tracking-wider',
  };

  const combinedClassName = cn(
    baseStyles,
    variants[variant],
    sizes[size],
    className
  );

  const content = (
    <>
      {loading && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
      {children}
    </>
  );

  if (to) {
    return (
      <Link to={to} className={combinedClassName} {...props}>
        {content}
      </Link>
    );
  }

  if (href) {
    return (
      <a href={href} className={combinedClassName} target="_blank" rel="noopener noreferrer" {...props}>
        {content}
      </a>
    );
  }

  return (
    <button
      type={type}
      className={combinedClassName}
      disabled={disabled || loading}
      onClick={onClick}
      {...props}
    >
      {content}
    </button>
  );
};

export default Button;