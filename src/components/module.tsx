import React, { ReactNode } from 'react'
import { IconButton } from './buttons'
import SaveIcon from '@mui/icons-material/Save';
import CloseIcon from '@mui/icons-material/Close';

interface type {
    children: ReactNode,
    isModule: boolean,
    setModule: any,
}

interface header {
    setModule: any,
    error: string,
    click: any,
    loading: boolean
}

export const Module = ({ children, isModule, setModule }: type) => {
    return (
        <div className={`top-0 left-0 w-full h-full flex justify-center items-center z-10 ${isModule ? 'fixed' : 'hidden'}`}>
            <span className='absolute top-0 left-0 w-full h-full bg-black/20 backdrop-blur-sm'
            // onClick={() => { setModule(false) }}
            ></span>
            <div className='bg-gradient-to-br from-stone-100 to-stone-200 rounded shadow z-10 w-full max-w-xl'>
                {children}
            </div>
        </div>
    )
}

export const ModuleHeader = ({ setModule, error, click, loading }: header) => {
    return (
        <div className='flex justify-between items-center gap-2 shadow p-4'>
            <div className='w-full'>
                {error && <p className='bg-red-500 text-white font-semibold p-[5px] rounded shadow'>{error}</p>}
            </div>
            <div className='flex items-center gap-2'>
                <IconButton label='save' click={click} icon={<SaveIcon />} size='small' loading={loading} disabled={loading} />
                <IconButton label='close' click={() => { setModule(false) }} icon={<CloseIcon />} size='small' variant='outlined' />
            </div>
        </div>
    )
}