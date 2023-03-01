import DashboardIcon from '@mui/icons-material/Dashboard';
import Groups2Icon from '@mui/icons-material/Groups2';
import WebStoriesIcon from '@mui/icons-material/WebStories';

export const HomeMenu = [
    {
        title: 'dashboard',
        icon: <DashboardIcon />,
        url: '/controller/home'
    }
]

export const AdminMenu = [
    {
        title: 'users',
        icon: <Groups2Icon />,
        url: '/controller/users'
    },
    {
        title: 'companies',
        icon: <WebStoriesIcon />,
        url: '/controller/companies'
    }
]