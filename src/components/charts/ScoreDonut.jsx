import Box from '@mui/material/Box';
import Typography from '@mui/material/Typography';

/**
 * Compact circular gauge used for the score on the result page.
 * Pure SVG so it stays theme aware and adds no dependency.
 */
const ScoreDonut = ({ value = 0, size = 168, stroke = 14, label = 'Score', caption }) => {
  const safe = Math.max(0, Math.min(100, Number(value) || 0));
  const radius = (size - stroke) / 2;
  const circumference = 2 * Math.PI * radius;
  const offset = circumference * (1 - safe / 100);
  const gradientId = `donut-${label.replace(/\s+/g, '-').toLowerCase()}`;

  return (
    <Box
      role="img"
      aria-label={`${label}: ${safe.toFixed(1)} percent`}
      sx={{ position: 'relative', width: size, height: size, flexShrink: 0 }}
    >
      <svg width={size} height={size} viewBox={`0 0 ${size} ${size}`}>
        <defs>
          <linearGradient id={gradientId} x1="0%" y1="0%" x2="100%" y2="100%">
            <stop offset="0%" stopColor="#4F46E5" />
            <stop offset="60%" stopColor="#7C3AED" />
            <stop offset="100%" stopColor="#2563EB" />
          </linearGradient>
        </defs>
        <circle
          cx={size / 2}
          cy={size / 2}
          r={radius}
          fill="none"
          stroke="currentColor"
          strokeOpacity={0.12}
          strokeWidth={stroke}
        />
        <circle
          cx={size / 2}
          cy={size / 2}
          r={radius}
          fill="none"
          stroke={`url(#${gradientId})`}
          strokeWidth={stroke}
          strokeLinecap="round"
          strokeDasharray={circumference}
          strokeDashoffset={offset}
          transform={`rotate(-90 ${size / 2} ${size / 2})`}
          style={{ transition: 'stroke-dashoffset 900ms cubic-bezier(0.22, 1, 0.36, 1)' }}
        />
      </svg>
      <Box
        sx={{
          position: 'absolute',
          inset: 0,
          display: 'grid',
          placeContent: 'center',
          textAlign: 'center',
        }}
      >
        <Typography
          sx={{
            fontFamily: '"Poppins", sans-serif',
            fontWeight: 800,
            fontSize: size * 0.24,
            lineHeight: 1,
            color: 'text.primary',
          }}
        >
          {safe.toFixed(1)}%
        </Typography>
        <Typography variant="caption" color="text.secondary" sx={{ mt: 0.5 }}>
          {caption || label}
        </Typography>
      </Box>
    </Box>
  );
};

export default ScoreDonut;
