import { useParams } from 'react-router-dom'
import { HashLoader } from 'react-spinners'
import Home from '../components/companies/home'

export default function Page() {
    const { company } = useParams()

    if (company)
        switch (company.toLowerCase()) {
            case 'novux':
                return <Home params={{ slug: company }} />
            case 'myofficerenovation':
                return <Home params={{ slug: company }} />
            case 'mydgtech':
                return <Home params={{ slug: company }} />

            default:
                return (
                    <main className="min-h-screen flex justify-center items-center">
                        <HashLoader color="#36d7b7" />
                    </main>
                )
        }
    else
        return (
            <main className="min-h-screen flex justify-center items-center">
                <HashLoader color="#36d7b7" />
            </main>
        )
}