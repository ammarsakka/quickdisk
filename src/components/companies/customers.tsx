"use client"
import { CustomersActions } from '../actions/customers'
import { Controller } from '../controller/controller'
import { customer } from '../interfaces/customer'
import { useToken } from '../token'
import { CustomCustomersToolbar } from '../toolbars/customers'
import { DeleteCustomer } from '../user/deleteCustomer'
import { EditCusomter } from '../user/editCustomer'
import { DataGrid } from '@mui/x-data-grid'
import axios from 'axios'
import { useNavigate } from 'react-router-dom'
import { useState, useCallback, useEffect } from 'react'
import { HashLoader } from 'react-spinners'
import { API_URL } from '../api/url'

export default function Customers({ params }: { params: { slug: string } }) {
    const company = params.slug
    const page = `${company} Customers`
    const { token } = useToken()
    const Router = useNavigate()
    const [customers, setCustomers] = useState<customer[]>([])

    const [id, setId] = useState<number>(0)
    const [isEdit, setEdit] = useState(false)
    const [isDelete, setDelete] = useState(false)

    const handleCustomers = useCallback(() => {
        axios.post(`${API_URL}/user/get/customers`, { company, token }).then((result) => {
            if (result.data.status === 200) setCustomers(result.data.message)
            else Router('/')
        })
    }, [token, company, Router])

    useEffect(handleCustomers, [handleCustomers])

    useEffect(handleCustomers, [handleCustomers, company])

    const reload = () => {
        handleCustomers()
    }

    const customToolbar = () => {
        return (
            <CustomCustomersToolbar reload={reload} data={company} />
        )
    }

    const handleAction = (id: any, action: string) => {
        setId(id)

        switch (action) {
            case 'edit':
                setEdit(true)
                break
            case 'delete':
                setDelete(true)
                break

            default:
                return
        }
    }

    if (!customers.length)
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
                        { field: 'name', headerName: 'Name', flex: 1 },
                        { field: 'email', headerName: 'Email', flex: 1 },
                        { field: 'phone', headerName: 'Phone', flex: 1 },
                        { field: 'company', headerName: 'Company', flex: 1 },
                        { field: 'address', headerName: 'Address', flex: 1 },
                        { field: 'action', headerName: '', flex: 1, renderCell: ({ id }) => <CustomersActions id={id} handleAction={handleAction} /> },
                    ]}
                    rows={customers}
                    disableSelectionOnClick
                    sx={{ width: '100%', height: '100%', minHeight: 'calc(100vh - 45px)', textTransform: 'capitalize' }}
                    components={{ Toolbar: customToolbar }}
                />
                <EditCusomter isModule={isEdit} setModule={setEdit} reload={reload} id={id} data={company} />
                <DeleteCustomer isModule={isDelete} setModule={setDelete} reload={reload} id={id} data={company} />
            </Controller>
        )
}