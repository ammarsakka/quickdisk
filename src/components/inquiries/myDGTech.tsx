"use client"
import { DataGrid } from '@mui/x-data-grid'
import axios from 'axios'
import { Link, useNavigate } from "react-router-dom"
import { useState, useEffect, useCallback } from 'react'
import { Controller } from '../controller/controller'
import { useToken } from '../token'
import { Link as Links } from '@mui/material'
import moment from 'moment'
import { CustomWebSiteInquiriesToolbar } from '../toolbars/inquiries'
import { Tech } from '../interfaces/tech'
import { TechActions } from '../actions/tech'
import { Comments } from '../user/comments'
import { HashLoader } from 'react-spinners'
import { API_URL } from '../api/url'

type Props = {
    slug: string
}

export default function MyDGTech({ slug }: Props) {
    const company = slug
    const page = `${company} Inquiries`
    const { token } = useToken()
    const Router = useNavigate()

    const [inquiries, setInquiries] = useState<Tech[]>()

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
        axios.post(`${API_URL}/user/get/tech/inqueries`, { token, company }).then((result) => {
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
            <CustomWebSiteInquiriesToolbar reload={reload} data={company} />
        )
    }

    if (!inquiries)
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
                        { field: 'email', headerName: 'Email', flex: 1 },
                        { field: 'phone', headerName: 'Phone', flex: 1 },
                        { field: 'company', headerName: 'Company', flex: 1 },
                        { field: 'date', headerName: 'Date', flex: 1, renderCell: (e) => moment(e.formattedValue).format('MMM DD, Y') },
                        { field: 'username', headerName: 'Person in Charge', flex: 1 },
                        { field: 'action', headerName: '', flex: 1, renderCell: ({ id }) => <TechActions id={id} handleAction={handleAction} /> },
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