"use client"

import React from 'react'
import { useUserAccess } from '../useUserAccess'
import Avatar from '@mui/material/Avatar/Avatar'

export const UserBar = () => {
    const { hasAccess } = useUserAccess()

    return (
        <div className='bg-gradient-to-br from-slate-100/50 to-slate-200/50 p-4 rounded shadow'>
            <div className='flex justify-between items-center'>
                <div>
                    {
                        hasAccess &&
                        hasAccess.map((user, index) => (
                            <div key={index} className='flex gap-4 items-center'>
                                <Avatar sx={{ width: 75, height: 75, fontSize: 45 }} src={user.avatar ? `/images/profile/${user.avatar}` : ''}>{user.first_name.charAt(0).toUpperCase()}</Avatar>
                                <div className='flex flex-col capitalize tracking-wider'>
                                    <h1 className='font-bold text-xl'>welcome back</h1>
                                    <h1 className='font-semibold'>{`${user.first_name} ${user.last_name}`}</h1>
                                    <p className='text-sm font-light lowercase'>{user.username}</p>
                                </div>
                            </div>
                        ))
                    }
                </div>
                <div>

                </div>
            </div>
        </div>
    )
}
