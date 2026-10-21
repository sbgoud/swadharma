import { useId } from 'react';
import Box from '@mui/material/Box';

/**
 * The Swadharma mark — a minimal swan drawn in a 48x48 viewBox.
 *
 * The glyph is a filled boat-shaped body with a raised tail, a tapered neck
 * that rises from the breast, a round head and a small beak. It is drawn once
 * here and reused everywhere: the header badge, the auth screens, the profile
 * avatar and the favicon.
 *
 * Two forms are exported:
 *   SwanMark  — the glyph in white on a teal badge. Self contained, so it is
 *               legible on any page background, light or dark.
 *   SwanGlyph — the bare glyph in `currentColor`, for placing directly on a
 *               surface that already provides the contrast.
 */

const BODY = 'M10.2 29.6C11.2 35 19 38.5 28 36C33.8 34.4 37.8 30.6 39.6 25.6C37 27.2 33.4 27.8 29.8 27.8C19.8 27.8 12.6 25.4 10.2 29.6Z';
const NECK = 'M11.2 29.2C9.7 24.2 10.3 18.6 11.7 14C12.7 10.8 11.7 9 13.4 8.4';
const HEAD = 'M13.5 8.2m-3.4 0a3.4 3.4 0 1 0 6.8 0a3.4 3.4 0 1 0 -6.8 0';
const BEAK = 'M10.4 6.9 5.8 8.3 10.4 9.7Z';

/** The swan on its own, in the given colour. */
export const SwanGlyph = ({ size = 32, color = 'currentColor', title, sx, ...rest }) => (
  <Box
    component="svg"
    viewBox="0 0 48 48"
    sx={{ width: size, height: size, flexShrink: 0, ...sx }}
    role={title ? 'img' : 'presentation'}
    aria-label={title || undefined}
    aria-hidden={title ? undefined : 'true'}
    focusable="false"
    {...rest}
  >
    {title ? <title>{title}</title> : null}
    <path d={BODY} fill={color} />
    <path
      d={NECK}
      fill="none"
      stroke={color}
      strokeWidth="3.7"
      strokeLinecap="round"
      strokeLinejoin="round"
    />
    <path d={HEAD} fill={color} />
    <path d={BEAK} fill={color} />
  </Box>
);

/** The swan inside a teal badge — the default mark used across the app. */
export const SwanMark = ({ size = 40, title = 'Swadharma IAS', sx, ...rest }) => {
  const gradientId = `swan-${useId().replace(/:/g, '')}`;

  return (
    <Box
      component="svg"
      viewBox="0 0 48 48"
      sx={{
        width: size,
        height: size,
        flexShrink: 0,
        borderRadius: '29%',
        boxShadow: '0 10px 24px -14px rgba(15, 118, 110, 0.85)',
        ...sx,
      }}
      role="img"
      aria-label={title}
      focusable="false"
      {...rest}
    >
      <title>{title}</title>
      <defs>
        <linearGradient id={gradientId} x1="0" y1="0" x2="1" y2="1">
          <stop offset="0%" stopColor="#0F766E" />
          <stop offset="100%" stopColor="#0E7490" />
        </linearGradient>
      </defs>
      <rect width="48" height="48" rx="14" fill={`url(#${gradientId})`} />
      <path d={BODY} fill="#FFFFFF" />
      <path
        d={NECK}
        fill="none"
        stroke="#FFFFFF"
        strokeWidth="3.7"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
      <path d={HEAD} fill="#FFFFFF" />
      <path d={BEAK} fill="#FFFFFF" />
    </Box>
  );
};

export default SwanMark;
