import { Renovation } from '../../../interfaces/renovation';
import { Document, Page, Text, View, StyleSheet, Image } from '@react-pdf/renderer';
import moment from "moment";

const styles = StyleSheet.create({
    page: {
        padding: 10
    },
    header: {
        flexDirection: 'row'
    },
    section: {
        padding: 10,
        flexGrow: 1
    },
    textHead: {
        fontSize: 12,
        fontWeight: 'semibold',
    },
    text: {
        fontSize: 11,
        display: 'flex',
        flexDirection: 'row',
        fontWeight: 'light',
    },
    textWidth: {
        fontSize: 11,
        display: 'flex',
        flexDirection: 'row',
        fontWeight: 'light',
        width: '100%',
        maxWidth: 180
    },
    table: {
        border: 2,
        borderColor: 'black',
    },
    tabelFlex: {
        flexDirection: 'row'
    },
    flexGorw: {
        flexGrow: 1
    },
    widthHalf: {
        width: '50%'
    },
    tableHeader: {
        border: 1,
        borderColor: 'black',
        padding: 5,
    },
    tableData: {
        flexGrow: 1,
        border: 1,
        borderColor: 'black',
        padding: 5,
        justifyContent: 'center'
    },
    smallText: {
        fontSize: 8
    },
    textFlex: {
        display: 'flex',
        flexDirection: 'row',
        alignItems: 'flex-start',
        gap: 4,
        width: '100%'
    }
});

const formatter = new Intl.NumberFormat('MY', {
    style: 'currency',
    currency: 'MYR'
})

const GenerateRenovationPdf = ({ renovation }: { renovation: Renovation[] }) => {
    return (
        <Document>
            <Page size='A4' style={styles.page}>
                <View style={styles.header}>
                    <View style={styles.section}>
                        <Text style={{ fontSize: 20, fontWeight: 'bold', textTransform: 'uppercase', textAlign: 'center', letterSpacing: 0.2 }}>my office renovation</Text>
                    </View>
                </View>
                <View style={{ flexDirection: 'row', justifyContent: 'space-between', marginTop: 10 }}>
                    <View>
                        <Text style={styles.smallText}>23-5 Menara Bangkok Bank Berjaya Center Park</Text>
                        <Text style={styles.smallText}>Jalan Ampang, 50450 Kuala Lumpur</Text>
                        <Text style={styles.smallText}>Tel: +60 3-2787 9182</Text>
                        <Text style={styles.smallText}>Whatsapp: +60 10-906 8681</Text>
                        <Text style={styles.smallText}>Email: myofficerenovation@gmail.com</Text>
                    </View>
                    <View>
                        <Image src={'/images/company/Renovation_14947.454407695024.png'} style={{ width: 75, height: 'auto', objectFit: 'content' }} />
                    </View>
                </View>
                <View style={{ flexDirection: 'row', justifyContent: 'space-between', marginTop: 5, marginBottom: 5 }}>
                    <View>
                        <Text style={styles.text}>Inquiry No: {renovation[0]?.inquiry_id}</Text>
                        <Text style={styles.text}>Date: {moment(renovation[0]?.date).format('MMM DD, Y')}</Text>
                    </View>
                </View>
                <View style={styles.table} >
                    <View style={styles.tableHeader}>
                        <Text style={styles.textHead}>Client Information</Text>
                    </View>

                    <View style={{ flexDirection: 'row', padding: 10 }}>
                        <View style={{ width: '50%', gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Name:</Text>
                                <Text style={styles.textWidth}>{renovation[0]?.name}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Position:</Text>
                                <Text style={styles.textWidth}>{renovation[0]?.position}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Email:</Text>
                                <Text style={styles.textWidth}>{renovation[0]?.email}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Address:</Text>
                                <Text style={styles.textWidth}>{renovation[0]?.address}</Text>
                            </View>
                        </View>
                        <View style={{ width: '50%', gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Phone:</Text>
                                <Text style={styles.textWidth}>{renovation[0]?.phone}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Company Name:</Text>
                                <Text style={styles.textWidth}>{renovation[0]?.company}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Nature of Business:</Text>
                                <Text style={styles.textWidth}>{renovation[0]?.business}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Size (SQFT):</Text>
                                <Text style={styles.textWidth}>{renovation[0]?.size}</Text>
                            </View>
                        </View>
                    </View>
                    <View style={styles.tableHeader}>
                        <Text style={styles.textHead}>Property Details</Text>
                    </View>
                    <View style={{ flexDirection: 'row', padding: 10 }}>
                        <View style={{ width: '50%', gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Types of Designated Area:</Text>
                                <Text style={styles.text}>{renovation[0]?.property_designated}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Property Status:</Text>
                                <Text style={styles.text}>{renovation[0]?.property_status}</Text>
                            </View>
                        </View>
                        <View style={{ width: '50%', gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Types of Property:</Text>
                                <Text style={styles.text}>{renovation[0]?.property_type}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Layout:</Text>
                                <Text style={styles.text}>{renovation[0]?.property_layout}</Text>
                            </View>
                        </View>
                    </View>
                    <View style={styles.tableHeader}>
                        <Text style={styles.textHead}>Finance</Text>
                    </View>
                    <View style={{ flexDirection: 'row', padding: 10 }}>
                        <View style={{ width: '50%', gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Payment Terms:</Text>
                                <Text style={styles.text}>{renovation[0]?.finance_terms}</Text>
                            </View>
                        </View>
                        <View style={{ width: '50%', gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Estimated Budget:</Text>
                                <Text style={styles.text}>{formatter.format(renovation[0]?.finance_budget)}</Text>
                            </View>
                        </View>
                    </View>
                    <View style={styles.tableHeader}>
                        <Text style={styles.textHead}>Building Management</Text>
                    </View>
                    <View style={{ flexDirection: 'row', padding: 10 }}>
                        <View style={{ width: '50%', gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Contact No:</Text>
                                <Text style={styles.text}>{renovation[0]?.management_contact}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Working Hours:</Text>
                                <Text style={styles.text}>{renovation[0]?.management_working && moment(renovation[0]?.management_working, "HH:mm:ss").format("HH:mm A")}</Text>
                            </View>
                        </View>
                        <View style={{ width: '50%', gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Insurance:</Text>
                                <Text style={styles.text}>{renovation[0]?.management_insurance}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Wireman Certificate:</Text>
                                <Text style={styles.text}>{renovation[0]?.management_wireman}</Text>
                            </View>
                        </View>
                    </View>
                    <View style={styles.tableHeader}>
                        <Text style={styles.textHead}>MOR Attendee</Text>
                    </View>
                    <View style={{ flexDirection: 'row', padding: 10 }}>
                        <View style={{ width: '50%', gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Name:</Text>
                                <Text style={{...styles.text, textTransform: 'capitalize'}}>{renovation[0]?.first_name} {renovation[0]?.last_name}</Text>
                            </View>
                        </View>
                        <View style={{ width: '50%', gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Comment:</Text>
                                <View style={{gap: 5}}>
                                    {
                                        renovation[0]?.comments_comment &&
                                        JSON.parse(renovation[0]?.comments_comment).map((comment: any, index: number) => (
                                            <Text style={styles.text} key={index}>{comment.comment}</Text>
                                        ))
                                    }
                                </View>
                            </View>
                        </View>
                    </View>
                </View>
            </Page>
        </Document >
    )
}

export default GenerateRenovationPdf