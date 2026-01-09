import { cn } from '../lib/utils';

const Card = ({
  children,
  className = '',
  hover = true,
  padding = true,
  bordered = true,
  ...props
}) => {
  return (
    <div
      className={cn(
        "bg-white rounded-lg overflow-hidden",
        bordered ? "border border-gray-100" : "",
        padding ? 'p-6' : '',
        hover ? 'card-hover' : 'shadow-sm',
        className
      )}
      {...props}
    >
      {children}
    </div>
  );
};

export default Card;