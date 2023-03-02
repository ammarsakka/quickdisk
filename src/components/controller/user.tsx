import { Menu, MenuItem } from '@mui/material'
import Avatar from '@mui/material/Avatar'
import { useState, MouseEvent } from 'react'
import { useUserAccess } from '../useUserAccess'
import { useNavigate } from 'react-router-dom'
import { useToken } from '../token'
import LogoutIcon from '@mui/icons-material/Logout';

export const User = () => {
    const { hasAccess } = useUserAccess()
    const { deleteToken } = useToken()
    const [anchorEl, setAnchorEl] = useState<null | HTMLElement>(null)
    const open = Boolean(anchorEl)
    const Router = useNavigate()

    const handleClick = (event: MouseEvent<HTMLElement>) => {
        setAnchorEl(event.currentTarget)
    }

    const handleClose = () => {
        setAnchorEl(null)
    }

    const handleLogout = () => {
        deleteToken()
        Router('/')
    }

    return (
        <>
            {
                hasAccess?.length &&
                hasAccess.map((user, index) => (
                    <>
                        <button key={index} className='flex gap-2 items-center'
                            onClick={handleClick}>
                            <div className='flex flex-col capitalize text-right'>
                                <span className='text-sm font-semibold tracking-wide'>{`${user.first_name} ${user.last_name}`}</span>
                                <span className='text-xs font-light tracking-wider'>{user.role}</span>
                            </div>
                            <Avatar sx={{ width: 35, height: 35 }} src={user.avatar ? `/images/profile/${user.avatar}` : ''}>{user.first_name.charAt(0).toUpperCase()}</Avatar>
                        </button>
                        <Menu
                            id="demo-customized-menu"
                            MenuListProps={{
                                'aria-labelledby': 'demo-customized-button',
                            }}
                            anchorEl={anchorEl}
                            open={open}
                            onClose={handleClose}
                            elevation={0}
                            anchorOrigin={{
                                vertical: 'bottom',
                                horizontal: 'right',
                            }}
                            transformOrigin={{
                                vertical: 'top',
                                horizontal: 'right',
                            }}
                        >
                            <MenuItem className='flex gap-2 items-center' onClick={handleLogout} >
                                <LogoutIcon />
                                Logout
                            </MenuItem>
                        </Menu>
                    </>
                ))
            }
        </>
    )
}