"use client"
import { office } from '../../interfaces/office'
import { useToken } from '../../token'
import axios from 'axios'
import React, { useState, useCallback, useEffect } from 'react'
import { PDFViewer } from '@react-pdf/renderer';
import GenerateOfficePdf from './generatePDF/office'
import { API_URL } from '../../api/url'

type Props = {
    slug: string,
    inquiry: string
}

export const OfficePDF = ({ slug, inquiry }: Props) => {
    const company = slug
    const { token } = useToken()

    const [inquiries, setInquiries] = useState<office[]>([])

    const handleInquires = useCallback(() => {
        axios.post(`${API_URL}/user/get/office/form`, { token, company, inquiry }).then((result) => {
            setInquiries(result.data.message)
        })
    }, [token, company, inquiry])

    useEffect(handleInquires, [handleInquires])


    return (
        <PDFViewer className='w-full h-full min-h-screen'>
            <GenerateOfficePdf office={inquiries} />
        </PDFViewer>
    )

}
