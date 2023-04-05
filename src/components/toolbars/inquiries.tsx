"use client"

import React, { useState } from 'react'
import { IconButton } from '../buttons'
import { CustomToolbar } from './customToolbar'
import AddIcon from '@mui/icons-material/Add';
import DescriptionIcon from '@mui/icons-material/Description';
import { GridToolbarQuickFilter } from '@mui/x-data-grid';
import { NewOfficeInquiry } from '../user/newOfficeInquiry';
import { NewRenovationInquiry } from '../user/newRenovationInquiry';
import { NewTechInquiry } from '../user/newTechInquiry';
import { NewReport } from '../user/newReport';

interface reload {
    reload: any,
    data: string
}

export const CustomOfficeInquiriesToolbar = ({ reload, data }: reload) => {
    const [open, setOpen] = useState(false)
    const [report, setReport] = useState(false)

    return (
        <div className='flex items-center justify-between p-2'>
            <div className='grid md:flex gap-2 items-center'>
                <IconButton label='add new inquiry' click={() => { setOpen(true) }} icon={<AddIcon />} size='small' />
                <GridToolbarQuickFilter />
            </div>
            {/* <CustomToolbar /> */}
            <div>
                <IconButton label='report' click={() => { setReport(true) }} icon={<DescriptionIcon />} size='small' />
            </div>
            <NewOfficeInquiry isModule={open} setModule={setOpen} reload={reload} data={data} />
            <NewReport isModule={report} setModule={setReport} data={data} />
        </div>
    )
}


export const CustomRenovationInquiriesToolbar = ({ reload, data }: reload) => {
    const [open, setOpen] = useState(false)

    return (
        <div className='flex items-center justify-between p-2'>
            <div className='grid md:flex gap-2 items-center'>
                <IconButton label='add new inquiry' click={() => { setOpen(true) }} icon={<AddIcon />} size='small' />
                <GridToolbarQuickFilter />
            </div>
            <CustomToolbar />
            <NewRenovationInquiry isModule={open} setModule={setOpen} reload={reload} data={data} />
        </div>
    )
}

export const CustomWebSiteInquiriesToolbar = ({ reload, data }: reload) => {
    const [open, setOpen] = useState(false)

    return (
        <div className='flex items-center justify-between p-2'>
            <div className='grid md:flex gap-2 items-center'>
                <IconButton label='add new inquiry' click={() => { setOpen(true) }} icon={<AddIcon />} size='small' />
                <GridToolbarQuickFilter />
            </div>
            <CustomToolbar />
            <NewTechInquiry isModule={open} setModule={setOpen} reload={reload} data={data} />
        </div>
    )
}