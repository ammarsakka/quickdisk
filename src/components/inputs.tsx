import Visibility from '@mui/icons-material/Visibility';
import VisibilityOff from '@mui/icons-material/VisibilityOff';
import React, { useState } from 'react'
import TextField from '@mui/material/TextField/TextField';
import FormControl from '@mui/material/FormControl/FormControl';
import InputLabel from '@mui/material/InputLabel/InputLabel';
import OutlinedInput from '@mui/material/OutlinedInput/OutlinedInput';
import InputAdornment from '@mui/material/InputAdornment/InputAdornment';
import IconButton from '@mui/material/IconButton/IconButton';
import Select, { SelectChangeEvent } from '@mui/material/Select'
import { Autocomplete, Checkbox, ListItemText, MenuItem } from '@mui/material';
import { MuiTelInput } from 'mui-tel-input';
import { customer } from './interfaces/customer';

interface input {
    label: string,
    value: string | number | undefined,
    change: any,
    type?: string,
    disabled?: boolean,
    required?: boolean,
    multiline?: boolean,
    rows?: number,
    error?: boolean
}

interface phone {
    label: string,
    value: string | undefined,
    change: any,
    disabled?: boolean,
    required?: boolean
}

interface image {
    label: string,
    value: FileList | undefined,
    change: any,
    disabled?: boolean,
    required?: boolean,
    imageName?: string | undefined,
    dir?: "main" | "company" | "profile"
}


interface select {
    label: string,
    values: string,
    change: any,
    disabled?: boolean,
    options: string[],
    required?: boolean,
    error?: boolean
}

interface selectMultiple {
    label: string,
    values: string[],
    change: any,
    disabled?: boolean,
    options: string[],
    required?: boolean,
    error?: boolean
}

interface autoComplete {
    label: string,
    value: string,
    change: any,
    type?: string,
    disabled?: boolean,
    required?: boolean,
    options: any,
    error?: boolean,
    setId?: any
}

export const TextInput = ({ label, value, change, type = 'text', disabled = false, required = false, multiline = false, rows = 3, error = false }: input) => {
    return (
        <TextField id={`${label.replaceAll(' ', '_')}_${Math.random() * 999}`} label={label} value={value} onChange={e => change(e.target.value)} type={type} disabled={disabled} fullWidth required={required} multiline={multiline} rows={rows} error={error} InputLabelProps={type === 'date' || type === 'time' ? { shrink: true } : {}} />
    )
}

export const AutoTextInput = ({ label, value, change, type = 'text', disabled = false, required = false, options, error = false }: autoComplete) => {
    const id = Math.random() * 999

    return (
        <Autocomplete
            disableClearable
            id={`${label.replaceAll(' ', '_')}_${id}`}
            options={options}
            freeSolo
            value={value}
            onChange={(event, value) => change(value)}
            inputValue={value}
            onInputChange={(event, value) => change(value)}
            fullWidth
            renderInput={(params) => <TextField {...params} label={label} required={required} disabled={disabled} type={type} error={error} />}
        />
    )
}

export const CustomersTextInput = ({ label, value, change, type = 'text', disabled = false, required = false, options, error = false, setId = 0 }: autoComplete) => {
    const id = Math.random() * 999
    const autolist: { label: string, id: number }[] = [];

    (options as customer[]).map((customer) => {
        return autolist.push({ label: customer.name, id: customer.id })
    })

    return (
        <Autocomplete
            disablePortal
            id={`${label.replaceAll(' ', '_')}_${id}`}
            options={autolist}
            inputValue={value}
            onInputChange={(event, value) => {
                setId(autolist.filter(option => option.label === value)[0]?.id | 0)
                change(value)
            }}
            fullWidth
            renderInput={(params) => <TextField {...params} label={label} required={required} disabled={disabled} type={type} error={error} />}
        />
    )
}

export const PhoneInput = ({ label, value, change, disabled = false, required = false }: phone) => {
    return (
        <MuiTelInput id={`${label.replaceAll(' ', '_')}_${Math.random() * 999}`} label={label} value={value} onChange={change} disabled={disabled} className='w-full' required={required} />
    )
}


