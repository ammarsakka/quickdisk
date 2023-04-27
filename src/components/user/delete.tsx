import { useState } from 'react'
import { Module } from '../module'
import { useToken } from '../token'
import axios from 'axios';
import { API_URL } from '../api/url';
import ReportGmailerrorredIcon from '@mui/icons-material/ReportGmailerrorred';
import { Button } from '../buttons';

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    data: string,
    id: number
}

export const DeleteInquiry = ({ isModule, setModule, reload, data, id }: type) => {
    const { token } = useToken()

    const [loading, setLoading] = useState(false)

    const handleSubmit = () => {
        setLoading(true)

        setTimeout(() => {
            axios.post(`${API_URL}/user/delete/inquiry`, { data, token, id }).then((result) => {
                reload()
                setModule(false)
                setLoading(false)
            })
        }, 1000)
    }

    return (
        <Module isModule={isModule} setModule={setModule}>
            <div className='p-4 max-h-[80vh] overflow-hidden overflow-y-scroll sidebar'>
                <form className='w-full grid gap-4' onSubmit={handleSubmit}>
                    <ReportGmailerrorredIcon className='text-red-500 !text-[12rem] mx-auto' />
                    <h1 className='capitalize text-2xl font-bold tracking-wider text-center'>Are you sure you want to delete this inquiry?</h1>
                    <div className='flex items-center gap-4'>
                        <Button label='delete' click={handleSubmit} disabled={loading} loading={loading} size='large' variant='contained' color='error' />
                        <Button label='close' click={() => { setModule(false) }} disabled={loading} loading={loading} size='large' variant='outlined' color='info' />
                    </div>
                </form>
            </div>
        </Module>
    )
}
