import React, { useState, useEffect } from 'react'
import { PhoneInput, TextInput } from '../inputs'
import { Module, ModuleHeader } from '../module'
import axios from 'axios'
import { useToken } from '../token'
import { customer } from '../interfaces/customer'
import { API_URL } from '../api/url'

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    data: string,
    id: number
}

export const EditCusomter = ({ isModule, setModule, reload, data, id }: type) => {
    const { token } = useToken()
    const [name, setName] = useState('')
    const [position, setPosition] = useState('')
    const [email, setEmail] = useState('')
    const [address, setAddress] = useState('')
    const [phone, setPhone] = useState('+60')
    const [company, setCompany] = useState('')
    const [business, setBusiness] = useState('')
    const [size, setSize] = useState('')


    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    const [errorName, setErrorName] = useState(false)
    const [errorEmail, setErrorEmail] = useState(false)

    const [customer, setCustomer] = useState<customer[]>([])

    const handleCustomer = () => {
        axios.post(`${API_URL}/user/get/customer`, { token, id, data }).then((result) => {
            if (result.data.status === 200) setCustomer(result.data.message)
        })
    }

    useEffect(handleCustomer, [data, id, token, isModule])

    useEffect(() => {
        if (customer){
            setName(customer[0]?.name)
            setEmail(customer[0]?.email)
            setPhone(customer[0]?.phone)
            setPosition(customer[0]?.position)
            setAddress(customer[0]?.address)

            setCompany(customer[0]?.company)
            setBusiness(customer[0]?.business)
            setSize(customer[0]?.size)
        }
    }, [customer, isModule])

    const handleSubmit = () => {
        setLoading(true)
        setError('')
        setErrorName(false)
        setErrorEmail(false)
        if (name && email) {
            setTimeout(() => {
                axios.post(`${API_URL}/user/update/customer`, { name, position, email, address, phone, company, business, size, data, token, id }).then((result) => {
                    if (result.data.status === 200) {
                        reload()
                        setModule(false)
                    } else {
                        if (!name) setErrorName(true)
                        if (!email) setErrorEmail(true)
                        setError(result.data.message)
                    }

                    setLoading(false)
                })
            }, 1000)
        } else {
            if (!name) setErrorName(true)
            if (!email) setErrorEmail(true)
            setError('Please fill out the required fields')
            setLoading(false)
        }
    }

    return (
        <Module isModule={isModule} setModule={setModule}>
            <ModuleHeader error={error} setModule={setModule} click={handleSubmit} loading={loading} />
            <div className='p-4'>
                <form className='w-full grid gap-4' onSubmit={handleSubmit}>
                    <h1 className='capitalize text-lg font-bold tracking-wider'>client information</h1>
                    <div className='flex gap-4 items-center'>
                        <TextInput label='Name' value={name} change={setName} disabled={loading} required error={errorName} />
                        <PhoneInput label='Phone Number' value={phone} change={setPhone} disabled={loading} />
                    </div>
                    <div className='flex gap-4 items-center'>
                        <TextInput label='Email' type='email' value={email} change={setEmail} disabled={loading} required error={errorEmail} />
                        <TextInput label='Position' value={position} change={setPosition} disabled={loading} />
                    </div>
                    <TextInput label='Address' value={address} change={setAddress} disabled={loading} multiline />

                    <h1 className='capitalize text-lg font-bold tracking-wider'>company information</h1>
                    <TextInput label='Company Name' value={company} change={setCompany} disabled={loading} />
                    <div className='flex gap-4 items-center'>
                        <TextInput label='Nature of Business' value={business} change={setBusiness} disabled={loading} />
                        <TextInput label='Size (SQFT)' value={size} change={setSize} disabled={loading} />
                    </div>
                </form>
            </div>
        </Module>
    )
}
