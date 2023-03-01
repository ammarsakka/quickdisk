import React, { MouseEvent } from 'react'
import { Button, Divider, Menu, MenuItem } from '@mui/material'
import EditIcon from '@mui/icons-material/Edit';
import KeyboardArrowDownIcon from '@mui/icons-material/KeyboardArrowDown';
import ShieldIcon from '@mui/icons-material/Shield';
import PasswordIcon from '@mui/icons-material/Password';
import ManageAccountsIcon from '@mui/icons-material/ManageAccounts';
import DeleteIcon from '@mui/icons-material/Delete';

interface type {
    id: any,
    handleAction: any
}

export const UsersActions = ({ id, handleAction }: type) => {
    const [anchorEl, setAnchorEl] = React.useState<null | HTMLElement>(null);
    const open = Boolean(anchorEl);
    const handleClick = (event: MouseEvent<HTMLElement>) => {
        setAnchorEl(event.currentTarget);
    };

    const handleClose = () => {
        setAnchorEl(null);
    };

    const handleSubmit = (action: string) => {
        handleAction(id, action)
        handleClose()
    }

    return (
        <div>
            <Button
                id="demo-customized-button"
                aria-controls={open ? 'demo-customized-menu' : undefined}
                aria-haspopup="true"
                aria-expanded={open ? 'true' : undefined}
                variant="outlined"
                disableElevation
                onClick={handleClick}
                endIcon={<KeyboardArrowDownIcon />}
                color='success'
            >
                Options
            </Button>
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
                <MenuItem className='flex gap-2 items-center' onClick={() => { handleSubmit('edit') }} disableRipple>
                    <EditIcon />
                    Edit
                </MenuItem>
                <MenuItem className='flex gap-2 items-center' onClick={() => { handleSubmit('access') }} disableRipple>
                    <ShieldIcon />
                    Access
                </MenuItem>
                <Divider sx={{ my: 0.5 }} />
                <MenuItem className='flex gap-2 items-center' onClick={() => { handleSubmit('password') }} disableRipple>
                    <PasswordIcon />
                    Reset Password
                </MenuItem>
                <MenuItem className='flex gap-2 items-center' onClick={() => { handleSubmit('status') }} disableRipple>
                    <ManageAccountsIcon />
                    Change Status
                </MenuItem>
                <MenuItem className='flex gap-2 items-center !text-red-500' onClick={() => { handleSubmit('delete') }} disableRipple>
                    <DeleteIcon />
                    Delete
                </MenuItem>
            </Menu>
        </div>
    )
}
