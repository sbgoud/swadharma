import Box from '@mui/material/Box';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import LinearProgress from '@mui/material/LinearProgress';

/**
 * Horizontal comparison bars — used for subject-wise accuracy.
 */
const SubjectBars = ({ data = [], valueLabel = 'Accuracy' }) => {
  if (!data.length) return null;
  const max = Math.max(...data.map((row) => row.value || 0), 1);

  return (
    <Stack spacing={2.25}>
      {data.map((row) => {
        const width = Math.max(2, ((row.value || 0) / max) * 100);
        return (
          <Box key={row.label}>
            <Stack direction="row" sx={{ justifyContent: 'space-between', alignItems: 'baseline', mb: 0.75 }}>
              <Typography variant="body2" sx={{ fontWeight: 600, color: 'text.primary' }} noWrap>
                {row.label}
              </Typography>
              <Typography variant="caption" color="text.secondary" sx={{ fontWeight: 600 }}>
                {row.caption ?? `${Math.round(row.value || 0)}%`}
              </Typography>
            </Stack>
            <LinearProgress
              variant="determinate"
              value={width}
              aria-label={`${row.label}: ${valueLabel} ${Math.round(row.value || 0)} percent`}
              sx={{
                height: 10,
                borderRadius: 999,
                bgcolor: 'action.hover',
                '& .MuiLinearProgress-bar': {
                  borderRadius: 999,
                  background: row.color || 'linear-gradient(90deg, #4F46E5 0%, #7C3AED 100%)',
                },
              }}
            />
          </Box>
        );
      })}
    </Stack>
  );
};

export default SubjectBars;
