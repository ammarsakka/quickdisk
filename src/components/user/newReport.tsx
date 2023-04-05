import { useState } from 'react'
import { Button } from '../buttons'
import { TextInput } from '../inputs'
import { Module } from '../module'

interface type {
    isModule: boolean,
    setModule: any,
    data: string
}

export const NewReport = ({ isModule, setModule, data }: type) => {
    const [start, setStart] = useState('')
    const [end, setEnd] = useState('')

    const handleSubmit = () => {
        if (start && end) {
            window.open(`/company/${data}/report/${start}/${end}`, '_blank')
        }
    }

    return (
        <Module isModule={isModule} setModule={setModule}>
            <div className='p-4 max-h-[80vh] overflow-hidden overflow-y-scroll sidebar'>
                <form className='w-full grid gap-4' onSubmit={handleSubmit}>
                    <h1 className='capitalize text-lg font-bold tracking-wider'>report information</h1>
                    <div className='flex gap-4 items-center'>
                        <TextInput label='Starting Date' value={start} change={setStart} required type='date' />
                        <TextInput label='Ending Date' value={end} change={setEnd} required type='date' />
                    </div>

                    <div className='flex gap-4 items-center'>
                        <Button label='close' click={() => { setModule(false) }} size='large' variant='outlined' />
                        <Button label='generate' click={handleSubmit} size='large' variant='contained' />
                    </div>
                </form>
            </div>
        </Module>
    )
}
