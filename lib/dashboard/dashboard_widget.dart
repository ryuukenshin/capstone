import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.black,
          automaticallyImplyLeading: false,
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: FlutterFlowTheme.white,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.black,
                      boxShadow: [
                        BoxShadow(
                          color: FlutterFlowTheme.black,
                        )
                      ],
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: FlutterFlowTheme.black,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'Welcome, ',
                                textAlign: TextAlign.end,
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: AuthUserStreamWidget(
                              child: Text(
                                currentUserDocument?.firstName,
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.white,
                                  fontSize: 23,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 70,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.black,
                            ),
                            child: AuthUserStreamWidget(
                              child: Container(
                                width: 120,
                                height: 120,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    currentUserPhoto,
                                    'https://image.flaticon.com/icons/png/512/599/599305.png',
                                  ),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  StreamBuilder<List<ScheduleRecord>>(
                    stream: queryScheduleRecord(
                      queryBuilder: (scheduleRecord) =>
                          scheduleRecord.orderBy('date'),
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitRing(
                              color: FlutterFlowTheme.primaryColor,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      List<ScheduleRecord> columnScheduleRecordList =
                          snapshot.data;
                      final columnScheduleRecord =
                          columnScheduleRecordList.isNotEmpty
                              ? columnScheduleRecordList.first
                              : null;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.white,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'My schedule of collection',
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: StreamBuilder<List<ScheduleRecord>>(
                                      stream: queryScheduleRecord(
                                        singleRecord: true,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: SpinKitRing(
                                                color: FlutterFlowTheme
                                                    .primaryColor,
                                                size: 50,
                                              ),
                                            ),
                                          );
                                        }
                                        List<ScheduleRecord>
                                            columnScheduleRecordList =
                                            snapshot.data;
                                        // Return an empty Container when the document does not exist.
                                        if (snapshot.data.isEmpty) {
                                          return Container();
                                        }
                                        final columnScheduleRecord =
                                            columnScheduleRecordList.isNotEmpty
                                                ? columnScheduleRecordList.first
                                                : null;
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 3,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme
                                                        .primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: StreamBuilder<
                                                      ScheduleRecord>(
                                                    stream: ScheduleRecord
                                                        .getDocument(
                                                            columnScheduleRecord
                                                                .reference),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child: SpinKitRing(
                                                              color: FlutterFlowTheme
                                                                  .primaryColor,
                                                              size: 50,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final rowScheduleRecord =
                                                          snapshot.data;
                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  AuthUserStreamWidget(
                                                                    child: Text(
                                                                      currentUserDocument
                                                                          ?.barangay,
                                                                      style: FlutterFlowTheme
                                                                          .title2
                                                                          .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme
                                                                            .gray,
                                                                        fontSize:
                                                                            25,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      dateTimeFormat(
                                                                          'M/d h:m a',
                                                                          rowScheduleRecord
                                                                              .date),
                                                                      style: FlutterFlowTheme
                                                                          .bodyText2
                                                                          .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme
                                                                            .gray,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          100,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons.star,
                                                                    color: FlutterFlowTheme
                                                                        .white,
                                                                    size: 24,
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              height: 2,
                                            )
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: StreamBuilder<List<ScheduleRecord>>(
                        stream: queryScheduleRecord(
                          queryBuilder: (scheduleRecord) =>
                              scheduleRecord.orderBy('date'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitRing(
                                  color: FlutterFlowTheme.primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<ScheduleRecord> columnScheduleRecordList =
                              snapshot.data;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                                  List.generate(columnScheduleRecordList.length,
                                      (columnIndex) {
                                final columnScheduleRecord =
                                    columnScheduleRecordList[columnIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 8),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    columnScheduleRecord
                                                        .barangay,
                                                    style:
                                                        FlutterFlowTheme.title2,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 4, 0, 0),
                                                    child: Text(
                                                      dateTimeFormat(
                                                          'M/d h:m a',
                                                          columnScheduleRecord
                                                              .date),
                                                      style: FlutterFlowTheme
                                                          .bodyText2
                                                          .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: FlutterFlowTheme
                                                            .black,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
