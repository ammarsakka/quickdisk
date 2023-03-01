"use client"

import React from 'react'
import { Logo } from './logo'
import Divider from '@mui/material/Divider/Divider'
import { Menu } from './menu'

interface page {
    page: string,
}

export const Sidebar = ({ page }: page) => {
    return (
        <div>
            <div>
                <div className='p-2'>
                    <Logo />
                </div>
                <Divider />
            </div>
            <div className='max-h-sidebar min-h-sidebar overflow-hidden overflow-y-scroll h-full shadow sidebar'>
                <Menu page={page} />
            </div>
        </div>
    )
}
