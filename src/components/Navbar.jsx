import { useState } from 'react';
import { Link as RouterLink, useNavigate } from 'react-router-dom';
import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Container from '@mui/material/Container';
import Divider from '@mui/material/Divider';
import Drawer from '@mui/material/Drawer';
import IconButton from '@mui/material/IconButton';
import List from '@mui/material/List';
import ListItemButton from '@mui/material/ListItemButton';
import ListItemText from '@mui/material/ListItemText';
import Menu from '@mui/material/Menu';
import MenuItem from '@mui/material/MenuItem';
import Stack from '@mui/material/Stack';
import Toolbar from '@mui/material/Toolbar';
import Tooltip from '@mui/material/Tooltip';
import Typography from '@mui/material/Typography';
import Avatar from '@mui/material/Avatar';
import Chip from '@mui/material/Chip';
import LightModeRoundedIcon from '@mui/icons-material/LightModeRounded';
import DarkModeRoundedIcon from '@mui/icons-material/DarkModeRounded';
import MenuRoundedIcon from '@mui/icons-material/MenuRounded';
import CloseRoundedIcon from '@mui/icons-material/CloseRounded';
import LogoutRoundedIcon from '@mui/icons-material/LogoutRounded';
import DashboardRoundedIcon from '@mui/icons-material/DashboardRounded';
import HistoryRoundedIcon from '@mui/icons-material/HistoryRounded';
import PersonRoundedIcon from '@mui/icons-material/PersonRounded';
import Logo from './Logo';
import { useAuth } from '../context/AuthContext';
import { useTheme } from '../context/ThemeContext';

const PUBLIC_LINKS = [
  { label: 'Home', to: '/' },
  { label: 'Subjects', to: '/#subjects' },
  { label: 'How it works', to: '/#how-it-works' },
  { label: 'FAQ', to: '/#faq' },
  { label: 'About', to: '/about' },
];

