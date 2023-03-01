import React, { useCallback, useEffect, useMemo, useState } from 'react'
import { SelectInputMultiple } from '../inputs'
import { Module, ModuleHeader } from '../module'
import axios from 'axios'
import { useToken } from '../token'
import { user } from '../interfaces/users'
import companiesList from './companiesList'
import { API_URL } from '../api/url'

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    id: any
}

export const UserAccess = ({ isModule, setModule, reload, id }: type) => {
    const { token } = useToken()
    const [user, setUser] = useState<user[]>([])

    const [access, setAccess] = useState<string[]>([])

    const [options, setOptions] = useState<string[]>([])

    useEffect(() => {
        companiesList(token).then((result) => {
            setOptions(result)
        })
    }, [token])

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
            setAccess(JSON.parse(user[0]?.access))
        }
    }, [user])

    const handleSubmit = () => {
        setLoading(true)
        setError('')
        setTimeout(() => {
            axios.post(`${API_URL}/admin/update/user/access`, { accesss: access, token, id }).then((result) => {
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
                    <SelectInputMultiple label='access' values={access} change={setAccess} options={options} disabled={loading} required />
                </form>
            </div>
        </Module>
    )
}
