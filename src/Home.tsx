import { useUserAccess } from "./components/useUserAccess"
import { HashLoader } from "react-spinners"
import { useNavigate } from 'react-router-dom'
import { useEffect } from "react"

export default function Home() {
    const { hasAccess } = useUserAccess()
    const router = useNavigate()

    useEffect(() => {
        if (hasAccess !== undefined) {
            if (hasAccess.length)
                return router(`/controller/home`)
            else
                return router('/login')
        } else
            return router('/login')
    }, [hasAccess, router])

    return (
        <main className="min-h-screen flex justify-center items-center">
            <HashLoader color="#36d7b7" />
        </main>
    )

}
