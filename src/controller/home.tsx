import { Controller } from '../components/controller/controller'
import { UserBar } from '../components/dashboard/userbar'

export default function Dashboard() {
    const page = 'dashboard'

    return (
        <Controller page={page}>
            <div className='p-2'>
                <UserBar />
            </div>
        </Controller>
    )
}
