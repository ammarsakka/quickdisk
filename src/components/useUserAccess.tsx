import { useEffect, useState } from "react"
import axios from 'axios'
import { API_URL } from "./api/url";

interface user {
    id: number;
    first_name: string;
    last_name: string;
    username: string;
    password: string;
    salt: string;
    role: string;
    access: string;
    status: string;
    avatar?: null;
}

export const useUserAccess = () => {
    const [hasAccess, setAccess] = useState<user[]>()

    useEffect(() => {
        const token = window.localStorage.getItem('token')

        if (token){
            axios.post(`${API_URL}/auth/check`, { token }).then((result) => {
                setAccess(result.data.message)
            })
        }
    }, [])


    return {
        hasAccess: hasAccess,
    }
}
