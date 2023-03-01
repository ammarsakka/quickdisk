import React, { useCallback, useEffect, useMemo, useState } from 'react'
import { TextInput } from '../inputs'
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

export const EditUser = ({ isModule, setModule, reload, id }: type) => {
    const { token } = useToken()
    const [user, setUser] = useState<user[]>()

    const [first, setFirst] = useState('')
    const [last, setLast] = useState('')
    const [username, setUsername] = useState('')

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
        if (user) {
            setFirst(user[0]?.first_name)
            setLast(user[0]?.last_name)
            setUsername(user[0]?.username)
        }
    }, [user])

    const handleSubmit = () => {
        setLoading(true)
        setError('')
        setTimeout(() => {
            axios.post(`${API_URL}/admin/update/user/info`, { first, last, username, token, id }).then((result) => {
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
                    <div className='flex gap-4 items-center'>
                        <TextInput label='First Name' value={first} change={setFirst} disabled={loading} required />
                        <TextInput label='Last Name' value={last} change={setLast} disabled={loading} required />
                    </div>
                    <TextInput label='username' value={username} change={setUsername} disabled required />
                </form>
            </div>
        </Module>
    )
}
