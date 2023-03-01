"use client"
import { Controller } from '../controller/controller'
import { office } from '../interfaces/office'
import { useToken } from '../token'
import { CustomOfficeInquiriesToolbar } from '../toolbars/inquiries'
import { DataGrid } from '@mui/x-data-grid'
import axios from 'axios'
import moment from 'moment'
import { Link, useNavigate } from 'react-router-dom'
import { Link as Links } from '@mui/material'
import React, { useCallback, useEffect, useState } from 'react'
import { OfficeActions } from '../actions/office'
import { Comments } from '../user/comments'
import { HashLoader } from 'react-spinners'
import { API_URL } from '../api/url'

export default function Novux({ slug }: { slug: string }) {
    const company = slug
    const page = `${company} Inquiries`
    const { token } = useToken()
    const Router = useNavigate()

    const [inquiries, setInquiries] = useState<office[]>([])

    const [id, setId] = useState<number>(0)

    const [edit, setEdit] = useState(false)

    const handleAction = (id: any, action: string) => {
        setId(id)

        switch (action) {
            case 'comment':
                setEdit(true)
                break

            default:
                return
        }
    }

    const handleInquires = useCallback(() => {
        axios.post(`${API_URL}/user/get/office/inqueries`, { token, company }).then((result) => {
            if (result.data.status === 200)
                setInquiries(result.data.message)
            else
                Router('/')
        })
    }, [token, company, Router])

    useEffect(handleInquires, [handleInquires])

    const reload = () => {
        handleInquires()
    }

    const customToolbar = () => {
        return (
            <CustomOfficeInquiriesToolbar reload={reload} data={company} />
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
                        { field: 'name', headerName: 'Name', flex: 1, renderCell: (e) => <Link to={`/company/${company}/customer/${e.row.customer_id}`}><Links className='cursor-pointer'>{e.formattedValue}</Links></Link> },
                        { field: 'username', headerName: 'Person in Charge', flex: 1 },
                        { field: 'agency', headerName: 'Agency', flex: 1 },
                        { field: 'date', headerName: 'Date', flex: 1, renderCell: (e) => moment(e.formattedValue).format('MMM DD, Y') },
                        { field: 'created', headerName: 'Created', flex: 1, renderCell: (e) => moment(e.formattedValue).format('MMM DD, Y') },
                        { field: 'action', headerName: '', flex: 1, renderCell: ({ id }) => <OfficeActions id={id} handleAction={handleAction} /> },
                    ]}
                    rows={inquiries}
                    disableSelectionOnClick
                    sx={{ width: '100%', height: '100%', minHeight: 'calc(100vh - 45px)', textTransform: 'capitalize' }}
                    components={{ Toolbar: customToolbar }}
                />
                <Comments isModule={edit} setModule={setEdit} reload={reload} id={id} data={company} />
            </Controller>
        )
}