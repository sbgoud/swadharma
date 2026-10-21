import { Component } from 'react';
import Alert from '@mui/material/Alert';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import ErrorOutlineRoundedIcon from '@mui/icons-material/ErrorOutlineRounded';
import RefreshRoundedIcon from '@mui/icons-material/RefreshRounded';
import HomeRoundedIcon from '@mui/icons-material/HomeRounded';
import { SwanGlyph } from './SwanLogo';

/**
 * Catches render-time errors so a broken page shows a readable message
 * instead of a blank white screen.
 *
 * `resetKey` (usually the current pathname) clears the error as soon as the
 * user navigates somewhere else, so a single bad route cannot lock the app.
 */
class ErrorBoundary extends Component {
  constructor(props) {
    super(props);
    this.state = { error: null };
    this.handleReload = this.handleReload.bind(this);
    this.handleHome = this.handleHome.bind(this);
  }

  static getDerivedStateFromError(error) {
    return { error };
  }

  componentDidCatch(error, info) {
    console.error('Unhandled rendering error:', error, info);
  }

  componentDidUpdate(prevProps) {
    const { resetKey } = this.props;
    if (this.state.error && prevProps.resetKey !== resetKey) {
      this.setState({ error: null });
    }
  }

  handleReload() {
    window.location.reload();
  }

  handleHome() {
    window.location.assign('/');
  }

  render() {
    const { error } = this.state;
    const { children } = this.props;

    if (!error) return children;

    return (
      <Box sx={{ minHeight: '60vh', display: 'grid', placeItems: 'center', px: 2, py: 6 }}>
        <Card variant="outlined" sx={{ maxWidth: 560, width: '100%', borderRadius: 4 }}>
          <CardContent sx={{ p: { xs: 3, sm: 4.5 }, '&:last-child': { pb: { xs: 3, sm: 4.5 } } }}>
            <Stack spacing={2.5} sx={{ alignItems: 'center', textAlign: 'center' }}>
              <Box sx={{ color: 'error.main' }}>
                <ErrorOutlineRoundedIcon sx={{ fontSize: 40 }} />
              </Box>
              <Typography variant="h4" sx={{ color: 'text.primary' }}>
                This page could not be displayed
              </Typography>
              <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.75 }}>
                Something went wrong while rendering this page. Your answers are kept in this
                browser, so reloading usually brings the paper back.
              </Typography>
              <Alert severity="error" sx={{ width: '100%', textAlign: 'left' }}>
                {error?.message || 'Unexpected error'}
              </Alert>
              <Stack direction={{ xs: 'column', sm: 'row' }} spacing={1.5} sx={{ width: '100%' }}>
                <Button
                  variant="contained"
                  onClick={this.handleReload}
                  startIcon={<RefreshRoundedIcon />}
                  sx={{ flex: 1 }}
                >
                  Reload page
                </Button>
                <Button
                  variant="outlined"
                  onClick={this.handleHome}
                  startIcon={<HomeRoundedIcon />}
                  sx={{ flex: 1 }}
                >
                  Back to home
                </Button>
              </Stack>
              <Stack direction="row" spacing={1} sx={{ alignItems: 'center', opacity: 0.5 }}>
                <SwanGlyph size={16} color="currentColor" />
                <Typography variant="caption" color="text.secondary">
                  Swadharma IAS
                </Typography>
              </Stack>
            </Stack>
          </CardContent>
        </Card>
      </Box>
    );
  }
}

export default ErrorBoundary;
