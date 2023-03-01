import React, { useState } from 'react'
import { PasswordInput } from '../inputs'
import { Module, ModuleHeader } from '../module'
import axios from 'axios'
import { useToken } from '../token'
import { API_URL } from '../api/url'

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    id: any
}

export const UserPassword = ({ isModule, setModule, reload, id }: type) => {
    const { token } = useToken()

    const [password, setPassword] = useState<string>('')
    const [confPassword, setConfPassword] = useState<string>('')

    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')


    const handleSubmit = () => {
        setLoading(true)
        setError('')
        setTimeout(() => {
            if (password === confPassword) {
                axios.post(`${API_URL}/admin/update/user/password`, { password, token, id }).then((result) => {
                    if (result.data.status === 200) {
                        reload()
                        setModule(false)
                    } else
                        setError(result.data.message)

                    setLoading(false)
                })
            } else {
                setError("Password doesn't match")
                setLoading(false)
            }
        }, 1000)
    }

    return (
        <Module isModule={isModule} setModule={setModule}>
            <ModuleHeader error={error} setModule={setModule} click={handleSubmit} loading={loading} />
            <div className='p-4'>
                <form className='w-full grid gap-4' onSubmit={handleSubmit}>
                    <PasswordInput label='password' value={password} change={setPassword} required disabled={loading} />
                    <PasswordInput label='confirm password' value={confPassword} change={setConfPassword} required disabled={loading} />
                </form>
            </div>
        </Module>
    )
}
