import { useCompanies } from "../companiesList"
import { useUserAccess } from "../useUserAccess"
import { HomeButtons, ListButton } from "./buttons"
import { HomeMenu, AdminMenu } from "./menus"

interface page {
    page: string,
}

export const Menu = ({ page }: page) => {
    const { hasAccess } = useUserAccess()
    const { companies } = useCompanies()

    return (
        <>
            {
                HomeMenu.map((menu, index) => (
                    <HomeButtons title={menu.title} icon={menu.icon} url={menu.url} key={index} selected={page === menu.title} />
                ))
            }
            {
                hasAccess?.map((user) => {
                    if (user.role === 'admin' || user.role === 'maneger')
                        return (
                            AdminMenu.map((menu, index) => (
                                <HomeButtons title={menu.title} icon={menu.icon} url={menu.url} key={index} selected={page === menu.title} />
                            ))
                        )
                    else return ''
                })
            }
            {
                companies &&
                companies.map((company, index) => {
                    const companyPage = page.replaceAll(' ', ',').split(',')
                    const companyName = companyPage.slice(0, companyPage.length - 1).join('_')
                    const pageName = companyPage[companyPage.length - 1]

                    return (
                        <ListButton title={company.name} icon={company.avatar} url={company.name.replaceAll(" ", "_")} selected={companyName === company.name.replaceAll(" ", "_") ? pageName.toLowerCase() : ''} key={index} parent={companyName === company.name.replaceAll(" ", "_")} />
                    )
                })
            }
        </>
    )
}