import '../backend/backend.dart';
import '../create_notif/create_notif_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAlarmWidget extends StatefulWidget {
  const CreateAlarmWidget({
    Key key,
    this.bio,
  }) : super(key: key);

  final ScheduleRecord bio;

  @override
  _CreateAlarmWidgetState createState() => _CreateAlarmWidgetState();
}

class _CreateAlarmWidgetState extends State<CreateAlarmWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Color(0xFF090F13),
          automaticallyImplyLeading: false,
          actions: [],
          elevation: 2,
        ),
      ),
      backgroundColor: FlutterFlowTheme.white,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.bottomToTop,
              duration: Duration(milliseconds: 10),
              reverseDuration: Duration(milliseconds: 10),
              child: CreateNotifWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.secondaryColor,
        icon: Icon(
          Icons.add,
          color: FlutterFlowTheme.black,
        ),
        elevation: 10,
        label: Text(
          'Create a notification',
          style: FlutterFlowTheme.subtitle2.override(
            fontFamily: 'Lexend Deca',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: StreamBuilder<List<ScheduleRecord>>(
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
                  color: FlutterFlowTheme.primaryColor,
                  size: 50,
                ),
              ),
            );
          }
          List<ScheduleRecord> mainContainerScheduleRecordList = snapshot.data;
          // Return an empty Container when the document does not exist.
          if (snapshot.data.isEmpty) {
            return Container();
          }
          final mainContainerScheduleRecord =
              mainContainerScheduleRecordList.isNotEmpty
                  ? mainContainerScheduleRecordList.first
                  : null;
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: Text(
                  'Create a schedule for your own waste segregation',
                  style: FlutterFlowTheme.title2.override(
                    fontFamily: 'Lexend Deca',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: StreamBuilder<List<ScheduleRecord>>(
                          stream: queryScheduleRecord(
                            queryBuilder: (scheduleRecord) =>
                                scheduleRecord.orderBy('notifDate'),
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
                                children: List.generate(
                                    columnScheduleRecordList.length,
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
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF131619),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      columnScheduleRecord
                                                          .wasteType,
                                                      style: FlutterFlowTheme
                                                          .title2
                                                          .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: FlutterFlowTheme
                                                            .white,
                                                        fontSize: 28,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        columnScheduleRecord
                                                            .notifDate,
                                                        style: FlutterFlowTheme
                                                            .bodyText2
                                                            .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .primaryColor,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 5, 0, 0),
                                                      child: Text(
                                                        columnScheduleRecord
                                                            .details,
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .darkGray,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 120,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 1, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30,
                                                      borderWidth: 1,
                                                      buttonSize: 60,
                                                      icon: Icon(
                                                        Icons
                                                            .check_circle_outline,
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        size: 30,
                                                      ),
                                                      onPressed: () async {
                                                        await columnScheduleRecord
                                                            .reference
                                                            .delete();
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Please confirm your action'),
                                                              content: Text(
                                                                  'Are you sure you\'re done already?'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Cancel'),
                                                                ),
                                                                TextButton(
                                                                  onPressed:
                                                                      () async {
                                                                    Navigator.pop(
                                                                        alertDialogContext);
                                                                    Navigator.pop(
                                                                        context);
                                                                    ;
                                                                  },
                                                                  child: Text(
                                                                      'Confirm'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 1, 0),
                                                          child: Text(
                                                            'mark as done',
                                                            style:
                                                                FlutterFlowTheme
                                                                    .subtitle2
                                                                    .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color: FlutterFlowTheme
                                                                  .primaryColor,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
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
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
