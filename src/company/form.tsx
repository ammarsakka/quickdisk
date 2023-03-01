import { useParams } from 'react-router-dom'
import { HashLoader } from 'react-spinners'
import { OfficePDF } from '../components/companies/pdf/office'
import { RenovationPDF } from '../components/companies/pdf/renovation'
import { TechPDF } from '../components/companies/pdf/tech'

export default function Page() {
    const { company, inquiry } = useParams()

    if (company && inquiry)
        switch (company.toLowerCase()) {
            case 'novux':
                return <OfficePDF slug={company} inquiry={inquiry} />
            case 'myofficerenovation':
                return <RenovationPDF slug={company} inquiry={inquiry} />
            case 'mydgtech':
                return <TechPDF slug={company} inquiry={inquiry} />

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