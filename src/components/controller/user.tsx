"use client"

import Avatar from '@mui/material/Avatar'
// import { useState } from 'react'
import { useUserAccess } from '../useUserAccess'

export const User = () => {
    const { hasAccess } = useUserAccess()
    // const [open, setOpen] = useState(false)

    return (
        <>
            {
                hasAccess?.length &&
                hasAccess.map((user, index) => (
                    <button key={index} className='flex gap-2 items-center'>
                        <div className='flex flex-col capitalize text-right'>
                            <span className='text-sm font-semibold tracking-wide'>{`${user.first_name} ${user.last_name}`}</span>
                            <span className='text-xs font-light tracking-wider'>{user.role}</span>
                        </div>
                        <Avatar sx={{ width: 35, height: 35 }} src={user.avatar ? `/images/profile/${user.avatar}` : ''}>{user.first_name.charAt(0).toUpperCase()}</Avatar>
                    </button>
                ))
            }
        </>
    )
}