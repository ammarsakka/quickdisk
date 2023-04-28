import { useState, useCallback, useEffect } from 'react'
import { CustomersTextInput, SelectInput, SelectInputMultiple, TextInput } from '../inputs'
import { Module, ModuleHeader } from '../module'
import axios from 'axios'
import { useToken } from '../token'
import { customer } from '../interfaces/customer'
import moment from 'moment'
import { CheckBox } from '../checkbox'
import { DesignContentList, DesignTypeList, ProductionLocationList, ProductionTypeList, ProductionVideoList, WebsiteDesignList, WebsiteTypeList } from '../lists/techLists'
import { API_URL } from '../api/url'

interface type {
    isModule: boolean,
    setModule: any,
    reload: any,
    data: string
}

export const NewTechInquiry = ({ isModule, setModule, reload, data }: type) => {
    const { token } = useToken()
    const [customers, setCustomers] = useState<customer[]>([])

    const [design, setDesign] = useState(false)
    const [production, setProduction] = useState(false)
    const [website, setWebsite] = useState(false)

    const [customerName, setCustomerName] = useState('')
    const [customer, setCustomer] = useState(0)
    const [date, setDate] = useState(() => {
        return moment().format('Y-MM-DD')
    })

    const [designType, setDesignType] = useState([])
    const [designSize, setDesignSize] = useState('')
    const [designContent, setDesignContent] = useState([])
    const [designTheme, setDesignTheme] = useState('')
    const [designRemark, setDesignRemark] = useState('')
    const [designBudget, setDesignBudget] = useState('')
    const [designDue, setDesignDue] = useState('')


    const [productionType, setProductionType] = useState([])
    const [productionVideo, setProductionVideo] = useState([])
    const [productionLength, setProductionLength] = useState('')
    const [productionLocation, setProductionLocation] = useState('')
    const [productionRemark, setProductionRemark] = useState('')
    const [productionBudget, setProductionBudget] = useState('')
    const [productionDue, setProductionDue] = useState('')

    const [websiteType, setWebsiteType] = useState([])
    const [websiteDesign, setWebsiteDesign] = useState('')
    const [websiteKeywords, setWebsiteKeywords] = useState('')
    const [websiteRemark, setWebsiteRemark] = useState('')
    const [websiteBudget, setWebsiteBudget] = useState('')
    const [websiteDue, setWebsiteDue] = useState('')

    const [loading, setLoading] = useState(false)
    const [error, setError] = useState('')

    const handleCustomers = useCallback(() => {
        axios.post(`${API_URL}/user/get/customers`, { company: data, token }).then((result) => {
            if (result.data.status === 200) setCustomers(result.data.message)
        })
    }, [token, data])




    useEffect(handleCustomers, [handleCustomers])

    const handleSubmit = () => {
        setLoading(true)
        setError('')

        if (customer && date) {

            if (design) {
                if (!designType || !designSize || !designContent || !designTheme || !designBudget || !designDue) {
                    setLoading(false)
                    setError('Please fill out the required fields')
                }
            }

            if (production) {
                if (!productionType || !productionBudget || !productionDue) {
                    setLoading(false)
                    setError('Please fill out the required fields')
                }

                if (productionType.find(type => type === 'Video Production')) {
                    if (!productionVideo || !productionLength || !productionLocation) {
                        setLoading(false)
                        setError('Please fill out the required fields')
                    }
                }
            }

            if (website) {
                if (!websiteType || !websiteBudget || !websiteDue) {
                    setLoading(false)
                    setError('Please fill out the required fields')
                }

                if (websiteType.find(type => type === 'Website Design')) {
                    if (!websiteDesign) {
                        setLoading(false)
                        setError('Please fill out the required fields')
                    }
                }

                if (websiteType.find(type => type === 'SEO Service')) {
                    if (!websiteKeywords) {
                        setLoading(false)
                        setError('Please fill out the required fields')
                    }
                }
            }

            if (!error) {
                setTimeout(() => {
                    if (!error) {
                        axios.post(`${API_URL}/user/set/tech/inquriy`, {
                            inquriy: { customer, date },
                            design: {
                                design,
                                data: {
                                    designType,
                                    designSize,
                                    designContent,
                                    designTheme,
                                    designRemark: designRemark.replaceAll("'", "''"),
                                    designBudget,
                                    designDue,
                                }
                            },
                            production: {
                                production,
                                data: {
                                    productionType: {
                                        productionType,
                                        video: {
                                            video: productionType.find(type => type === 'Video Production'),
                                            data: {
                                                productionVideo,
                                                productionLength,
                                                productionLocation,
                                            }
                                        }
                                    },
                                    productionRemark: productionRemark.replaceAll("'", "''"),
                                    productionBudget,
                                    productionDue,
                                }
                            },
                            website: {
                                website,
                                data: {
                                    websiteType: {
                                        websiteType,
                                        website: {
                                            website: websiteType.find(type => type === 'Website Design'),
                                            data: {
                                                websiteDesign
                                            }
                                        },
                                        seo: {
                                            seo: websiteType.find(type => type === 'SEO Service'),
                                            data: {
                                                websiteKeywords
                                            }
                                        }
                                    },
                                    websiteRemark: websiteRemark.replaceAll("'", "''"),
                                    websiteBudget,
                                    websiteDue,
                                }
                            },
                            data,
                            token
                        }).then((result) => {
                            if (result.data.status === 200) {
                                reload()
                                setModule(false)
                            } else {
                                setError(result.data.message)
                            }

                            setLoading(false)
                        })
                    }
                }, 1000)


            } else {
                setError('Please fill out the required fields')
                setLoading(false)
            }
        } else {
            setError('Please fill out the required fields')
            setLoading(false)
        }
    }

    useEffect(() => {
        setCustomerName('')
        setCustomer(0)
        setDate(moment().format('Y-MM-DD'))
        setDesignType([])
        setDesignSize('')
        setDesignContent([])
        setDesignTheme('')
        setDesignRemark('')
        setDesignBudget('')
        setDesignDue('')
        setProductionType([])
        setProductionVideo([])
        setProductionLength('')
        setProductionLocation('')
        setProductionRemark('')
        setProductionBudget('')
        setProductionDue('')
        setWebsiteType([])
        setWebsiteDesign('')
        setWebsiteKeywords('')
        setWebsiteRemark('')
        setWebsiteBudget('')
        setWebsiteDue('')
        setError('')
    }, [isModule])

    useEffect(() => {
        setDesignType([])
        setDesignSize('')
        setDesignContent([])
        setDesignTheme('')
        setDesignRemark('')
        setDesignBudget('')
        setDesignDue('')
    }, [design])

    useEffect(() => {
        setProductionType([])
        setProductionVideo([])
        setProductionLength('')
        setProductionLocation('')
        setProductionRemark('')
        setProductionBudget('')
        setProductionDue('')
    }, [production])

    useEffect(() => {
        setWebsiteType([])
        setWebsiteDesign('')
        setWebsiteKeywords('')
        setWebsiteRemark('')
        setWebsiteBudget('')
        setWebsiteDue('')
    }, [website])

    return (
        <Module isModule={isModule} setModule={setModule}>
            <ModuleHeader error={error} setModule={setModule} click={handleSubmit} loading={loading} />
            <div className='p-4 max-h-[80vh] overflow-hidden overflow-y-scroll sidebar'>
                <form className='w-full grid gap-4' onSubmit={handleSubmit}>
                    <h1 className='capitalize text-lg font-bold tracking-wider'>client information</h1>
                    <CustomersTextInput label='Customer' value={customerName} change={setCustomerName} required disabled={loading} options={customers} setId={setCustomer} />
                    <TextInput label='Date' value={date} change={setDate} required disabled={loading} type='date' />
                    <div>
                        <CheckBox label='Graphic Design' change={setDesign} disabled={loading} checked={design} />
                    </div>
                    <div className={`gap-4 items-center ${design ? 'grid' : 'hidden'}`}>
                        <div className='flex items-center gap-4'>
                            <SelectInputMultiple label='Type of Design' values={designType} change={setDesignType} options={DesignTypeList} disabled={loading} required={design} />
                            <TextInput label='Size of Design' value={designSize} change={setDesignSize} disabled={loading} required={design} />
                        </div>
                        <div className='flex items-center gap-4'>
                            <SelectInputMultiple label='Content Provide' values={designContent} change={setDesignContent} options={DesignContentList} disabled={loading} required={design} />
                            <TextInput label='Design Theme' value={designTheme} change={setDesignTheme} disabled={loading} required={design} />
                        </div>
                        <TextInput label='Remarks' value={designRemark} change={setDesignRemark} disabled={loading} multiline />
                        <div className='flex items-center gap-4'>
                            <TextInput label='Budget' value={designBudget} change={setDesignBudget} disabled={loading} required={design} type='number' />
                            <TextInput label='Due Date' value={designDue} change={setDesignDue} disabled={loading} required={design} type='date' />
                        </div>
                    </div>
                    <div>
                        <CheckBox label='Production Studio' change={setProduction} disabled={loading} checked={production} />
                    </div>
                    <div className={`gap-4 items-center ${production ? 'grid' : 'hidden'}`}>
                        <SelectInputMultiple label='Production Type' values={productionType} change={setProductionType} options={ProductionTypeList} disabled={loading} required={production} />
                        <TextInput label='Remarks' value={productionRemark} change={setProductionRemark} disabled={loading} multiline />
                        <div className='flex items-center gap-4'>
                            <TextInput label='Budget' value={productionBudget} change={setProductionBudget} disabled={loading} required={production} type='number' />
                            <TextInput label='Due Date' value={productionDue} change={setProductionDue} disabled={loading} required={production} type='date' />
                        </div>
                        <div className={`gap-4 items-center ${(productionType.find(type => type === 'Video Production')) ? 'grid' : 'hidden'}`}>
                            <h1 className='capitalize text-lg font-bold tracking-wider'>Video Production</h1>
                            <SelectInputMultiple label='Type of Video' values={productionVideo} change={setProductionVideo} options={ProductionVideoList} disabled={loading} required={productionType.find(type => type === 'Video Production')} />
                            <div className='flex items-center gap-4'>
                                <TextInput label='Length of Video' value={productionLength} change={setProductionLength} disabled={loading} required={productionType.find(type => type === 'Video Production')} />
                                <SelectInput label='Shooting Location' values={productionLocation} change={setProductionLocation} options={ProductionLocationList} disabled={loading} required={productionType.find(type => type === 'Video Production')} />
                            </div>
                        </div>
                    </div>
                    <div>
                        <CheckBox label='Website Design' change={setWebsite} disabled={loading} checked={website} />
                    </div>
                    <div className={`gap-4 items-center ${website ? 'grid' : 'hidden'}`}>
                        <SelectInputMultiple label='Design Type' values={websiteType} change={setWebsiteType} options={WebsiteTypeList} disabled={loading} required={website} />
                        <TextInput label='Remarks' value={websiteRemark} change={setWebsiteRemark} disabled={loading} multiline />
                        <div className='flex items-center gap-4'>
                            <TextInput label='Budget' value={websiteBudget} change={setWebsiteBudget} disabled={loading} required={website} type='number' />
                            <TextInput label='Due Date' value={websiteDue} change={setWebsiteDue} disabled={loading} required={website} type='date' />
                        </div>
                        <div className={`gap-4 items-center ${(websiteType.find(type => type === 'Website Design')) ? 'grid' : 'hidden'}`}>
                            <h1 className='capitalize text-lg font-bold tracking-wider'>Website Design</h1>
                            <SelectInput label='Type of Website' values={websiteDesign} change={setWebsiteDesign} options={WebsiteDesignList} disabled={loading} required={websiteType.find(type => type === 'Website Design')} />
                        </div>
                        <div className={`gap-4 items-center ${(websiteType.find(type => type === 'SEO Service')) ? 'grid' : 'hidden'}`}>
                            <h1 className='capitalize text-lg font-bold tracking-wider'>SEO Service</h1>
                            <TextInput label='Number of Keywords' value={websiteKeywords} change={setWebsiteKeywords} disabled={loading} required={websiteType.find(type => type === 'SEO Service')} />
                        </div>
                    </div>
                </form>
            </div>
        </Module>
    )
}