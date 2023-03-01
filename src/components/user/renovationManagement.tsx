import { Module, ModuleHeader } from "../module"
import { useState, useEffect } from 'react'
import { PhoneInput, TextInput } from "../inputs"
import { RadioSelect } from "../checkbox"
import { useToken } from "../token"
import { management } from "../interfaces/management"
import axios from "axios"
import { API_URL } from "../api/url"

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    data: string,
    id: number
}

export const RenovationManagement = ({ isModule, setModule, reload, data, id }: type) => {
    const { token } = useToken()
    const [management, setManagement] = useState<management[]>([])
    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    const [contact, setContact] = useState<string | undefined>('+60')
    const [working, setWorking] = useState<string | undefined>('')
    const [insurane, setInsurance] = useState<string | undefined>('no')
    const [wireman, setWireman] = useState<string | undefined>('no')

    const handleManagement = () => {
        axios.post(`${API_URL}/user/get/management`, { token, data, id }).then((result) => {
            if (result.data.status === 200) setManagement(result.data.message)
            else setError(result.data.message)
        })
    }

    useEffect(handleManagement, [token, data, id, isModule])

    useEffect(() => {
        if (management.length) {
            setContact(management.at(0)?.management_contact)
            setWorking(management.at(0)?.management_working)
            setInsurance(management.at(0)?.management_insurance)
            setWireman(management.at(0)?.management_wireman)
        } else {
            setContact('+60')
            setWorking('')
            setInsurance('no')
            setWireman('no')
        }
    }, [management, isModule])

    const handleSubmit = () => {
        setLoading(true)
        setError('')
        setTimeout(() => {
            axios.post(`${API_URL}/user/update/management`, { token, data, id, contact, working, insurane, wireman }).then((result) => {
                if (result.data.status === 200) {
                    reload()
                    setModule(false)
                } else
                    setError(result.data.message)

                setLoading(false)
            })
        }, 1000)
    }

    return (
        <Module isModule={isModule} setModule={setModule}>
            <ModuleHeader error={error} setModule={setModule} click={handleSubmit} loading={loading} />
            <div className='p-4 max-h-[80vh] overflow-hidden overflow-y-scroll sidebar'>
                <form className='w-full grid gap-4' onSubmit={handleSubmit}>
                    <div className="flex items-center gap-4">
                        <PhoneInput label="Contact No" value={contact} change={setContact} disabled={loading} />
                        <TextInput label="Working Hours" value={working} change={setWorking} disabled={loading} />
                    </div>
                    <RadioSelect label="Insurance" value={insurane} change={setInsurance} option={["Yes", "No", 'Waiting']} disabled={loading} />
                    <RadioSelect label="Wireman Certificate" value={wireman} change={setWireman} option={["Yes", "No", 'Waiting']} disabled={loading} />
                </form>
            </div>
        </Module>
    )
}
