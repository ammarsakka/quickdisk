"use client"

import React, { useState } from 'react'
import { IconButton } from '../buttons'
import { CustomToolbar } from './customToolbar'
import AddIcon from '@mui/icons-material/Add';
import { NewUser } from '../admin/newUser';

interface reload {
    reload: any
}

export const CustomUsersToolbar = ({ reload }: reload) => {
    const [open, setOpen] = useState(false)

    return (
        <div className='flex items-center justify-between p-2'>
            <div>
                <IconButton label='add new user' click={() => { setOpen(true) }} icon={<AddIcon />} size='small' />
            </div>
            <CustomToolbar />
            <NewUser isModule={open} setModule={setOpen} reload={reload} />
        </div>
    )
}
