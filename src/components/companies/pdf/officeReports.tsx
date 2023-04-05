"use client"
import { useToken } from '../../token'
import axios from 'axios'
import React, { useState, useCallback, useEffect } from 'react'
import { PDFViewer } from '@react-pdf/renderer';
import { API_URL } from '../../api/url';
import GenerateOfficePdfReport from './generatePDF/officeReport';
import { office } from '../../interfaces/office';

type Props = {
    slug: string,
    start: string,
    end: string
}

export default function OfficeReports({ slug, start, end }: Props) {
    const company = slug
    const { token } = useToken()

    const [inquiries, setInquiries] = useState<office[]>([])

    const handleInquires = useCallback(() => {
        axios.post(`${API_URL}/user/get/office/reports`, { token, company, start, end }).then((result) => {
            setInquiries(result.data.message)
        })
    }, [token, company, start, end])

    useEffect(handleInquires, [handleInquires])


    return (
        <PDFViewer className='w-full h-full min-h-screen'>
            <GenerateOfficePdfReport office={inquiries} />
        </PDFViewer>
    )
}