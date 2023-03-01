"use client"
import { useToken } from '../../token'
import axios from 'axios'
import React, { useState, useCallback, useEffect } from 'react'
import { PDFViewer } from '@react-pdf/renderer';
import GenerateTechPdf from './generatePDF/tech'
import { Tech } from '../../interfaces/tech'
import { API_URL } from '../../api/url';

type Props = {
    slug: string,
    inquiry: string
}

export const TechPDF = ({ slug, inquiry }: Props) => {
    const company = slug
    const { token } = useToken()

    const [inquiries, setInquiries] = useState<Tech[]>([])

    const handleInquires = useCallback(() => {
        axios.post(`${API_URL}/user/get/tech/form`, { token, company, inquiry }).then((result) => {
            setInquiries(result.data.message)
        })
    }, [token, company, inquiry])

    useEffect(handleInquires, [handleInquires])


    return (
        <PDFViewer className='w-full h-full min-h-screen'>
            <GenerateTechPdf tech={inquiries} />
        </PDFViewer>
    )

}
