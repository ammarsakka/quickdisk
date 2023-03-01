"use client"
import { Renovation } from '../../interfaces/renovation'
import { useToken } from '../../token'
import { PDFViewer } from '@react-pdf/renderer'
import axios from 'axios'
import React, {useCallback, useEffect, useState} from 'react'
import GenerateRenovationPdf from './generatePDF/renovation'
import { API_URL } from '../../api/url'

type Props = {
    slug: string,
    inquiry: string
}

export const RenovationPDF = ({ slug, inquiry }: Props) => {
    const company = slug
    const { token } = useToken()

    const [inquiries, setInquiries] = useState<Renovation[]>([])

    const handleInquires = useCallback(() => {
        axios.post(`${API_URL}/user/get/renovation/form`, { token, company, inquiry }).then((result) => {
            setInquiries(result.data.message)
        })
    }, [token, company, inquiry])

    useEffect(handleInquires, [handleInquires])


    return (
        <PDFViewer className='w-full h-full min-h-screen'>
            <GenerateRenovationPdf renovation={inquiries} />
        </PDFViewer>
    )
}