const Navbar = () => {
  const [drawerOpen, setDrawerOpen] = useState(false);
  const [menuAnchor, setMenuAnchor] = useState(null);
  const { user, profile, signOut } = useAuth();
  const { isDark, toggleTheme } = useTheme();
  const navigate = useNavigate();

  const initials = (
    profile?.full_name ||
    user?.user_metadata?.full_name ||
    user?.email ||
    'A'
  )
    .toString()
    .split(' ')
    .slice(0, 2)
    .map((part) => part.charAt(0).toUpperCase())
    .join('');

  const handleSignOut = async () => {
    setMenuAnchor(null);
    await signOut();
    navigate('/', { replace: true });
  };

  return (
    <AppBar position="sticky">
      <Container maxWidth="xl">
        <Toolbar disableGutters sx={{ minHeight: { xs: 64, md: 72 }, gap: 2 }}>
          <Logo />

          <Stack
            direction="row"
            spacing={0.5}
            sx={{ ml: 4, display: { xs: 'none', lg: 'flex' } }}
            component="nav"
            aria-label="Main navigation"
          >
            {PUBLIC_LINKS.map((link) => (
              <Button
                key={link.label}
                component={RouterLink}
                to={link.to}
                color="inherit"
                sx={{
                  px: 1.75,
                  color: 'text.secondary',
                  fontWeight: 500,
                  '&:hover': { color: 'text.primary', backgroundColor: 'action.hover' },
                }}
              >
                {link.label}
              </Button>
            ))}
          </Stack>

          <Box sx={{ flexGrow: 1 }} />

          <Stack direction="row" spacing={1.25} sx={{ alignItems: 'center' }}>
            <Tooltip title={isDark ? 'Switch to light mode' : 'Switch to dark mode'}>
              <IconButton onClick={toggleTheme} aria-label="Toggle colour mode" size="small">
                {isDark ? <LightModeRoundedIcon /> : <DarkModeRoundedIcon />}
              </IconButton>
            </Tooltip>

            {user ? (
              <>
                <Button
                  component={RouterLink}
                  to="/dashboard"
                  variant="text"
                  color="inherit"
                  sx={{ display: { xs: 'none', sm: 'inline-flex' }, fontWeight: 600 }}
                >
                  Dashboard
                </Button>
                <IconButton onClick={(event) => setMenuAnchor(event.currentTarget)} aria-label="Account menu">
                  <Avatar sx={{ width: 38, height: 38, bgcolor: 'primary.main', fontSize: 15 }}>
                    {initials}
                  </Avatar>
                </IconButton>
                <Menu
                  anchorEl={menuAnchor}
                  open={Boolean(menuAnchor)}
                  onClose={() => setMenuAnchor(null)}
                  transformOrigin={{ horizontal: 'right', vertical: 'top' }}
                  anchorOrigin={{ horizontal: 'right', vertical: 'bottom' }}
                  slotProps={{ paper: { sx: { mt: 1, minWidth: 220, p: 1 } } }}
                >
                  <Box sx={{ px: 2, py: 1 }}>
                    <Typography variant="subtitle2" noWrap>
                      {profile?.full_name || user.email}
                    </Typography>
                    <Typography variant="caption" color="text.secondary" noWrap>
                      {user.email}
                    </Typography>
                  </Box>
                  <Divider sx={{ my: 1 }} />
                  <MenuItem component={RouterLink} to="/dashboard" onClick={() => setMenuAnchor(null)}>
                    <DashboardRoundedIcon fontSize="small" sx={{ mr: 1.5 }} /> Dashboard
                  </MenuItem>
                  <MenuItem component={RouterLink} to="/attempts" onClick={() => setMenuAnchor(null)}>
                    <HistoryRoundedIcon fontSize="small" sx={{ mr: 1.5 }} /> My tests
                  </MenuItem>
                  <MenuItem component={RouterLink} to="/profile" onClick={() => setMenuAnchor(null)}>
                    <PersonRoundedIcon fontSize="small" sx={{ mr: 1.5 }} /> Profile
                  </MenuItem>
                  <Divider sx={{ my: 1 }} />
                  <MenuItem onClick={handleSignOut} sx={{ color: 'error.main' }}>
                    <LogoutRoundedIcon fontSize="small" sx={{ mr: 1.5 }} /> Sign out
                  </MenuItem>
                </Menu>
              </>
            ) : (
              <>
                <Button
                  component={RouterLink}
                  to="/login"
                  variant="text"
                  color="inherit"
                  sx={{ display: { xs: 'none', sm: 'inline-flex' }, fontWeight: 600 }}
                >
                  Sign in
                </Button>
                <Button
                  component={RouterLink}
                  to="/login"
                  variant="contained"
                  size="small"
                  sx={{ px: 2.5, display: { xs: 'none', sm: 'inline-flex' } }}
                >
                  Start free
                </Button>
              </>
            )}

            <IconButton
              onClick={() => setDrawerOpen(true)}
              aria-label="Open navigation menu"
              sx={{ display: { xs: 'inline-flex', lg: 'none' } }}
            >
              <MenuRoundedIcon />
            </IconButton>
          </Stack>
        </Toolbar>
      </Container>

      <Drawer
        anchor="right"
        open={drawerOpen}
        onClose={() => setDrawerOpen(false)}
        slotProps={{ paper: { sx: { width: 300, p: 2.5, display: 'flex', flexDirection: 'column' } } }}
      >
        <Stack direction="row" sx={{ justifyContent: 'space-between', alignItems: 'center', mb: 2 }}>
          <Logo size={36} />
          <IconButton onClick={() => setDrawerOpen(false)} aria-label="Close menu">
            <CloseRoundedIcon />
          </IconButton>
        </Stack>
        <List>
          {PUBLIC_LINKS.map((link) => (
            <ListItemButton
              key={link.label}
              component={RouterLink}
              to={link.to}
              onClick={() => setDrawerOpen(false)}
              sx={{ mb: 0.5 }}
            >
              <ListItemText primary={link.label} slotProps={{ primary: { sx: { fontWeight: 600 } } }} />
            </ListItemButton>
          ))}
          {user && (
            <>
              <Divider sx={{ my: 1.5 }} />
              <ListItemButton component={RouterLink} to="/dashboard" onClick={() => setDrawerOpen(false)}>
                <ListItemText primary="Dashboard" slotProps={{ primary: { sx: { fontWeight: 600 } } }} />
              </ListItemButton>
              <ListItemButton component={RouterLink} to="/attempts" onClick={() => setDrawerOpen(false)}>
                <ListItemText primary="My tests" slotProps={{ primary: { sx: { fontWeight: 600 } } }} />
              </ListItemButton>
              <ListItemButton component={RouterLink} to="/profile" onClick={() => setDrawerOpen(false)}>
                <ListItemText primary="Profile" slotProps={{ primary: { sx: { fontWeight: 600 } } }} />
              </ListItemButton>
            </>
          )}
        </List>
        <Box sx={{ mt: 'auto', pt: 3 }}>
          {user ? (
            <Button fullWidth variant="outlined" color="inherit" onClick={handleSignOut} startIcon={<LogoutRoundedIcon />}>
              Sign out
            </Button>
          ) : (
            <Stack spacing={1.5}>
              <Button fullWidth variant="contained" component={RouterLink} to="/login" onClick={() => setDrawerOpen(false)}>
                Start free
              </Button>
              <Button fullWidth variant="outlined" color="inherit" component={RouterLink} to="/login" onClick={() => setDrawerOpen(false)}>
                Sign in
              </Button>
            </Stack>
          )}
          <Chip
            label="100% free · no payment"
            size="small"
            sx={{ mt: 2, width: '100%', bgcolor: 'action.hover' }}
          />
        </Box>
      </Drawer>
    </AppBar>
  );
};

export default Navbar;
