import { Tech } from '../../../interfaces/tech';
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
        fontWeight: 'bold',
    },
    text: {
        fontSize: 11,
        display: 'flex',
        fontWeight: 'light',
        flexDirection: 'row'
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
    },
    textWidth: {
        fontSize: 11,
        display: 'flex',
        fontWeight: 'light',
        flexDirection: 'row',
        maxWidth: 180
    }
});

const formatter = new Intl.NumberFormat('MY', {
    style: 'currency',
    currency: 'MYR'
})

const GenerateTechPdf = ({ tech }: { tech: Tech[] }) => {
    return (
        <Document>
            <Page size='A4' style={styles.page}>
                <View style={{ flexDirection: 'row', justifyContent: 'space-between', marginTop: 10, marginBottom: 10 }}>
                    <View>
                        <Image src={'/images/company/MyDGTech_41907.22979631614.png'} style={{ width: 75, height: 'auto', objectFit: 'content' }} />
                    </View>
                    <View style={{ width: '100%', maxWidth: 450 }}>
                        <Text style={{ fontSize: 20, fontWeight: 'bold', textTransform: 'uppercase', textAlign: 'center', letterSpacing: 0.2 }}>Mydgtech</Text>

                        <Text style={{ ...styles.smallText, textAlign: 'center' }}>23-5 Menara Bangkok Bank Berjaya Center Park, 105, Jalan Ampang,</Text>
                        <Text style={{ ...styles.smallText, textAlign: 'center' }}>50450 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia</Text>
                        <View style={{ flexDirection: 'row', justifyContent: 'space-evenly', marginTop: 10 }}>
                            <Text style={styles.smallText}>Office: +60 32 7794 009</Text>
                            <Text style={styles.smallText}>Whatsapp: +60 11-2685 8683</Text>
                            <Text style={styles.smallText}>Email: inquiry@mydgtech.com.my</Text>
                        </View>
                    </View>
                </View>

                <View style={styles.table} >
                    <View style={{ flexDirection: 'row' }}>
                        <View style={styles.tableData}>
                            <Text style={styles.textHead}>Date: {moment(tech[0]?.date).format('MMM DD, Y')}</Text>
                        </View>
                        <View style={styles.tableData}>
                            <Text style={styles.textHead}>Inquiry No.: {tech[0]?.inquiry_id}</Text>
                        </View>
                    </View>
                    <View style={styles.tableHeader}>
                        <Text style={styles.textHead}>Client Information</Text>
                    </View>
                    <View style={{ flexDirection: 'row', padding: 10 }}>
                        <View style={{ width: '100%', gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Name:</Text>
                                <Text style={styles.text}>{tech[0]?.name}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Phone:</Text>
                                <Text style={styles.text}>{tech[0]?.phone}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Company Name:</Text>
                                <Text style={styles.text}>{tech[0]?.company}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Email:</Text>
                                <Text style={styles.text}>{tech[0]?.email}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Business Nature:</Text>
                                <Text style={styles.text}>{tech[0]?.business}</Text>
                            </View>
                        </View>
                    </View>
                    <View style={styles.tableHeader}>
                        <Text style={styles.textHead}>Service Details</Text>
                    </View>
                    <View style={styles.tableHeader}>
                        <Text style={styles.textHead}>Graphic Design</Text>
                    </View>
                    <View style={{ flexDirection: 'row', padding: 10 }}>
                        <View style={{ width: 300, gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Type of Design:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.design_type && JSON.parse(tech[0]?.design_type).join(', ')}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Size of Design:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.design_size}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Content Provide:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.design_content && JSON.parse(tech[0]?.design_content).join(', ')}</Text>
                            </View>
                        </View>
                        <View style={{ width: 300, gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Design Theme:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.design_theme}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Remarks:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.design_remark}</Text>
                            </View>
                            <View style={{ flexDirection: 'row', justifyContent: 'space-between' }}>
                                <View style={styles.textFlex}>
                                    <Text style={styles.textHead}>Budget:</Text>
                                    <Text style={styles.textWidth}>{formatter.format(tech[0]?.design_budget)}</Text>
                                </View>
                                <View style={styles.textFlex}>
                                    <Text style={styles.textHead}>Due Date:</Text>
                                    <Text style={styles.textWidth}>{tech[0]?.design_due && moment(tech[0]?.design_due).format('MMM DD, Y')}</Text>
                                </View>
                            </View>
                        </View>
                    </View>
                    <View style={styles.tableHeader}>
                        <Text style={styles.textHead}>Production Studio</Text>
                    </View>
                    <View style={{ flexDirection: 'row', padding: 10 }}>
                        <View style={{ width: 300, gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Production:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.production_type && JSON.parse(tech[0]?.production_type).join(', ')}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Type of Video:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.production_video && JSON.parse(tech[0]?.production_video).join(', ')}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Length of Video:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.production_length}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Shooting Location:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.production_location}</Text>
                            </View>
                        </View>
                        <View style={{ width: 300, gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Remarks:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.production_remark}</Text>
                            </View>
                            <View style={{ flexDirection: 'row', justifyContent: 'space-between' }}>
                                <View style={styles.textFlex}>
                                    <Text style={styles.textHead}>Budget:</Text>
                                    <Text style={styles.textWidth}>{formatter.format(tech[0]?.production_budget)}</Text>
                                </View>
                                <View style={styles.textFlex}>
                                    <Text style={styles.textHead}>Due Date:</Text>
                                    <Text style={styles.textWidth}>{tech[0]?.production_due && moment(tech[0]?.production_due).format('MMM DD, Y')}</Text>
                                </View>
                            </View>
                        </View>
                    </View>
                    <View style={styles.tableHeader}>
                        <Text style={styles.textHead}>Website Design</Text>
                    </View>
                    <View style={{ flexDirection: 'row', padding: 10 }}>
                        <View style={{ width: 300, gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Service:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.website_type && JSON.parse(tech[0]?.website_type).join(', ')}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Type of website:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.website_design}</Text>
                            </View>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Number of Keywords:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.website_keywords}</Text>
                            </View>
                        </View>
                        <View style={{ width: 300, gap: 10 }}>
                            <View style={styles.textFlex}>
                                <Text style={styles.textHead}>Remarks:</Text>
                                <Text style={styles.textWidth}>{tech[0]?.website_remark}</Text>
                            </View>
                            <View style={{ flexDirection: 'row', justifyContent: 'space-between' }}>
                                <View style={styles.textFlex}>
                                    <Text style={styles.textHead}>Budget:</Text>
                                    <Text style={styles.textWidth}>{formatter.format(tech[0]?.website_budget)}</Text>
                                </View>
                                <View style={styles.textFlex}>
                                    <Text style={styles.textHead}>Due Date:</Text>
                                    <Text style={styles.textWidth}>{tech[0]?.website_due && moment(tech[0]?.website_due).format('MMM DD, Y')}</Text>
                                </View>
                            </View>
                        </View>
                    </View>
                </View>
                <View style={{ paddingLeft: 10, paddingTop: 5, gap: 5 }}>
                    <Text style={{ fontSize: 10 }}>*** The project valid until 30 days else consider new project</Text>
                    <Text style={{ fontSize: 10 }}>*** Terms and Conditions Applied:</Text>
                    <View style={{ marginLeft: 30 }}>
                        <Text style={{ fontSize: 10 }}>All prices is inclusive of service charges 6% and other levies imposed by the goverment.</Text>
                    </View>
                </View>
            </Page>
        </Document>
    )
}

export default GenerateTechPdf