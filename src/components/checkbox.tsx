import Checkbox from "@mui/material/Checkbox"
import FormControlLabel from "@mui/material/FormControlLabel"

interface checkbox {
    label: string,
    change: any,
    disabled?: boolean,
    checked?: boolean
}

export const CheckBox = ({ label, change, disabled = false, checked = false }: checkbox) => {
    return (
        <FormControlLabel control={<Checkbox onChange={e => e.target.checked ? change(true) : change(false)} disabled={disabled} checked={checked} />} label={label} className='select-none' />
    )
}