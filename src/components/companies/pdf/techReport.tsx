"use client"
import { useToken } from '../../token'
import axios from 'axios'
import React, { useState, useCallback, useEffect } from 'react'
import { PDFViewer } from '@react-pdf/renderer';
import { API_URL } from '../../api/url';
import { Tech } from '../../interfaces/tech';
import GenerateTechPdfReport from './generatePDF/techReport';

type Props = {
    slug: string,
    start: string,
    end: string
}

export default function TectReports({ slug, start, end }: Props) {
    const company = slug
    const { token } = useToken()

    const [inquiries, setInquiries] = useState<Tech[]>([])

    const handleInquires = useCallback(() => {
        axios.post(`${API_URL}/user/get/tech/reports`, { token, company, start, end }).then((result) => {
            setInquiries(result.data.message)
        })
    }, [token, company, start, end])

    useEffect(handleInquires, [handleInquires])


    return (
        <PDFViewer className='w-full h-full min-h-screen'>
            <GenerateTechPdfReport tech={inquiries} />
        </PDFViewer>
    )
}