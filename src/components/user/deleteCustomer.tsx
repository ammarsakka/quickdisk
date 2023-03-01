import React, { useEffect, useState } from 'react'
import { Module } from '../module'
import axios from 'axios'
import { useToken } from '../token'
import DangerousIcon from '@mui/icons-material/Dangerous';
import { IconDeleteButton } from '../buttons'
import DeleteIcon from '@mui/icons-material/Delete';
import CloseIcon from '@mui/icons-material/Close';
import { customer } from '../interfaces/customer'
import { API_URL } from '../api/url';

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    id: number,
    data: string
}

export const DeleteCustomer = ({ isModule, setModule, reload, id, data }: type) => {
    const { token } = useToken()

    const [loading, setLoading] = useState(false)

    const [customer, setCustomer] = useState<customer[]>([])

    const handleCustomer = () => {
        axios.post(`${API_URL}/user/get/customer`, { token, id, data }).then((result) => {
            if (result.data.status === 200) setCustomer(result.data.message)
        })
    }

    useEffect(handleCustomer, [data, id, token, isModule])

    const handleSubmit = () => {
        setLoading(true)
        setTimeout(() => {
            axios.post(`${API_URL}/user/delete/customer`, { token, id, data }).then((result) => {
                if (result.data.status === 200) {
                    reload()
                    setModule(false)
                }

                setLoading(false)
            })
        }, 1000)
    }

    return (
        <Module isModule={isModule} setModule={setModule}>
            <div className='p-4 flex flex-col gap-4 justify-center'>
                <div className='flex justify-center items-center'>
                    <DangerousIcon className='text-[5rem] text-red-700' />
                </div>
                <div className='flex items-center justify-center px-4'>
                    <p className='text-center text-xl tracking-wide'>Are you sure you want to delete <span className='font-bold capitalize'>{customer[0]?.name}</span>?</p>
                </div>
                <div className='w-full flex gap-4 items-center px-4'>
                    <IconDeleteButton label='delete' click={handleSubmit} disabled={loading} loading={loading} size='large' variant='contained' icon={<DeleteIcon />} />
                    <IconDeleteButton label='close' click={() => { setModule(false) }} size='large' variant='outlined' icon={<CloseIcon />} />
                </div>
            </div>
        </Module>
    )
}
