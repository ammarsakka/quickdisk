import { Controller } from "../controller/controller"
import { useToken } from "../token"
import Avatar from "@mui/material/Avatar/Avatar"
import { DataGrid } from "@mui/x-data-grid"
import { useCallback, useEffect, useState } from "react"
import axios from 'axios'
import { CustomUsersToolbar } from "../toolbars/users"
import { UsersActions } from "../actions/users"
import { Status } from "../status"
import { EditUser } from "../admin/editUser"
import { user } from "../interfaces/users"
import { UserAccess } from "../admin/userAccess"
import { UserPassword } from "../admin/userPassword"
import { UserStatus } from "../admin/userStatus"
import { DeleteUser } from "../admin/deleteUser"
import { useNavigate } from 'react-router-dom'
import { HashLoader } from "react-spinners"
import { API_URL } from "../api/url"


export default function Users() {
    const page = 'users'
    const { token } = useToken()
    const [users, setUsers] = useState<readonly user[]>([])
    const Router = useNavigate()

    const [edit, setEdit] = useState<boolean>(false)
    const [access, setAccess] = useState<boolean>(false)
    const [password, setPassword] = useState<boolean>(false)
    const [status, setStatus] = useState<boolean>(false)
    const [isDelete, setDelete] = useState<boolean>(false)
    const [user, setUser] = useState<number>()

    const handleUsers = useCallback(() => {
        if (token)
            axios.post(`${API_URL}/admin/get/users`, { token }).then((result) => {
                if (result.data.status === 200)
                    setUsers(result.data.message)
                else
                    Router('/')
            })
        else Router('/')
    }, [Router, token])

    useEffect(handleUsers, [handleUsers])

    const handleAction = (id: any, action: string) => {
        setUser(id)

        switch (action) {
            case 'edit':
                setEdit(true)
                break
            case 'access':
                setAccess(true)
                break
            case 'password':
                setPassword(true)
                break
            case 'status':
                setStatus(true)
                break
            case 'delete':
                setDelete(true)
                break

            default:
                return
        }
    }

    const reload = () => {
        handleUsers()
    }

    const customToolbar = () => {
        return <CustomUsersToolbar reload={reload} />
    }

    if (!users.length)
        return (
            <div className='flex justify-center items-center w-full min-h-sidebar'>
                <HashLoader color="#36d7b7" />
            </div>
        )
    else
        return (
            <Controller page={page}>
                {
                    users &&
                    <DataGrid
                        columns={[
                            { field: 'avatar', headerName: 'Avatar', renderCell: (e) => <Avatar sx={{ width: 35, height: 35 }}>{e.row.first_name.charAt(0).toUpperCase()}</Avatar>, flex: 1 },
                            { field: 'first_name', headerName: 'First Name', flex: 1 },
                            { field: 'last_name', headerName: 'Last Name', flex: 1 },
                            { field: 'username', headerName: 'username', flex: 1 },
                            { field: 'role', headerName: 'Role', flex: 1 },
                            {
                                field: 'access', headerName: 'Access', flex: 1, renderCell: (e) => {
                                    const value = JSON.parse(e.formattedValue)
                                    return value.join(', ')
                                }
                            },
                            { field: 'status', headerName: 'Status', renderCell: (e) => <Status status={e.formattedValue} />, flex: 1 },
                            { field: 'action', headerName: '', renderCell: ({ id }) => <UsersActions id={id} handleAction={handleAction} />, flex: 1 },
                        ]}
                        rows={users}
                        disableSelectionOnClick
                        sx={{ width: '100%', height: '100%', minHeight: 'calc(100vh - 45px)', textTransform: 'capitalize' }}
                        components={{ Toolbar: customToolbar }}
                    />
                }
                <EditUser isModule={edit} setModule={setEdit} reload={reload} id={user} />
                <UserAccess isModule={access} setModule={setAccess} reload={reload} id={user} />
                <UserPassword isModule={password} setModule={setPassword} reload={reload} id={user} />
                <UserStatus isModule={status} setModule={setStatus} reload={reload} id={user} />
                <DeleteUser isModule={isDelete} setModule={setDelete} reload={reload} id={user} />
            </Controller>
        )
}