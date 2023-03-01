export default interface inquriy {
    customer: number,
    agency: string,
    date: string
}

export default interface virtual {
    virtual: boolean,
    data: { virtualOffice: string }
}

export interface serviced {
    serviced: boolean,
    data: {
        servicedBudget: string,
        servicedPax: string,
        servicedDate: string,
        servicedRoom: string,
        servicedRemarks: string,
    }
}

export interface meeting {
    meeting: boolean,
    data: {
        meetingRoom: string,
        meetingDate: string,
        meetingTime: string,
        meetingPax: string,
        meetingRemarks: string,
    }
}