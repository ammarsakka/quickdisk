"use client"

import { Button } from './components/buttons'
import { CheckBox } from './components/checkbox'
import { TextInput, PasswordInput } from './components/inputs'
import React, { useEffect, useState } from 'react'
import Divider from '@mui/material/Divider/Divider'
import { Error } from './components/error'
import axios from 'axios'
import { useNavigate } from 'react-router-dom'
import { API_URL } from './components/api/url'

export default function Login() {
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')
    const [remember, setRemember] = useState(false)
    const [error, setError] = useState('')
    const [loading, setLoading] = useState(false)
    const Router = useNavigate()

    const handleClick = () => {
        setError('')
        setLoading(true)
        setTimeout(() => {
            axios.post(`${API_URL}/auth/login`, { username, password })
                .then((result) => {
                    if (result.data.status === 200) {
                        if (remember)
                            window.localStorage.setItem('user', JSON.stringify({ username, password }))

                        window.localStorage.setItem('token', result.data.message)
                        Router('/controller/home')
                    }
                    else
                        setError(result.data.message)

                    setLoading(false)
                })
        }, 1000)
    }

    useEffect(() => {
        const user = window.localStorage.getItem('user')

        if (user) {
            const userDetails = JSON.parse(user)
            setUsername(userDetails.username)
            setPassword(userDetails.password)
            setRemember(true)
        }
    }, [])

    return (
        <div className='min-h-screen flex justify-center items-center'>
            <div className='bg-gradient-to-br from-slate-100/25 to-slate-300/20 p-4 max-w-sm border rounded backdrop-blur shadow-md grid gap-4 w-full'>
                <h1 className='text-2xl font-semibold tracking-wider'>Login</h1>
                <Divider />
                {error && <Error message={error} />}
                <form className='grid gap-4 w-full'>
                    <TextInput label='username' value={username} change={setUsername} disabled={loading} required />
                    <PasswordInput label='password' value={password} change={setPassword} disabled={loading} required />
                    <div className='flex justify-between items-center'>
                        <CheckBox label='Remember me' change={setRemember} disabled={loading} checked={remember} />
                    </div>
                    <Button label='sign in' click={handleClick} loading={loading} disabled={loading} size='large' />
                </form>
            </div>
        </div>
    )
}