import { Document, Page, Text, View, StyleSheet } from '@react-pdf/renderer';
import { office } from "../../../interfaces/office";
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
        fontWeight: 'semibold'
    },
    text: {
        fontSize: 10,
        display: 'flex',
        flexDirection: 'row',
        lineHeight: 1.3
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
    }
});

const formatter = new Intl.NumberFormat('MY', {
    style: 'currency',
    currency: 'MYR'
})

const GenerateOfficePdf = ({ office }: { office: office[] }) => {
    const comments = office[0]?.comments_comment && JSON.parse(office[0]?.comments_comment)
    return (
        <Document>
            <Page size='A4' style={styles.page}>
                <View style={styles.header}>
                    <View style={styles.section}>
                        <Text style={styles.textHead}>Inquiry No: {office[0]?.inquiry_id}</Text>
                    </View>
                    <View style={styles.section}>
                        <Text style={styles.textHead}>Inquiry Form</Text>
                    </View>
                    <View style={styles.section}>
                        <Text style={styles.textHead}>Date: {moment(office[0]?.date).format('MMM DD, Y')}</Text>
                    </View>
                </View>
                <View style={styles.table}>
                    <View style={styles.tabelFlex}>
                        <View style={styles.flexGorw}>
                            <View style={styles.tableHeader}>
                                <Text style={styles.textHead}>Client Information</Text>
                            </View>
                            <View style={styles.tableData}>
                                <Text style={styles.text}>Mame: {office[0]?.name}</Text>
                                <Text style={styles.text}>Company: {office[0]?.company}</Text>
                                <Text style={styles.text}>Phone no: {office[0]?.phone}</Text>
                                <Text style={styles.text}>Email: {office[0]?.email}</Text>
                            </View>
                        </View>
                        <View style={styles.flexGorw}>
                            <View style={styles.tableHeader}>
                                <Text style={styles.textHead}>Agency</Text>
                            </View>
                            <View style={styles.tableData}>
                                <Text style={styles.text}>{office[0]?.agency}</Text>
                            </View>
                        </View>
                        <View style={styles.flexGorw}>
                            <View style={styles.tableHeader}>
                                <Text style={styles.textHead}>Person in Charge</Text>
                            </View>
                            <View style={styles.tableData}>
                                <Text style={styles.text}>Name: {office[0]?.first_name} {office[0]?.last_name}</Text>
                                <Text style={styles.text}>username: {office[0]?.username}</Text>
                            </View>
                        </View>
                    </View>
                    <View style={styles.tableHeader}>
                        <Text style={{ ...styles.textHead, textAlign: 'center' }}>Requested on</Text>
                    </View>
                    <View style={styles.tabelFlex}>
                        <View style={{ width: '20%' }}>
                            <View style={styles.tableHeader}>
                                <Text style={styles.textHead}>Virtual Office</Text>
                            </View>
                            <View style={styles.tableData}>
                                <Text style={styles.text}>{office[0]?.virtual_service}</Text>
                            </View>
                        </View>
                        <View style={{ width: '40%' }}>
                            <View style={styles.tableHeader}>
                                <Text style={styles.textHead}>Serviced Office</Text>
                            </View>
                            <View style={styles.tableData}>
                                <Text style={styles.text}>Budget: {formatter.format(office[0]?.serviced_budget)}</Text>
                                <Text style={styles.text}>No of Pax: {office[0]?.serviced_pax}</Text>
                                <Text style={styles.text}>Move in Date: {moment(office[0]?.serviced_date).format('MMM DD, Y')}</Text>
                                <Text style={styles.text}>Type of Room: {office[0]?.serviced_room}</Text>
                                <Text style={styles.text}>Remarks: {office[0]?.serviced_remarks}</Text>
                            </View>
                        </View>
                        <View style={{ width: '40%' }}>
                            <View style={styles.tableHeader}>
                                <Text style={styles.textHead}>Meeting Room/Shooting</Text>
                            </View>
                            <View style={styles.tableData}>
                                <Text style={styles.text}>Layout/Room: {office[0]?.meeting_room}</Text>
                                <Text style={styles.text}>Date: {moment(office[0]?.meeting_date).format('MMM DD, Y')}</Text>
                                <Text style={styles.text}>Time: {moment(office[0]?.meeting_time, "HH:mm:ss").format('hh:mm A')}</Text>
                                <Text style={styles.text}>No of Pax: {office[0]?.meeting_pax}</Text>
                                <Text style={styles.text}>Remarks: {office[0]?.meeting_remarks}</Text>
                            </View>
                        </View>
                    </View>

                    <View style={styles.tabelFlex}>
                        <View style={{ width: '20%' }}>
                            <View style={styles.tableHeader}>
                                <Text style={styles.textHead}>Date</Text>
                            </View>
                            {
                                office[0]?.comments_comment &&
                                comments.map((comment: any, index: number) => (
                                    <View style={styles.tableData} key={index}>
                                        <Text style={styles.text}>{moment(comment.date).format('MMM DD, Y')}</Text>
                                    </View>
                                ))
                            }
                        </View>
                        <View style={{ width: '80%' }}>
                            <View style={styles.tableHeader}>
                                <Text style={styles.textHead}>Status</Text>
                            </View>
                            {
                                office[0]?.comments_comment &&
                                comments.map((comment: any, index: number) => (
                                    <View style={styles.tableData} key={index}>
                                        <Text style={styles.text}>{comment.comment}</Text>
                                    </View>
                                ))
                            }
                        </View>
                    </View>
                </View>
            </Page>
        </Document>
    )
}

export default GenerateOfficePdf