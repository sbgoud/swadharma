import { useState } from 'react';
import Box from '@mui/material/Box';
import Stack from '@mui/material/Stack';

/**
 * A six-cell code entry.
 *
 * The cells are decorative: a single real input sits on top of them, so
 * paste, backspace, arrow keys, autofill of a one-time code and the mobile
 * numeric keypad all behave exactly as the browser intends.
 */
const OtpField = ({
  value = '',
  onChange,
  length = 6,
  id = 'otp',
  autoFocus = false,
  disabled = false,
  ariaLabel = 'One-time code',
  sx,
}) => {
  const [focused, setFocused] = useState(false);
  const digits = value.replace(/\D/g, '').slice(0, length);
  const activeIndex = Math.min(digits.length, length - 1);

  return (
    <Box sx={{ position: 'relative', ...sx }}>
      <Stack direction="row" spacing={{ xs: 1, sm: 1.5 }} aria-hidden="true">
        {Array.from({ length }).map((_, index) => {
          const isFilled = index < digits.length;
          const isActive = focused && index === activeIndex;

          return (
            <Box
              key={index}
              sx={{
                flex: 1,
                minWidth: 0,
                height: { xs: 54, sm: 62 },
                borderRadius: '12px',
                border: '1.5px solid',
                borderColor: isActive ? 'primary.main' : isFilled ? 'primary.main' : 'divider',
                bgcolor: isFilled ? 'rgba(15, 118, 110, 0.07)' : 'background.paper',
                display: 'grid',
                placeItems: 'center',
                transition: 'border-color 160ms ease, background-color 160ms ease',
                boxShadow: isActive ? '0 0 0 4px rgba(15, 118, 110, 0.14)' : 'none',
              }}
            >
              <Box
                component="span"
                className="tabular"
                sx={{
                  fontFamily: '"Fraunces Variable", Georgia, serif',
                  fontSize: { xs: '1.4rem', sm: '1.6rem' },
                  fontWeight: 600,
                  color: isFilled ? 'text.primary' : 'transparent',
                  lineHeight: 1,
                }}
              >
                {digits[index] || '0'}
              </Box>
            </Box>
          );
        })}
      </Stack>

      <Box
        component="input"
        id={id}
        type="text"
        inputMode="numeric"
        pattern="[0-9]*"
        maxLength={length}
        autoComplete="one-time-code"
        autoFocus={autoFocus}
        disabled={disabled}
        aria-label={ariaLabel}
        value={digits}
        onFocus={() => setFocused(true)}
        onBlur={() => setFocused(false)}
        onChange={(event) => onChange(event.target.value.replace(/\D/g, '').slice(0, length))}
        sx={{
          position: 'absolute',
          inset: 0,
          width: '100%',
          height: '100%',
          opacity: 0,
          cursor: 'text',
          border: 0,
          p: 0,
          fontSize: 16,
          '&:focus': { outline: 'none' },
        }}
      />
    </Box>
  );
};

export default OtpField;
