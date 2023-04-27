import { Document, Page, Text, View, StyleSheet } from '@react-pdf/renderer';
import moment from "moment";
import { Tech } from '../../../interfaces/tech';

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
        fontSize: 8,
        fontWeight: 'extrabold'
    },
    text: {
        fontSize: 7,
        lineHeight: 1.3,
        flexWrap: 'nowrap',
        display: 'flex'
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

const GenerateTechPdfReport = ({ tech }: { tech: Tech[] }) => {
    const green = '#00cc66'
    const red = '#ff3300'

    return (
        <Document>
            <Page size='A4' orientation='landscape' style={styles.page}>
                <View style={styles.header}>
                    <View style={styles.section}>
                        <Text style={styles.textHead}>INQUIRY REPORT</Text>
                    </View>
                    <View style={styles.section}>
                        <Text style={styles.textHead}>Date: {moment().format('MMM DD, Y')}</Text>
                    </View>
                </View>
                <View style={styles.table}>
                    <View>
                        <View style={{ ...styles.flexGorw, flexDirection: 'row' }}>
                            <View style={{ ...styles.tableHeader, width: '5%' }}>
                                <Text style={styles.textHead}>Inquiry</Text>
                            </View>
                            <View style={{ ...styles.tableHeader, width: '8%' }}>
                                <Text style={styles.textHead}>Date</Text>
                            </View>
                            <View style={{ ...styles.tableHeader, width: '10%' }}>
                                <Text style={styles.textHead}>Name</Text>
                            </View>
                            <View style={{ ...styles.tableHeader, width: '10%' }}>
                                <Text style={styles.textHead}>Company Name</Text>
                            </View>
                            <View style={{ ...styles.tableHeader, width: '10%' }}>
                                <Text style={styles.textHead}>Phone</Text>
                            </View>
                            <View style={{ ...styles.tableHeader, width: '17%' }}>
                                <Text style={styles.textHead}>Email Address</Text>
                            </View>
                            <View style={{ ...styles.tableHeader, width: '10%' }}>
                                <Text style={styles.textHead}>Package</Text>
                            </View>
                            <View style={{ ...styles.tableHeader, width: '30%' }}>
                                <Text style={styles.textHead}>Status</Text>
                            </View>
                        </View>
                        {
                            tech.map((item, index) => (
                                <View style={{ ...styles.flexGorw, flexDirection: 'row' }}>
                                    <View style={{ ...styles.tableData, backgroundColor: item.status === 'approved' ? green : item.status === 'rejected' ? red : 'white', width: '5%' }} key={index}>
                                        <Text style={styles.text}>{item.inquiry_id}</Text>
                                    </View>
                                    <View style={{ ...styles.tableData, backgroundColor: item.status === 'approved' ? green : item.status === 'rejected' ? red : 'white', width: '8%' }} key={index}>
                                        <Text style={styles.text}>{moment(item.date).format('MMM DD, Y')}</Text>
                                    </View>
                                    <View style={{ ...styles.tableData, backgroundColor: item.status === 'approved' ? green : item.status === 'rejected' ? red : 'white', width: '10%' }} key={index}>
                                        <Text style={styles.text}>{item.name}</Text>
                                    </View>
                                    <View style={{ ...styles.tableData, backgroundColor: item.status === 'approved' ? green : item.status === 'rejected' ? red : 'white', width: '10%' }} key={index}>
                                        <Text style={styles.text}>{item.company}</Text>
                                    </View>
                                    <View style={{ ...styles.tableData, backgroundColor: item.status === 'approved' ? green : item.status === 'rejected' ? red : 'white', width: '10%' }} key={index}>
                                        <Text style={styles.text}>{item.phone}</Text>
                                    </View>
                                    <View style={{ ...styles.tableData, backgroundColor: item.status === 'approved' ? green : item.status === 'rejected' ? red : 'white', width: '17%' }} key={index}>
                                        <Text style={styles.text}>{item.email}</Text>
                                    </View>
                                    <View style={{ ...styles.tableData, backgroundColor: item.status === 'approved' ? green : item.status === 'rejected' ? red : 'white', width: '10%' }} key={index}>
                                        <View style={{...styles.text, gap: 2, flexDirection: 'column'}}>
                                            <Text>
                                                {
                                                    item.production_inquiry_id ? 'Production Studio' : ''
                                                }
                                            </Text>
                                            <Text>
                                                {
                                                    item.website_inquiry_id ? 'Website Design' : ''
                                                }
                                            </Text>
                                            <Text>
                                                {
                                                    item.design_inquiry_id ? 'Graphic Design' : ''
                                                }
                                            </Text>
                                        </View>
                                    </View>
                                    <View style={{ ...styles.tableData, backgroundColor: item.status === 'approved' ? green : item.status === 'rejected' ? red : 'white', width: '30%' }} key={index}>
                                        {
                                            item.comments_comment &&
                                            JSON.parse(item.comments_comment).map((comment: any, index: number) => {
                                                if (!comment.comment) return
                                                return (
                                                    <Text style={styles.text} key={index}>{comment.comment}</Text>
                                                )
                                            })
                                        }
                                    </View>
                                </View>
                            ))
                        }
                    </View>
                </View>
            </Page>
        </Document>
    )
}

export default GenerateTechPdfReport