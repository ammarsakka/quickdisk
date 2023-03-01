import { useState } from "react"

export const useToken = () => {
    const [token, setToken] = useState('')
    const storageName = 'token'

    const setUserToken = (token: string) => {
        window.localStorage.setItem(storageName, token)
        setToken(token)
    }

    const getToken = () => {
        return window.localStorage.getItem(storageName)
    }

    return {
        token: getToken(),
        setToken: setUserToken,
        current: token
    }
}
