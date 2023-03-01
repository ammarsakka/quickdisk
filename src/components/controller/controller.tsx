import React, { ReactNode } from 'react'
import { Header } from './header'
import { Sidebar } from './sidebar'

interface page {
    children: ReactNode,
    page: string,
}

export const Controller = ({ children, page }: page) => {
    return (
        <div className='min-h-screen max-h-sceen w-full flex'>
            <div className='w-1/4 max-w-[15rem] flex-grow'>
                <Sidebar page={page} />
            </div>
            <div className='w-3/4 flex-grow'>
                <Header page={page} />
                <div>
                    {children}
                </div>
            </div>
        </div>
    )
}
