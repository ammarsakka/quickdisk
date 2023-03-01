import Customers from '../components/companies/customers'
import { useParams } from 'react-router-dom'
import { HashLoader } from 'react-spinners'

export default function Page() {
    const { company } = useParams()


    if (company)
        switch (company.toLowerCase()) {
            case 'novux':
                return <Customers params={{ slug: company }} />
            case 'myofficerenovation':
                return <Customers params={{ slug: company }} />
            case 'mydgtech':
                return <Customers params={{ slug: company }} />

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