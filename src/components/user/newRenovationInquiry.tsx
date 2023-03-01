import React, { useState, useCallback, useEffect } from 'react'
import { AutoTextInput, CustomersTextInput, SelectInput, TextInput } from '../inputs'
import { Module, ModuleHeader } from '../module'
import axios from 'axios'
import { useToken } from '../token'
import { customer } from '../interfaces/customer'
import moment from 'moment'
import { DesignatedList, TypesList, StatusList, LayoutList, TermsList } from '../lists/renovationInquiryLists'
import { API_URL } from '../api/url'

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    data: string
}

export const NewRenovationInquiry = ({ isModule, setModule, reload, data }: type) => {
    const { token } = useToken()
    const [customers, setCustomers] = useState<customer[]>([])

    const [customerName, setCustomerName] = useState('')
    const [customer, setCustomer] = useState(0)
    const [date, setDate] = useState(() => {
        return moment().format('Y-MM-DD')
    })

    const [propertyDesignated, setPropertyDesignated] = useState('')
    const [propertyType, setPropertyType] = useState('')
    const [propertyStatus, setPropertyStatus] = useState('')
    const [propertyLayout, setPropertyLayout] = useState('')

    const [financeTerms, setFinanceTerms] = useState('')
    const [financeBudget, setFinanceBudget] = useState('')

    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    const handleCustomers = useCallback(() => {
        axios.post(`${API_URL}/user/get/customers`, { company: data, token }).then((result) => {
            if (result.data.status === 200) setCustomers(result.data.message)
        })
    }, [token, data])

    const [errorCustomer, setErrorCustomer] = useState(false)
    const [errorDate, setErrorDate] = useState(false)

    const [errorPropertyDesignated, setErrorPropertyDesignated] = useState(false)
    const [errorPropertyType, setErrorPropertyType] = useState(false)
    const [errorPropertyStatus, setErrorPropertyStatus] = useState(false)
    const [errorPropertyLayout, setErrorPropertyLayout] = useState(false)

    const [errorFinanceTerms, setErrorFinanceTerms] = useState(false)
    const [errorFinanceBudget, setErrorFinanceBudget] = useState(false)

    useEffect(handleCustomers, [handleCustomers])

    const handleSubmit = () => {
        setLoading(true)
        setError('')
        setErrorCustomer(false)
        setErrorDate(false)


        setErrorPropertyDesignated(false)
        setErrorPropertyType(false)
        setErrorPropertyStatus(false)
        setErrorPropertyLayout(false)

        setErrorFinanceTerms(false)
        setErrorFinanceBudget(false)

        if (customer && date) {

            if (propertyDesignated && propertyLayout && propertyStatus && propertyType && financeBudget && financeTerms) {
                setTimeout(() => {
                    if (!error) {
                        axios.post(`${API_URL}/user/set/renovation/inquriy`, {
                            inquriy: { customer, date },
                            property: {
                                propertyDesignated,
                                propertyLayout,
                                propertyStatus,
                                propertyType
                            },
                            finance: {
                                financeBudget,
                                financeTerms
                            },
                            data,
                            token
                        }).then((result) => {
                            if (result.data.status === 200) {
                                reload()
                                setModule(false)
                            } else {
                                setError(result.data.message)
                            }

                            setLoading(false)
                        })
                    }
                }, 1000)
            } else {
                if (!propertyDesignated) setErrorPropertyDesignated(true)
                if (!propertyType) setErrorPropertyType(true)
                if (!propertyStatus) setErrorPropertyStatus(true)
                if (!propertyLayout) setErrorPropertyLayout(true)
                if (!financeTerms) setErrorFinanceTerms(true)
                if (!financeBudget) setErrorFinanceBudget(true)
                setLoading(false)
                setError('Please fill out the required fields')

            }


        } else {
            if (!customer) setErrorCustomer(true)
            if (!date) setErrorDate(true)
            setError('Please fill out the required fields')
            setLoading(false)
        }
    }

    useEffect(() => {
        setCustomerName('')
        setCustomer(0)
        setDate(moment().format('Y-MM-DD'))
        setPropertyDesignated('')
        setPropertyType('')
        setPropertyStatus('')
        setPropertyLayout('')
        setFinanceTerms('')
        setFinanceBudget('')
        setError('')
    }, [isModule])

    return (
        <Module isModule={isModule} setModule={setModule}>
            <ModuleHeader error={error} setModule={setModule} click={handleSubmit} loading={loading} />
            <div className='p-4 max-h-[80vh] overflow-hidden overflow-y-scroll sidebar'>
                <form className='w-full grid gap-4' onSubmit={handleSubmit}>
                    <h1 className='capitalize text-lg font-bold tracking-wider'>client information</h1>
                    <CustomersTextInput label='Customer' value={customerName} change={setCustomerName} required disabled={loading} options={customers} error={errorCustomer} setId={setCustomer} />
                    <TextInput label='Date' value={date} change={setDate} required disabled={loading} type='date' error={errorDate} />
                    <h1 className='capitalize text-lg font-bold tracking-wider'>property information</h1>
                    <div className='flex gap-4 items-center'>
                        <AutoTextInput label='Type of Designated Area' value={propertyDesignated} change={setPropertyDesignated} required disabled={loading} options={DesignatedList} error={errorPropertyDesignated} />
                        <AutoTextInput label='Type of Property' value={propertyType} change={setPropertyType} required disabled={loading} options={TypesList} error={errorPropertyType} />
                    </div>
                    <div className='flex gap-4 items-center'>
                        <SelectInput label='Property Status' values={propertyStatus} change={setPropertyStatus} required disabled={loading} options={StatusList} error={errorPropertyStatus} />
                        <SelectInput label='Layout' values={propertyLayout} change={setPropertyLayout} required disabled={loading} options={LayoutList} error={errorPropertyLayout} />
                    </div>
                    <h1 className='capitalize text-lg font-bold tracking-wider'>finance information</h1>
                    <div className='flex gap-4 items-center'>
                        <AutoTextInput label='Payment Terms' value={financeTerms} change={setFinanceTerms} required disabled={loading} options={TermsList} error={errorFinanceTerms} />
                        <TextInput label='Estimated Budget' value={financeBudget} change={setFinanceBudget} required disabled={loading} error={errorFinanceBudget} type='number' />
                    </div>
                </form>
            </div>
        </Module>
    )
}