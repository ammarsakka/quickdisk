import Novux from '../components/inquiries/novux'
import MyOfficeRenovation from '../components/inquiries/myOfficeRenovation'
import MyDGTech from '../components/inquiries/myDGTech'
import { useParams } from 'react-router-dom'
import { HashLoader } from 'react-spinners'

export default function Page() {
    const { company } = useParams()

    if (company)
        switch (company.toLowerCase()) {
            case 'novux':
                return <Novux slug={company} />
            case 'myofficerenovation':
                return <MyOfficeRenovation slug={company} />
            case 'mydgtech':
                return <MyDGTech slug={company} />

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