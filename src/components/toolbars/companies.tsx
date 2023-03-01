"use client"

import React, { useState } from 'react'
import { IconButton } from '../buttons'
import { CustomToolbar } from './customToolbar'
import AddIcon from '@mui/icons-material/Add';
import { NewCompany } from '../admin/newCompany';

interface reload {
    reload: any
}

export const CustomCompaniesToolbar = ({ reload }: reload) => {
    const [open, setOpen] = useState(false)

    return (
        <div className='flex items-center justify-between p-2'>
            <div>
                <IconButton label='add new company' click={() => { setOpen(true) }} icon={<AddIcon />} size='small' />
            </div>
            <CustomToolbar />
            <NewCompany isModule={open} setModule={setOpen} reload={reload} />
        </div>
    )
}
