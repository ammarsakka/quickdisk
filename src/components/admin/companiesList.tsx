import axios from "axios";
import { API_URL } from "../api/url";


export default async function companiesList(token: string | null) {
    const options: string[] = []


    await axios.post(`${API_URL}/admin/get/companies`, { token }).then((result) => {
        if (result)
            result.data.message.map((company: { name: string; }) => {
                return options.push(company.name)
            })
    })

    return options
}