import '../create_notif/create_notif_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAlarmWidget extends StatefulWidget {
  const CreateAlarmWidget({Key key}) : super(key: key);

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
        preferredSize: Size.fromHeight(25),
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
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Lexend Deca',
            color: FlutterFlowTheme.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
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
              padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 170,
                      decoration: BoxDecoration(
                        color: Color(0xFF090F13),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image.asset(
                            'assets/images/shutterstock_160161059.jpg',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x65090F13),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Biodegradable',
                                      style: FlutterFlowTheme.title1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 4, 16, 16),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button-Reserve pressed ...');
                                      },
                                      text: 'Cancel',
                                      icon: Icon(
                                        Icons.add_rounded,
                                        color: FlutterFlowTheme.black,
                                        size: 15,
                                      ),
                                      options: FFButtonOptions(
                                        width: 120,
                                        height: 40,
                                        color: FlutterFlowTheme.secondaryColor,
                                        textStyle: GoogleFonts.getFont(
                                          'Lexend Deca',
                                          color: FlutterFlowTheme.black,
                                          fontSize: 14,
                                        ),
                                        elevation: 3,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 8,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 4),
                                            child: Text(
                                              '10:00am',
                                              style: FlutterFlowTheme.title3
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Thursday June 22',
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xB4FFFFFF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color(0xFF090F13),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image.asset(
                            'assets/images/ad3821a5e6f137e8e420c4fb865a49fc.jpg',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x65090F13),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Non-biodegradable',
                                      style: FlutterFlowTheme.title1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 4, 16, 16),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button-Reserve pressed ...');
                                      },
                                      text: 'Cancel',
                                      icon: Icon(
                                        Icons.add_rounded,
                                        color: FlutterFlowTheme.black,
                                        size: 15,
                                      ),
                                      options: FFButtonOptions(
                                        width: 120,
                                        height: 40,
                                        color: Color(0xFF39D2C0),
                                        textStyle: GoogleFonts.getFont(
                                          'Lexend Deca',
                                          color: FlutterFlowTheme.black,
                                          fontSize: 14,
                                        ),
                                        elevation: 3,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 8,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 4),
                                            child: Text(
                                              '10:00am',
                                              style: FlutterFlowTheme.title3
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Thursday June 22',
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xB4FFFFFF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color(0xFF090F13),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image.asset(
                            'assets/images/PlasticBottlesRecycle_Pixabay_840x480.png',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x65090F13),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Recyclable',
                                      style: FlutterFlowTheme.title1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 4, 16, 16),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button-Reserve pressed ...');
                                      },
                                      text: 'Cancel',
                                      icon: Icon(
                                        Icons.add_rounded,
                                        color: FlutterFlowTheme.black,
                                        size: 15,
                                      ),
                                      options: FFButtonOptions(
                                        width: 120,
                                        height: 40,
                                        color: Color(0xFF39D2C0),
                                        textStyle: GoogleFonts.getFont(
                                          'Lexend Deca',
                                          color: FlutterFlowTheme.black,
                                          fontSize: 14,
                                        ),
                                        elevation: 3,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 8,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 4),
                                            child: Text(
                                              '10:00am',
                                              style: FlutterFlowTheme.title3
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Thursday June 22',
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xB4FFFFFF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
