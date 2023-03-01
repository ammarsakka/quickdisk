"use client"

import React, { useState } from 'react'
import { IconButton } from '../buttons'
import { CustomToolbar } from './customToolbar'
import AddIcon from '@mui/icons-material/Add';
import { NewCusomter } from '../user/newCustomer';
import { GridToolbarQuickFilter } from '@mui/x-data-grid';

interface reload {
    reload: any,
    data: string
}

export const CustomCustomersToolbar = ({ reload, data }: reload) => {
    const [open, setOpen] = useState(false)

    return (
        <div className='flex items-center justify-between p-2'>
            <div className='grid md:flex gap-2 items-center'>
                <IconButton label='add new customer' click={() => { setOpen(true) }} icon={<AddIcon />} size='small' />
                <GridToolbarQuickFilter />
            </div>
            <CustomToolbar />
            <NewCusomter isModule={open} setModule={setOpen} reload={reload} data={data} />
        </div>
    )
}
