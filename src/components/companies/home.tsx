"use client"
import { Controller } from '../controller/controller'
import React from 'react'

export default function Home({ params }: { params: { slug: string } }) {
    const page = `${params.slug} Home`

    return (
        <Controller page={page}>

        </Controller>
    )
}