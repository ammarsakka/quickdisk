import React, { useState, useEffect, useCallback } from 'react'
import { Module, ModuleHeader } from '../module'
import { useToken } from '../token'
import axios from 'axios';
import { API_URL } from '../api/url';
import { SelectInput } from '../inputs';

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    data: string,
    id: number
}

interface status {
    id: number,
    inquiry_id: string,
    customer_id: number,
    user_id: number,
    agency: string,
    status: string,
    date: string,
    created: string
}

const options = [
    'approve',
    'pending',
    'reject'
]

export const UpdateStatus = ({ isModule, setModule, reload, data, id }: type) => {
    const { token } = useToken()

    const [list, setList] = useState<status[]>([])

    const [status, setStatus] = useState('')

    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    const handleList = useCallback(() => {
        axios.post(`${API_URL}/user/get/status`, { data, token, id }).then((result) => {
            setList(result.data.message)
        })
    }, [data, token, id])

    useEffect(() => {
        setList([])
        handleList()
    }, [isModule])

    useEffect(() => {
        setStatus(list[0]?.status === 'approved' ? 'approve' : list[0]?.status === 'rejected' ? 'reject' : list[0]?.status)
    }, [list])

    const handleSubmit = () => {
        setLoading(true)
        setError('')

        setTimeout(() => {
            axios.post(`${API_URL}/user/update/status`, { status, data, token, id }).then((result) => {
                if (result.data.status === 200) {
                    reload()
                    setModule(false)
                } else {
                    setError(result.data.message)
                }

                setLoading(false)
            })
        }, 1000)
    }

    useEffect(() => {
        setList([])
    }, [isModule])

    return (
        <Module isModule={isModule} setModule={setModule}>
            <ModuleHeader error={error} setModule={setModule} click={handleSubmit} loading={loading} />
            <div className='p-4 max-h-[80vh] overflow-hidden overflow-y-scroll sidebar'>
                <form className='w-full grid gap-4' onSubmit={handleSubmit}>

                    <h1 className='capitalize text-lg font-bold tracking-wider'>Status</h1>

                    <div className='flex items-center gap-4'>
                        <SelectInput
                            label='Status'
                            values={status}
                            change={setStatus}
                            options={options}
                            required
                        />
                    </div>
                </form>
            </div>
        </Module>
    )
}
