import React from 'react'

interface error {
    message: string
}

export const Error = ({ message }: error) => {
    return (
        <div className='bg-red-500 p-4 rounded'>
            <p className='text-center text-white tracking-wider text-lg'>{message}</p>
        </div>
    )
}
