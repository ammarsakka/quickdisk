"use client"

import { Controller } from '../controller/controller'
import { useToken } from '../token'
// import { CustomCompaniesToolbar } from '../toolbars/companies'
import company from '../../lib/interfaces/company'
import { DataGrid } from '@mui/x-data-grid'
import axios from 'axios'
import { useState, useCallback, useEffect } from 'react'
import moment from 'moment'
// import { CompaniesActions } from '../actions/companies'
// import { CompanyName } from '../admin/companyName'
// import { CompanyLogo } from '../admin/companyLogo'
// import { useCompanies } from '../companiesList'
import { HashLoader } from 'react-spinners'
import { useNavigate } from 'react-router-dom'
import { API_URL } from '../api/url'

export default function Companies() {
    const page = 'companies'
    const { token } = useToken()
    const [companies, setCompanies] = useState<company[]>([])
    // const { reloadCompanies } = useCompanies()
    const Router = useNavigate()

    // const [id, setId] = useState<number>(0)

    // const [edit, setEdit] = useState(false)
    // const [image, setImage] = useState(false)

    // const handleAction = (id: any, action: string) => {
    //     setId(id)

    //     switch (action) {
    //         case 'edit':
    //             setEdit(true)
    //             break
    //         case 'logo':
    //             setImage(true)
    //             break

    //         default:
    //             return
    //     }
    // }

    const handleCompanies = useCallback(() => {
        axios.post(`${API_URL}/admin/get/companies`, { token }).then((result) => {
            if (result.data.status === 200)
                setCompanies(result.data.message)
            else
                Router('/')
        })
    }, [Router, token])

    useEffect(handleCompanies, [handleCompanies])

    // const reload = () => {
    //     handleCompanies()
    //     reloadCompanies()
    // }

    // const customToolbar = () => {
    //     return (
    //         <CustomCompaniesToolbar reload={reload} />
    //     )
    // }

    if (!companies.length)
        return (
            <div className='flex justify-center items-center w-full min-h-sidebar'>
                <HashLoader color="#36d7b7" />
            </div>
        )
    else
        return (
            <Controller page={page}>
                <DataGrid
                    columns={[
                        { field: 'avatar', headerName: 'Company Logo', renderCell: (e) => <img src={`/images/company/${e.formattedValue}`} alt={e.formattedValue} className='h-[90%] w-14 object-contain' /> },
                        { field: 'name', headerName: 'Company Name', flex: 1 },
                        { field: 'created', headerName: 'Date', flex: 1, renderCell: (e) => moment(e.formattedValue).format('MMM DD, Y') },
                        // { field: 'action', headerName: '', flex: 0, renderCell: ({ id }) => <CompaniesActions id={id} handleAction={handleAction} /> }
                    ]}
                    rows={companies}
                    disableSelectionOnClick
                    sx={{ width: '100%', height: '100%', minHeight: 'calc(100vh - 45px)', textTransform: 'capitalize' }}
                // components={{ Toolbar: customToolbar }}
                />
                {/* <CompanyName isModule={edit} setModule={setEdit} reload={reload} id={id} />
                <CompanyLogo isModule={image} setModule={setImage} reload={reload} id={id} /> */}
            </Controller>
        )
}