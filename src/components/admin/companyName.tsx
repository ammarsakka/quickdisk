import React, { useState, useCallback, useEffect, useMemo } from 'react'
import { TextInput } from '../inputs'
import { Module, ModuleHeader } from '../module'
import axios from 'axios'
import { useToken } from '../token'
import company from '../../lib/interfaces/company'
import { API_URL } from '../api/url'

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    id: number
}

export const CompanyName = ({ isModule, setModule, reload, id }: type) => {
    const { token } = useToken()
    const [name, setName] = useState('')

    const [company, setCompany] = useState<company[]>([])

    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    const handleUser = useCallback(() => {
        axios.post(`${API_URL}/admin/get/company`, { token, id }).then((result) => {
            if (result.data.status !== 200) setError(result.data.message)
            else
                if (result.data) return setCompany(result.data.message)
                else return
        })
    }, [id, token])

    useMemo(handleUser, [handleUser, isModule])

    useEffect(() => {
        if (company.length) {
            setName(company[0].name)
        }
    }, [company])

    const handleSubmit = () => {
        setLoading(true)
        setError('')

        setTimeout(() => {
            axios.post(`${API_URL}/admin/update/company/name`, { name, token, id }).then((result) => {
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
                    <TextInput label='Company Name' value={name} change={setName} disabled={loading} required />
                </form>
            </div>
        </Module>
    )
}
