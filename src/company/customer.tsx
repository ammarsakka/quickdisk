import { useParams } from 'react-router-dom'
import { HashLoader } from 'react-spinners'
import CustomerOffice from '../components/companies/customer/office'
import CustomerRenovation from '../components/companies/customer/renovation'
import CustomerTech from '../components/companies/customer/tech'

export default function Page() {
    const { company, user } = useParams()

    if (company && user)
        switch (company.toLowerCase()) {
            case 'novux':
                return <CustomerOffice slug={company} user={user} />
            case 'myofficerenovation':
                return <CustomerRenovation slug={company} user={user} />
            case 'mydgtech':
                return <CustomerTech slug={company} user={user} />

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