export const PasswordInput = ({ label, value, change, disabled = false, required = false }: input) => {
    const [showPassword, setShowPassword] = useState(false)

    const handleClickShowPassword = () => setShowPassword((show) => !show);

    const handleMouseDownPassword = (event: React.MouseEvent<HTMLButtonElement>) => {
        event.preventDefault();
    };

    return (
        <FormControl variant="outlined" className='w-full'>
            <InputLabel htmlFor={`${label.replaceAll(' ', '_')}_${Math.random() * 999}`}>{label} {required && '*'}</InputLabel>
            <OutlinedInput
                id={`${label.replaceAll(' ', '_')}_${Math.random() * 999}`}
                value={value}
                onChange={e => change(e.target.value)}
                type={showPassword ? 'text' : 'password'}
                disabled={disabled}
                endAdornment={
                    <InputAdornment position="end">
                        <IconButton
                            aria-label="toggle password visibility"
                            onClick={handleClickShowPassword}
                            onMouseDown={handleMouseDownPassword}
                            edge="end"
                        >
                            {showPassword ? <VisibilityOff /> : <Visibility />}
                        </IconButton>
                    </InputAdornment>
                }
                label={label}
                required={required}
            />
        </FormControl>
    )
}

export const SelectInput = ({ label, values, change, options, disabled = false, required = false, error = false }: select) => {
    return (
        <FormControl className='w-full text-base'>
            <InputLabel id={`${label.replaceAll(' ', '_')}_${Math.random() * 999}`} error={error} required={required}>{label}</InputLabel>
            <Select
                labelId={`${label.replaceAll(' ', '_')}_${Math.random() * 999}`}
                id={`${label.replaceAll(' ', '_')}_${Math.random() * 999}`}
                value={values}
                onChange={(e) => { change(e.target.value) }}
                input={<OutlinedInput label={label} />}
                disabled={disabled}
                required={required}
                error={error}
            >
                {
                    options.map((name) => (
                        <MenuItem key={name} value={name} className='capitalize'>
                            {name}
                        </MenuItem>
                    ))
                }
            </Select>
        </FormControl>
    )
}

export const SelectInputMultiple = ({ label, values, change, options, disabled = false, required = false }: selectMultiple) => {

    const handleChange = (event: SelectChangeEvent<typeof values>) => {
        const { target: { value } } = event
        change(
            // On autofill we get a stringified value.
            typeof value === 'string' ? value.split(',') : value,
        )
    }

    return (
        <FormControl className='w-full'>
            <InputLabel id={`${label.replaceAll(' ', '_')}_${Math.random() * 999}`}>{label} {required && '*'}</InputLabel>
            <Select
                labelId={`${label.replaceAll(' ', '_')}_${Math.random() * 999}`}
                id={`${label.replaceAll(' ', '_')}_${Math.random() * 999}`}
                multiple
                value={values}
                onChange={handleChange}
                input={<OutlinedInput label={label} />}
                renderValue={(selected) => selected.join(', ')}
                disabled={disabled}
                required={required}
            >
                {
                    options.map((name) => (
                        <MenuItem key={name} value={name} className='capitalize'>
                            <Checkbox checked={values.indexOf(name) > -1} />
                            <ListItemText primary={name} />
                        </MenuItem>
                    ))
                }
            </Select>
        </FormControl>
    )
}

export const ImageInput = ({ label, value, change, required = false, disabled = false, imageName = undefined, dir = 'main' }: image) => {
    const random = Math.random() * 99999
    return (
        <div className='w-full relative overflow-hidden rounded upload-image'>
            <label htmlFor={`${label.replaceAll(" ", "_")}_${random}`} className='absolute top-0 left-0 w-full h-full bg-black/10 backdrop-blur-sm flex items-center justify-center capitalize font-semibold text-lg cursor-pointer'>{label}</label>
            <input type="file" name={`${label.replaceAll(" ", "_")}_${random}`} id={`${label.replaceAll(" ", "_")}_${random}`} hidden onChange={e => change(e.target.files)} required={required} />
            <img src={value ? value.length ? URL.createObjectURL(value[0]) : (imageName ? `/quickdisk/images/${dir}/${imageName}` : '/quickdisk/images/main/photo.png') : (imageName ? `/quickdisk/images/${dir}/${imageName}` : '/quickdisk/images/main/photo.png')} alt={label} className='h-[300px] mx-auto object-contain' />
        </div>
    )
}