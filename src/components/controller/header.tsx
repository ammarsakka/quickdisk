"use client"

import React from 'react'
import MenuIcon from '@mui/icons-material/Menu';
import IconButton from '@mui/material/IconButton';
import { User } from './user';

interface page {
    page: string
}

export const Header = ({ page }: page) => {
    return (
        <div className='flex justify-between items-center p-[2px] shadow'>
            <div className='flex items-center gap-2'>
                <IconButton><MenuIcon /></IconButton>
                <h1 className='capitalize text-lg font-bold tracking-wide'>{page.replaceAll('_', ' ')}</h1>
            </div>
            <div className='flex gap-2 items-center'>
                <User />
            </div>
        </div>
    )
}
