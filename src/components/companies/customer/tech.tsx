"use client"
import { DataGrid } from '@mui/x-data-grid'
import axios from 'axios'
import { Link, useNavigate } from 'react-router-dom'
import React, { useState, useEffect, useCallback } from 'react'
import { Controller } from '../../controller/controller'
import { useToken } from '../../token'
import { Link as Links } from '@mui/material'
import moment from 'moment'
import { CustomWebSiteInquiriesToolbar } from '../../toolbars/inquiries'
import { Tech } from '../../interfaces/tech'
import { HashLoader } from 'react-spinners'
import { API_URL } from '../../api/url'

type Props = {
    slug: string,
    user: string
}

export default function CustomerTech({ slug, user }: Props) {
    const company = slug
    const page = `${company} Customer`
    const { token } = useToken()
    const Router = useNavigate()

    const [inquiries, setInquiries] = useState<Tech[]>([])

    const handleInquires = useCallback(() => {
        axios.post(`${API_URL}/user/get/tech/customer`, { token, company, user }).then((result) => {
            if (result.data.status === 200)
                setInquiries(result.data.message)
            else
                Router('/')
        })
    }, [token, Router, company, user])

    useEffect(handleInquires, [handleInquires])

    const reload = () => {
        handleInquires()
    }

    const customToolbar = () => {
        return (
            <CustomWebSiteInquiriesToolbar reload={reload} data={company} />
        )
    }

    if (!inquiries.length)
        return (
            <div className='flex justify-center items-center w-full min-h-sidebar'>
                <HashLoader color="#36d7b7" />
            </div>
        )
    else
        return (
            <Controller page={page}>
                <DataGrid
                    columns={[
                        { field: 'inquiry_id', headerName: 'No', flex: 1, renderCell: (e) => <Link target={'_blank'} to={`/company/${company}/form/${e.row.inquiry_id}`}><Links className='cursor-pointer'>{e.formattedValue}</Links></Link> },
                        { field: 'name', headerName: 'Name', flex: 1, renderCell: (e) => <Link to={`/company/${company}/customer/${e.row.id}`}><Links className='cursor-pointer'>{e.formattedValue}</Links></Link> },
                        { field: 'username', headerName: 'Person in Charge', flex: 1 },
                        { field: 'date', headerName: 'Date', flex: 1, renderCell: (e) => moment(e.formattedValue).format('MMM DD, Y') },
                        { field: 'created', headerName: 'Created', flex: 1, renderCell: (e) => moment(e.formattedValue).format('MMM DD, Y') },
                        { field: 'action', headerName: '', flex: 1 },
                    ]}
                    rows={inquiries}
                    disableSelectionOnClick
                    sx={{ width: '100%', height: '100%', minHeight: 'calc(100vh - 45px)', textTransform: 'capitalize' }}
                    components={{ Toolbar: customToolbar }}
                />
            </Controller>
        )
}