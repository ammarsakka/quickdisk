import OfficeReports from '../components/companies/pdf/officeReports'
import { useParams } from 'react-router-dom'
import { HashLoader } from 'react-spinners'
import TectReports from '../components/companies/pdf/techReport'

export default function Page() {
    const { company, start, end } = useParams()

    if (company && start && end)
        switch (company.toLowerCase()) {
            case 'novux':
                return <OfficeReports slug={company} start={start} end={end} />
            // case 'myofficerenovation':
            //     return <Reports slug={company} start={start} end={end} />
            case 'mydgtech':
                return <TectReports slug={company} start={start} end={end} />

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