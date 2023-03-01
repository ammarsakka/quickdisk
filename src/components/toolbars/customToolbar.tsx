"use client"

import React from 'react'
import { GridToolbarContainer, GridToolbarExport } from '@mui/x-data-grid'

export const CustomToolbar = () => {
    return (
        <GridToolbarContainer>
            <GridToolbarExport />
        </GridToolbarContainer>
    )
}