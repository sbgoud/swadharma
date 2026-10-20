import { useId } from 'react';
import Box from '@mui/material/Box';
import Typography from '@mui/material/Typography';

/**
 * Lightweight SVG trend line (score over time). No chart library needed —
 * the bundle stays small and the colours follow the theme.
 */
const TrendChart = ({ data = [], height = 190, unit = '%' }) => {
  const gradientId = useId();
  if (!data.length) return null;

  const width = 640;
  const padding = { top: 16, right: 16, bottom: 26, left: 34 };
  const innerW = width - padding.left - padding.right;
  const innerH = height - padding.top - padding.bottom;

  const values = data.map((point) => Number(point.value) || 0);
  const max = Math.max(100, ...values);
  const min = Math.max(0, Math.min(...values) - 10);
  const span = max - min || 1;

  const x = (index) =>
    padding.left + (data.length === 1 ? innerW / 2 : (index / (data.length - 1)) * innerW);
  const y = (value) => padding.top + innerH - ((value - min) / span) * innerH;

  const points = data.map((point, index) => `${x(index)},${y(Number(point.value) || 0)}`).join(' ');
  const area = `${padding.left},${padding.top + innerH} ${points} ${
    padding.left + innerW
  },${padding.top + innerH}`;

  const ticks = [min, min + span / 2, max];

  return (
    <Box sx={{ width: '100%' }}>
      <svg
        viewBox={`0 0 ${width} ${height}`}
        width="100%"
        height={height}
        role="img"
        aria-label="Score trend across recent attempts"
        preserveAspectRatio="none"
        style={{ overflow: 'visible' }}
      >
        <defs>
          <linearGradient id={gradientId} x1="0" y1="0" x2="0" y2="1">
            <stop offset="0%" stopColor="#4F46E5" stopOpacity="0.28" />
            <stop offset="100%" stopColor="#4F46E5" stopOpacity="0" />
          </linearGradient>
        </defs>

        {ticks.map((tick) => (
          <g key={tick}>
            <line
              x1={padding.left}
              x2={padding.left + innerW}
              y1={y(tick)}
              y2={y(tick)}
              stroke="currentColor"
              strokeOpacity={0.12}
              strokeDasharray="4 6"
            />
            <text
              x={padding.left - 8}
              y={y(tick) + 4}
              textAnchor="end"
              fontSize="11"
              fill="currentColor"
              fillOpacity={0.55}
            >
              {Math.round(tick)}
            </text>
          </g>
        ))}

        <polygon points={area} fill={`url(#${gradientId})`} />
        <polyline
          points={points}
          fill="none"
          stroke="#4F46E5"
          strokeWidth="2.5"
          strokeLinecap="round"
          strokeLinejoin="round"
        />

        {data.map((point, index) => (
          <g key={point.label ?? index}>
            <circle cx={x(index)} cy={y(Number(point.value) || 0)} r="4" fill="#fff" stroke="#4F46E5" strokeWidth="2.5">
              <title>{`${point.label}: ${point.value}${unit}`}</title>
            </circle>
            {data.length <= 8 && (
              <text
                x={x(index)}
                y={height - 6}
                textAnchor="middle"
                fontSize="11"
                fill="currentColor"
                fillOpacity={0.55}
              >
                {point.label}
              </text>
            )}
          </g>
        ))}
      </svg>
      <Typography variant="caption" color="text.secondary" sx={{ display: 'block', mt: 1 }}>
        Percentage scored in each submitted paper, newest on the right.
      </Typography>
    </Box>
  );
};

export default TrendChart;
