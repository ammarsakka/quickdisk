"use client"
import { Controller } from '../controller/controller'
import React from 'react'

export default function Reports({ params }: { params: { slug: string } }) {
    const page = `${params.slug} Reports`

    return (
        <Controller page={page}>

        </Controller>
    )
}