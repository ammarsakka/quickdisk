import React, { useState } from 'react'
import { ImageInput, TextInput } from '../inputs'
import { Module, ModuleHeader } from '../module'
import axios from 'axios'
import { useToken } from '../token'
import { API_URL } from '../api/url'

interface type {
    isModule: boolean,
    setModule: any,
    reload: any
}

export const NewCompany = ({ isModule, setModule, reload }: type) => {
    const { token } = useToken()
    const [name, setName] = useState('')
    const [image, setImage] = useState<FileList>()

    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    const handleSubmit = () => {
        setLoading(true)
        setError('')

        setTimeout(() => {
            axios.post(`${API_URL}/admin/set/company`, { image: image ? image[0] : undefined, name, token }, { headers: { "Content-Type": "multipart/form-data" } }).then((result) => {
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
                    <ImageInput label='upload company logo' value={image} change={setImage} disabled={loading} required />
                    <TextInput label='Company Name' value={name} change={setName} disabled={loading} required />
                </form>
            </div>
        </Module>
    )
}
