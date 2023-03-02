import { Link } from 'react-router-dom'
import React, { ReactNode } from 'react'
import { MenuItem, ListItemIcon, ListItemText, ListItemButton, Collapse, List } from '@mui/material'
import ExpandLessIcon from '@mui/icons-material/ExpandLess';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
// import DashboardIcon from '@mui/icons-material/Dashboard';
import GroupsIcon from '@mui/icons-material/Groups';
import AssignmentIcon from '@mui/icons-material/Assignment';
// import FlagIcon from '@mui/icons-material/Flag';

interface menu {
    title: string,
    icon: ReactNode,
    url: string,
    selected: boolean
}


export const HomeButtons = ({ title, icon, url, selected = false }: menu) => {
    return (
        <MenuItem className='!p-0' disabled={selected}>
            <Link to={url} title={title.replaceAll('_', ' ')} className='flex items-center w-full !py-3 !px-4'>
                <ListItemIcon>
                    {icon}
                </ListItemIcon>
                <ListItemText className='capitalize'>
                    {title.replaceAll('_', ' ')}
                </ListItemText>
            </Link>
        </MenuItem>
    )
}

interface menuList {
    title: string,
    icon: string,
    url: string,
    selected: string,
    parent: boolean
}

const ListItem = [
    // {
    //     name: 'home',
    //     icon: <DashboardIcon />
    // },
    {
        name: 'customers',
        icon: <GroupsIcon />
    },
    {
        name: 'inquiries',
        icon: <AssignmentIcon />
    },
    // {
    //     name: 'reports',
    //     icon: <FlagIcon />
    // }
]

export const ListButton = ({ title, icon, url, selected, parent = false }: menuList) => {
    const [open, setOpen] = React.useState(parent);

    const handleClick = () => {
        setOpen(!open);
    };

    return (
        <>
            <ListItemButton onClick={handleClick}>
                <ListItemIcon className='!w-9 min-w-fit'>
                    <img src={`/images/company/${icon}`} alt={title} className='h-6 w-6 object-contain' />
                </ListItemIcon>
                <ListItemText className='capitalize overflow-hidden'>{title}</ListItemText>
                {open ? <ExpandLessIcon /> : <ExpandMoreIcon />}
            </ListItemButton>
            <Collapse in={open} timeout="auto" unmountOnExit>
                <List component="div" disablePadding>
                    {
                        ListItem.map((list, index) => {
                            return (
                                <ListItemButton className='p-0' key={index} disabled={selected === list.name}>
                                    <Link to={`/company/${url}/${list.name}`} className='flex items-center w-full  py-2 px-4' >
                                        <div className='flex items-center pl-2'>
                                            <ListItemIcon className='!w-9 min-w-fit'>
                                                {list.icon}
                                            </ListItemIcon>
                                            <ListItemText className='capitalize'>
                                                {list.name}
                                            </ListItemText>
                                        </div>
                                    </Link>
                                </ListItemButton>
                            )
                        })
                    }
                </List>
            </Collapse>
        </>
    )
}
