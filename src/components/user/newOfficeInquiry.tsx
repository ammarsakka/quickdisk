import React, { useState, useCallback, useEffect } from 'react'
import { AutoTextInput, CustomersTextInput, SelectInput, SelectInputMultiple, TextInput } from '../inputs'
import { Module, ModuleHeader } from '../module'
import axios from 'axios'
import { useToken } from '../token'
import { customer } from '../interfaces/customer'
import { CheckBox } from '../checkbox'
import moment from 'moment'
import { autoCompleteList, meetingRoomList, virtualOfficeList } from '../lists/inquiryLists'
import { API_URL } from '../api/url'

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    data: string
}

export const NewOfficeInquiry = ({ isModule, setModule, reload, data }: type) => {
    const { token } = useToken()
    const [customers, setCustomers] = useState<customer[]>([])

    const [inquiry, setInquiry] = useState<number | undefined>(undefined)

    const [virtual, setVirtual] = useState(false)
    const [serviced, setServiced] = useState(false)
    const [meeting, setMeeting] = useState(false)

    const [customerName, setCustomerName] = useState('')
    const [customer, setCustomer] = useState(0)
    const [agency, setAgency] = useState('')
    const [date, setDate] = useState(() => {
        return moment().format('Y-MM-DD')
    })

    const [virtualOffice, setVirtualOffice] = useState('')

    const [servicedBudget, setServicedBudget] = useState('')
    const [servicedPax, setServicedPax] = useState('')
    const [servicedDate, setServicedDate] = useState('')
    const [servicedRoom, setServicedRoom] = useState('')
    const [servicedRemarks, setServicedRemarks] = useState('')

    const [meetingRoom, setMeetingRoom] = useState<string[]>([])
    const [meetingStartDate, setMeetingStartDate] = useState('')
    const [meetingEndDate, setMeetingEndDate] = useState('')
    const [meetingStartTime, setMeetingStartTime] = useState('')
    const [meetingEndTime, setMeetingEndTime] = useState('')
    const [meetingPax, setMeetingPax] = useState('')
    const [meetingRemarks, setMeetingRemarks] = useState('')

    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    const handleCustomers = useCallback(() => {
        axios.post(`${API_URL}/user/get/customers`, { company: data, token }).then((result) => {
            if (result.data.status === 200) setCustomers(result.data.message)
        })
    }, [token, data])

    const [errorCustomer, setErrorCustomer] = useState(false)
    const [errorDate, setErrorDate] = useState(false)

    const [errorVirtualOffice, setErrorVirtualOffice] = useState(false)



    const [errorMeetingRoom, setErrorMeetingRoom] = useState(false)

    useEffect(handleCustomers, [handleCustomers])

    const handleSubmit = () => {
        setLoading(true)
        setError('')
        setErrorCustomer(false)
        setErrorDate(false)

        setErrorVirtualOffice(false)

        setErrorMeetingRoom(false)

        if (customer && date) {

            if (virtual) {
                if (!virtualOffice) {
                    setErrorVirtualOffice(true)
                    setLoading(false)
                    setError('Please fill out the required fields')
                }
            }

            if (meeting) {
                if (!meetingRoom) {
                    if (!meetingRoom) setErrorMeetingRoom(true)
                    setLoading(false)
                    setError('Please fill out the required fields')
                }
            }


            setTimeout(() => {
                if (!error) {
                    axios.post(`${API_URL}/user/set/office/inquriy`, {
                        inquriy: { inquiry, customer, agency, date },
                        virtual: {
                            virtual,
                            data: { virtualOffice }
                        },
                        serviced: {
                            serviced,
                            data: { servicedBudget, servicedPax, servicedDate, servicedRoom, servicedRemarks }
                        },
                        meeting: {
                            meeting,
                            data: { meetingRoom, meetingStartDate, meetingEndDate, meetingStartTime, meetingEndTime, meetingPax, meetingRemarks }
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
            if (!customer) setErrorCustomer(true)
            if (!date) setErrorDate(true)
            setError('Please fill out the required fields')
            setLoading(false)
        }
    }

    useEffect(() => {
        setCustomerName('')
        setCustomer(0)
        setAgency('')
        setDate(moment().format('Y-MM-DD'))
        setVirtualOffice('')
        setServicedBudget('')
        setServicedPax('')
        setServicedDate('')
        setServicedRoom('')
        setServicedRemarks('')
        setMeetingRoom([])
        setMeetingStartDate('')
        setMeetingEndDate('')
        setMeetingStartTime('')
        setMeetingEndTime('')
        setMeetingPax('')
        setMeetingRemarks('')
        setError('')
    }, [isModule])

    return (
        <Module isModule={isModule} setModule={setModule}>
            <ModuleHeader error={error} setModule={setModule} click={handleSubmit} loading={loading} />
            <div className='p-4 max-h-[80vh] overflow-hidden overflow-y-scroll sidebar'>
                <form className='w-full grid gap-4' onSubmit={handleSubmit}>
                    <h1 className='capitalize text-lg font-bold tracking-wider'>inquiry information</h1>
                    <TextInput label='Inquiry id' value={inquiry} change={setInquiry} type='number' required />
                    <CustomersTextInput label='Customer' value={customerName} change={setCustomerName} required disabled={loading} options={customers} error={errorCustomer} setId={setCustomer} />
                    <div className='flex gap-4 items-center'>
                        <AutoTextInput label='Agency' value={agency} change={setAgency} disabled={loading} options={autoCompleteList} />
                        <TextInput label='Date' value={date} change={setDate} required disabled={loading} type='date' error={errorDate} />
                    </div>
                    <div>
                        <CheckBox label='Virtual Office' change={setVirtual} disabled={loading} checked={virtual} />
                    </div>
                    <div className={`gap-4 items-center ${virtual ? 'grid' : 'hidden'}`}>
                        <SelectInput label='Virtual Office' values={virtualOffice} change={setVirtualOffice} required={virtual} disabled={loading} options={virtualOfficeList} error={errorVirtualOffice} />
                    </div>
                    <div>
                        <CheckBox label='Serviced Office' change={setServiced} disabled={loading} checked={serviced} />
                    </div>
                    <div className={`gap-4 items-center ${serviced ? 'grid' : 'hidden'}`}>
                        <div className='flex gap-4 items-center'>
                            <TextInput label='Budget' value={servicedBudget} change={setServicedBudget} disabled={loading} type='number' />
                            <TextInput label='No of Pax' value={servicedPax} change={setServicedPax} disabled={loading} type='number' />
                        </div>
                        <div className='flex gap-4 items-center'>
                            <TextInput label='Move in Date' value={servicedDate} change={setServicedDate} disabled={loading} type='date' />
                            <TextInput label='Type of Room' value={servicedRoom} change={setServicedRoom} disabled={loading} />
                        </div>
                        <TextInput label='Remarks' value={servicedRemarks} change={setServicedRemarks} multiline disabled={loading} />
                    </div>
                    <div>
                        <CheckBox label='Meeting Room / Shooting' change={setMeeting} disabled={loading} checked={meeting} />
                    </div>
                    <div className={`gap-4 items-center ${meeting ? 'grid' : 'hidden'}`}>
                        <div className='flex gap-4 items-center'>
                            <SelectInputMultiple label='Layout / Room' values={meetingRoom} change={setMeetingRoom} required={meeting} disabled={loading} error={errorMeetingRoom} options={meetingRoomList} />
                            <TextInput label='No of Pax' value={meetingPax} change={setMeetingPax} disabled={loading} type='number' />
                        </div>
                        <div className='flex gap-4 items-center'>
                            <TextInput label='Start Date' value={meetingStartDate} change={setMeetingStartDate} disabled={loading} type='date' />
                            <TextInput label='End Date' value={meetingEndDate} change={setMeetingEndDate} disabled={loading} type='date' />
                        </div>
                        <div className='flex gap-4 items-center'>
                            <TextInput label='Start Time' value={meetingStartTime} change={setMeetingStartTime} disabled={loading} type='time' />
                            <TextInput label='End Time' value={meetingEndTime} change={setMeetingEndTime} disabled={loading} type='time' />
                        </div>
                        <TextInput label='Remarks' value={meetingRemarks} change={setMeetingRemarks} multiline disabled={loading} />
                    </div>

                </form>
            </div>
        </Module>
    )
}