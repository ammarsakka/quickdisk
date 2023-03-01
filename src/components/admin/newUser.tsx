import React, { useState, useEffect } from 'react'
import { PasswordInput, SelectInput, SelectInputMultiple, TextInput } from '../inputs'
import { Module, ModuleHeader } from '../module'
import axios from 'axios'
import { useToken } from '../token'
import companiesList from './companiesList'
import { API_URL } from '../api/url'

interface type {
    isModule: boolean,
    setModule: any,
    reload: any
}

const statusOptions = [
    "active",
    "inactive",
]

export const NewUser = ({ isModule, setModule, reload }: type) => {
    const { token } = useToken()
    const [first, setFirst] = useState('')
    const [last, setLast] = useState('')
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')
    const [status, setStatus] = useState('')
    const [access, setAccess] = useState<string[]>([])

    const [options, setOptions] = useState<string[]>([])

    useEffect(() => {
        companiesList(token).then((result) => {
            setOptions(result)
        })
    }, [token])

    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    const handleSubmit = () => {
        setLoading(true)
        setError('')
        setTimeout(() => {
            axios.post(`${API_URL}/admin/set/user`, { first, last, username, password, status, accesss: access, token }).then((result) => {
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
                    <TextInput label='username' value={username} change={setUsername} disabled={loading} required />
                    <PasswordInput label='password' value={password} change={setPassword} disabled={loading} required />
                    <div className='flex items-center gap-4 w-full'>
                        <div className='w-2/3 flex-grow'>
                            <SelectInputMultiple label='access' values={access} change={setAccess} options={options} disabled={loading} required />
                        </div>
                        <div className='w-1/3 flex-grow'>
                            <SelectInput label='status' values={status} change={setStatus} options={statusOptions} disabled={loading} required />
                        </div>
                    </div>
                </form>
            </div>
        </Module>
    )
}
