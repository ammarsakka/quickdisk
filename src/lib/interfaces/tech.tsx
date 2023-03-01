export default interface inquriy {
    customer: number,
    date: string
}

export interface design {
    design: boolean,
    data: {
        designType: string[],
        designSize: string,
        designContent: string[],
        designTheme: string,
        designRemark: string | null,
        designBudget: string,
        designDue: string
    }
}

export interface production {
    production: boolean,
    data: {
        productionType: {
            productionType: string[],
            video: {
                video: boolean,
                data: {
                    productionVideo: string[],
                    productionLength: string,
                    productionLocation: string
                }
            }
        },
        productionRemark: string | null,
        productionBudget: string,
        productionDue: string
    }
}

export interface website {
    website: boolean,
    data: {
        websiteType: {
            websiteType: string[],
            website: {
                website: boolean,
                data: {
                    websiteDesign: string
                }
            },
            seo: {
                seo: boolean,
                data: {
                    websiteKeywords: string
                }
            }
        }
        websiteRemark: string,
        websiteBudget: string,
        websiteDue: string
    }
}