import React, { useState, useEffect, useCallback } from 'react'
import IconButton from '@mui/material/IconButton/IconButton'
import { Module, ModuleHeader } from '../module'
import { useToken } from '../token'
import AddIcon from '@mui/icons-material/Add';
import TextField from '@mui/material/TextField';
import ClearIcon from '@mui/icons-material/Clear';
import moment from 'moment';
import axios from 'axios';
import { API_URL } from '../api/url';

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    data: string,
    id: number
}

interface comment {
    comments_id: number,
    comments_inquiry_id: number,
    comments_comment: string
}

interface comments {
    id: number,
    date: string,
    comment: string
}

export const Comments = ({ isModule, setModule, reload, data, id }: type) => {
    const { token } = useToken()
    const [indexId, setIndexId] = useState(1)
    const [commet, setComment] = useState<comment[]>([])

    const [comments, setComments] = useState<comments[]>([])

    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    const handleComments = useCallback(() => {
        axios.post(`${API_URL}/user/get/comment`, { data, token, id }).then((result) => {
            setComment(result.data.message)
        })
    }, [data, token, id])

    useEffect(() => {
        setComments([])
        handleComments()
    }, [isModule])

    useEffect(() => {
        if (commet[0]?.comments_comment) {
            const data = JSON.parse(commet[0]?.comments_comment)
            data.map((item: any, index: number) => {
                setIndexId(index + 1)
                setComments(oldItems => [...oldItems, { id: index, date: item.date, comment: item.comment }])
                return ''
            })
        }
    }, [commet])

    const handleSubmit = () => {
        setLoading(true)
        setError('')

        setTimeout(() => {
            axios.post(`${API_URL}/user/update/commet`, { comments, data, token, id }).then((result) => {
                if (result.data.status === 200) {
                    reload()
                    setModule(false)
                } else {
                    setError(result.data.message)
                }

                setLoading(false)
            })
        }, 1000)
    }

    const handleAddNew = () => {
        setComments(oldItems => [...oldItems, { id: indexId, date: moment().format('Y-MM-DD'), comment: '' }])
        setIndexId(indexId + 1)
    }

    useEffect(() => {
        setIndexId(0)
        setComments([])
    }, [isModule])

    return (
        <Module isModule={isModule} setModule={setModule}>
            <ModuleHeader error={error} setModule={setModule} click={handleSubmit} loading={loading} />
            <div className='p-4 max-h-[80vh] overflow-hidden overflow-y-scroll sidebar'>
                <form className='w-full grid gap-4' onSubmit={handleSubmit}>
                    <div className='flex items-center justify-between'>
                        <h1 className='capitalize text-lg font-bold tracking-wider'>Comments</h1>
                        <IconButton onClick={handleAddNew}><AddIcon /></IconButton>
                    </div>
                    <div className='grid gap-4 w-full'>
                        {
                            comments &&
                            comments.map((comment, index) => (
                                <div key={index} className='flex items-center gap-4'>
                                    <TextField
                                        label='Date'
                                        type={'date'}
                                        value={comment.date}
                                        onChange={e => {
                                            const data = [...comments]
                                            data[index].date = e.target.value
                                            setComments(data)
                                        }}
                                        required
                                    />
                                    <TextField
                                        label='Comment'
                                        value={comment.comment}
                                        onChange={e => {
                                            const data = [...comments]
                                            data[index].comment = e.target.value
                                            setComments(data)
                                        }}
                                        required
                                        fullWidth
                                    />
                                    <IconButton
                                        onClick={() => {
                                            const id = comment.id
                                            setComments(oldItems => oldItems.filter(items => items.id !== id))
                                        }}
                                        color='error'
                                    >
                                        <ClearIcon />
                                    </IconButton>
                                </div>
                            ))
                        }
                    </div>
                </form>
            </div>
        </Module>
    )
}
