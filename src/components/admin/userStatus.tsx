import React, { useCallback, useEffect, useMemo, useState } from 'react'
import { SelectInput } from '../inputs'
import { Module, ModuleHeader } from '../module'
import axios from 'axios'
import { useToken } from '../token'
import { user } from '../interfaces/users'
import { API_URL } from '../api/url'

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    id: any
}

const statusOptions = [
    "active",
    "inactive",
]

export const UserStatus = ({ isModule, setModule, reload, id }: type) => {
    const { token } = useToken()
    const [user, setUser] = useState<user[]>([])

    const [status, setStatus] = useState<string>('')

    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    const handleUser = useCallback(() => {
        axios.post(`${API_URL}/admin/get/user`, { token, id }).then((result) => {
            if (result.data.status !== 200) setError(result.data.message)
            else
                if (result.data) return setUser(result.data.message)
                else return
        })
    }, [id, token])

    useMemo(handleUser, [handleUser, isModule])

    useEffect(() => {
        if (user?.length !== 0) {
            setStatus(user[0]?.status)
        }
    }, [user])

    const handleSubmit = () => {
        setLoading(true)
        setError('')
        setTimeout(() => {
            axios.post(`${API_URL}/admin/update/user/status`, { status, token, id }).then((result) => {
                if (result.data.status === 200) {
                    reload()
                    setModule(false)
                } else
                    setError(result.data.message)

                setLoading(false)
            })
        }, 1000)
    }

    return (
        <Module isModule={isModule} setModule={setModule}>
            <ModuleHeader error={error} setModule={setModule} click={handleSubmit} loading={loading} />
            <div className='p-4'>
                <form className='w-full grid gap-4' onSubmit={handleSubmit}>
                    <SelectInput label='access' values={status} change={setStatus} options={statusOptions} disabled={loading} required />
                </form>
            </div>
        </Module>
    )
}
