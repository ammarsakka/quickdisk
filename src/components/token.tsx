import { useState } from "react"

export const useToken = () => {
    const [token, setToken] = useState('')
    const storageName = 'token'

    const setUserToken = (token: string) => {
        window.localStorage.setItem(storageName, token)
        setToken(token)
    }

    const deleteToken = () => {
        window.localStorage.removeItem(storageName)
        setToken('')
    }

    const getToken = () => {
        return window.localStorage.getItem(storageName)
    }

    return {
        token: getToken(),
        setToken: setUserToken,
        current: token,
        deleteToken: deleteToken
    }
}
