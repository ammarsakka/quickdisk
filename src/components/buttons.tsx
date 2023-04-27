import React, { ReactNode } from 'react'
import LoadingButton from '@mui/lab/LoadingButton'

interface type {
    label: string,
    click: any,
    disabled?: boolean,
    loading?: boolean,
    icon?: ReactNode,
    size: "large" | "medium" | "small",
    variant?: "contained" | "outlined" | "text",
    color?: "error" | "info" | "inherit" | "primary" | "secondary" | "success" | "warning"
}

export const Button = ({ label, click, disabled = false, loading = false, size, variant = 'contained', color = 'primary' }: type) => {
    return (
        <LoadingButton
            size={size}
            onClick={click}
            loading={loading}
            variant={variant}
            disabled={disabled}
            className={`w-full`}
            color={color}
        >
            <span>{label}</span>
        </LoadingButton>
    )
}

export const IconButton = ({ label, click, disabled = false, loading = false, icon, size, variant = 'contained', color = 'primary' }: type) => {
    return (
        <LoadingButton
            size={size}
            onClick={click}
            loading={loading}
            variant={variant}
            disabled={disabled}
            className={`w-full ${variant === 'contained' && '!bg-sky-700 !hover:bg-sky-800'}`}
            loadingPosition="start"
            startIcon={icon}
        >
            <span>{label}</span>
        </LoadingButton>
    )
}

export const IconDeleteButton = ({ label, click, disabled = false, loading = false, icon, size, variant = 'contained', color = 'primary' }: type) => {
    return (
        <LoadingButton
            size={size}
            onClick={click}
            loading={loading}
            variant={variant}
            disabled={disabled}
            className={`w-full ${variant === 'contained' ? '!bg-red-700 !hover:bg-red-800' : variant === 'outlined' ? '!border-red-700 !text-red-700 !hover:border-red-800' : '!text-red-700'}`}
            loadingPosition="start"
            startIcon={icon}
        >
            <span>{label}</span>
        </LoadingButton>
    )
}

export const EditButton = ({ label, click, disabled = false, loading = false, icon, size, variant = 'outlined', color = 'primary' }: type) => {
    return (
        <LoadingButton
            size={size}
            onClick={click}
            loading={loading}
            variant={variant}
            disabled={disabled}
            color='success'
            className={`w-full ${variant === 'contained' && '!bg-sky-700 !hover:bg-sky-800'}`}
            loadingPosition="start"
            startIcon={icon}
        >
            <span>{label}</span>
        </LoadingButton>
    )
}