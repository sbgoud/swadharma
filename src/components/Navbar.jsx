import { useState } from 'react';
import { Link as RouterLink, useLocation, useNavigate } from 'react-router-dom';
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

const ACCOUNT_LINKS = [
  { label: 'Dashboard', to: '/dashboard', icon: <DashboardRoundedIcon fontSize="small" /> },
  { label: 'My tests', to: '/attempts', icon: <HistoryRoundedIcon fontSize="small" /> },
  { label: 'Profile', to: '/profile', icon: <PersonRoundedIcon fontSize="small" /> },
];

const Navbar = () => {
  const [drawerOpen, setDrawerOpen] = useState(false);
  const [menuAnchor, setMenuAnchor] = useState(null);
  const { user, profile, signOut } = useAuth();
  const { isDark, toggleTheme } = useTheme();
  const navigate = useNavigate();
  const location = useLocation();

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

  const isActive = (to) => !to.includes('#') && location.pathname === to;

  const handleSignOut = async () => {
    setMenuAnchor(null);
    await signOut();
    navigate('/', { replace: true });
  };

  return (
    <AppBar position="sticky">
      <Container maxWidth="lg">
        <Toolbar disableGutters sx={{ minHeight: { xs: 62, md: 70 }, gap: 2 }}>
          <Logo size={38} />

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
                  minHeight: 40,
                  color: isActive(link.to) ? 'primary.main' : 'text.secondary',
                  fontWeight: 500,
                  position: 'relative',
                  '&::after': {
                    content: '""',
                    position: 'absolute',
                    left: 14,
                    right: 14,
                    bottom: 4,
                    height: 2,
                    borderRadius: '8px',
                    bgcolor: 'primary.main',
                    opacity: isActive(link.to) ? 1 : 0,
                    transition: 'opacity 180ms ease',
                  },
                  '&:hover': { color: 'text.primary', backgroundColor: 'transparent' },
                }}
              >
                {link.label}
              </Button>
            ))}
          </Stack>

          <Box sx={{ flexGrow: 1 }} />

          <Stack direction="row" spacing={{ xs: 0.5, sm: 1 }} sx={{ alignItems: 'center' }}>
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
                <IconButton
                  onClick={(event) => setMenuAnchor(event.currentTarget)}
                  aria-label="Account menu"
                  size="small"
                  sx={{ p: 0.5 }}
                >
                  <Avatar sx={{ width: 34, height: 34, bgcolor: 'primary.main', fontSize: 14 }}>
                    {initials}
                  </Avatar>
                </IconButton>
                <Menu
                  anchorEl={menuAnchor}
                  open={Boolean(menuAnchor)}
                  onClose={() => setMenuAnchor(null)}
                  transformOrigin={{ horizontal: 'right', vertical: 'top' }}
                  anchorOrigin={{ horizontal: 'right', vertical: 'bottom' }}
                  slotProps={{ paper: { sx: { mt: 1, minWidth: 232, p: 1 } } }}
                >
                  <Box sx={{ px: 2, py: 1 }}>
                    <Typography variant="subtitle2" noWrap sx={{ fontWeight: 600 }}>
                      {profile?.full_name || user.email}
                    </Typography>
                    <Typography variant="caption" color="text.secondary" noWrap>
                      {user.email}
                    </Typography>
                  </Box>
                  <Divider sx={{ my: 1 }} />
                  {ACCOUNT_LINKS.map((item) => (
                    <MenuItem
                      key={item.to}
                      component={RouterLink}
                      to={item.to}
                      onClick={() => setMenuAnchor(null)}
                    >
                      <Box sx={{ display: 'flex', alignItems: 'center', mr: 1.5, color: 'text.secondary' }}>
                        {item.icon}
                      </Box>
                      {item.label}
                    </MenuItem>
                  ))}
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
                  Start practising free
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
        slotProps={{ paper: { sx: { width: { xs: 300, sm: 340 }, p: 2.5, display: 'flex', flexDirection: 'column' } } }}
      >
        <Stack direction="row" sx={{ justifyContent: 'space-between', alignItems: 'center', mb: 2 }}>
          <Logo size={36} />
          <IconButton onClick={() => setDrawerOpen(false)} aria-label="Close menu">
            <CloseRoundedIcon />
          </IconButton>
        </Stack>

        <List disablePadding>
          {PUBLIC_LINKS.map((link) => (
            <ListItemButton
              key={link.label}
              component={RouterLink}
              to={link.to}
              onClick={() => setDrawerOpen(false)}
              sx={{ minHeight: 48, borderRadius: '12px', mb: 0.25 }}
            >
              <ListItemText
                primary={link.label}
                slotProps={{ primary: { sx: { fontWeight: 600 } } }}
              />
            </ListItemButton>
          ))}
          {user && (
            <>
              <Divider sx={{ my: 1.5 }} />
              {ACCOUNT_LINKS.map((item) => (
                <ListItemButton
                  key={item.to}
                  component={RouterLink}
                  to={item.to}
                  onClick={() => setDrawerOpen(false)}
                  sx={{ minHeight: 48, borderRadius: '12px', mb: 0.25 }}
                >
                  <ListItemText
                    primary={item.label}
                    slotProps={{ primary: { sx: { fontWeight: 600 } } }}
                  />
                </ListItemButton>
              ))}
            </>
          )}
        </List>

        <Box sx={{ mt: 'auto', pt: 3 }}>
          <ListItemButton
            onClick={toggleTheme}
            sx={{ minHeight: 48, borderRadius: '12px', mb: 1.5, border: '1px solid', borderColor: 'divider' }}
          >
            <Box sx={{ display: 'flex', alignItems: 'center', mr: 1.5, color: 'text.secondary' }}>
              {isDark ? <LightModeRoundedIcon fontSize="small" /> : <DarkModeRoundedIcon fontSize="small" />}
            </Box>
            <ListItemText
              primary={isDark ? 'Light mode' : 'Dark mode'}
              slotProps={{ primary: { sx: { fontWeight: 600 } } }}
            />
          </ListItemButton>

          {user ? (
            <Button
              fullWidth
              variant="outlined"
              onClick={handleSignOut}
              startIcon={<LogoutRoundedIcon />}
            >
              Sign out
            </Button>
          ) : (
            <Stack spacing={1.25}>
              <Button
                fullWidth
                variant="contained"
                component={RouterLink}
                to="/login"
                onClick={() => setDrawerOpen(false)}
              >
                Start practising free
              </Button>
              <Button
                fullWidth
                variant="outlined"
                component={RouterLink}
                to="/login"
                onClick={() => setDrawerOpen(false)}
              >
                Sign in
              </Button>
            </Stack>
          )}
        </Box>
      </Drawer>
    </AppBar>
  );
};

export default Navbar;
