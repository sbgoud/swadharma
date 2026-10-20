import { Component } from 'react';
import Alert from '@mui/material/Alert';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import ErrorOutlineRoundedIcon from '@mui/icons-material/ErrorOutlineRounded';

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
    this.handleDashboard = this.handleDashboard.bind(this);
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

  handleDashboard() {
    window.location.assign('/dashboard');
  }

  render() {
    const { error } = this.state;
    const { children } = this.props;

    if (!error) return children;

    return (
      <Box sx={{ minHeight: '60vh', display: 'grid', placeItems: 'center', px: 2, py: 4 }}>
        <Card sx={{ maxWidth: 560, width: '100%' }}>
          <CardContent sx={{ p: 4, '&:last-child': { pb: 4 } }}>
            <Stack spacing={2} sx={{ alignItems: 'center', textAlign: 'center' }}>
              <ErrorOutlineRoundedIcon sx={{ fontSize: 44, color: 'error.main' }} />
              <Typography variant="h5" sx={{ fontWeight: 700, color: 'text.primary' }}>
                This page could not be displayed
              </Typography>
              <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.75 }}>
                Something went wrong while rendering this page. Your answers are kept in this
                browser, so reloading usually brings the paper back.
              </Typography>
              <Alert severity="error" sx={{ width: '100%', textAlign: 'left' }}>
                {error?.message || 'Unexpected error'}
              </Alert>
              <Stack direction="row" spacing={1.5}>
                <Button variant="contained" onClick={this.handleReload}>
                  Reload page
                </Button>
                <Button
                  variant="outlined"
                  color="inherit"
                  onClick={this.handleDashboard}
                  sx={{ borderColor: 'divider' }}
                >
                  Go to dashboard
                </Button>
              </Stack>
            </Stack>
          </CardContent>
        </Card>
      </Box>
    );
  }
}

export default ErrorBoundary;
