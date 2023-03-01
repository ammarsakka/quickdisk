"use client"

import company from "../lib/interfaces/company"
import axios from "axios"
import { useState, useCallback, useEffect } from "react"
import { useToken } from "./token"
import { API_URL } from "./api/url"


export const useCompanies = () => {
    const [companies, setCompanies] = useState<company[]>([])
    const { token } = useToken()

    const handleCompanies = useCallback(() => {
        axios.post(`${API_URL}/user/get/companies`, { token }).then((result) => {
            setCompanies(result.data.message)
        })
    }, [token])

    useEffect(handleCompanies, [handleCompanies])

    const reload = () => {
        setCompanies([])
        handleCompanies()
    }

    return {
        companies: companies,
        reloadCompanies: reload
    }
}
