import { FormControl, FormLabel, Radio, RadioGroup } from "@mui/material"
import Checkbox from "@mui/material/Checkbox"
import FormControlLabel from "@mui/material/FormControlLabel"

interface checkbox {
    label: string,
    change: any,
    disabled?: boolean,
    checked?: boolean
}

interface radio {
    label: string,
    value: string | undefined,
    change: any,
    option: string[],
    disabled?: boolean,
}

export const CheckBox = ({ label, change, disabled = false, checked = false }: checkbox) => {
    return (
        <FormControlLabel control={<Checkbox onChange={e => e.target.checked ? change(true) : change(false)} disabled={disabled} checked={checked} />} label={label} className='select-none' />
    )
}

export const RadioSelect = ({ label, value, change, option, disabled = false }: radio) => {
    const id = Math.random() * 99999
    return (
        <FormControl>
            <FormLabel id={`${label}_${id}`}>{label}</FormLabel>
            <RadioGroup
                row
                aria-labelledby={`${label}_${id}`}
                name={label}
                value={value}
                onChange={e => change(e.target.value)}
            >
                {
                    option.map((item, index) => (
                        <FormControlLabel value={item.toLowerCase()} control={<Radio />} label={item} key={index} disabled={disabled} />
                    ))
                }
            </RadioGroup>
        </FormControl>
    )
}