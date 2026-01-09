import { cn } from '../lib/utils';

const Card = ({
  children,
  className = '',
  hover = false,
  padding = true,
  ...props
}) => {
  return (
    <div
      className={cn(
        "glass-card rounded-xl shadow-lg border border-white/5",
        padding ? 'p-6' : '',
        hover ? 'hover:border-blue-500/30 hover:shadow-blue-900/20 transition-all duration-300' : '',
        className
      )}
      {...props}
    >
      {children}
    </div>
  );
};

export default Card;