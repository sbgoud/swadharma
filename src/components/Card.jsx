import { cn } from '../lib/utils';

const Card = ({
  children,
  className = '',
  noPadding = false,
  hover = true,
  ...props
}) => {
  return (
    <div
      className={cn(
        "bg-white rounded-xl border border-gray-200 shadow-sm overflow-hidden",
        !noPadding ? "p-6" : "",
        hover ? "transition-shadow duration-300 hover:shadow-lg" : "",
        className
      )}
      {...props}
    >
      {children}
    </div>
  );
};

export default Card;