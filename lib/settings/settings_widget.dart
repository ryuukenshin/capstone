import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  bool switchListTileValue1;
  bool switchListTileValue2;
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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            buttonSize: 46,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 24,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Text(
              'Settings Page',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: FlutterFlowTheme.white,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Choose what notifcations you want to recieve below and we will update the settings.',
                      style: FlutterFlowTheme.bodyText2.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: SwitchListTile.adaptive(
                value: switchListTileValue1 ??= false,
                onChanged: (newValue) =>
                    setState(() => switchListTileValue1 = newValue),
                title: Text(
                  'Push Notifications',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Receive Push notifications from our application on a semi regular basis.',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.tertiaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                activeColor: FlutterFlowTheme.primaryColor,
                activeTrackColor: FlutterFlowTheme.darkGray,
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: SwitchListTile.adaptive(
                value: switchListTileValue2 ??= false,
                onChanged: (newValue) =>
                    setState(() => switchListTileValue2 = newValue),
                title: Text(
                  'Sms Notifications',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Receive sms notifications from us to keep you updated even without internet connection',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.tertiaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                activeColor: FlutterFlowTheme.primaryColor,
                activeTrackColor: FlutterFlowTheme.darkGray,
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding: EdgeInsetsDirectional.fromSTEB(24, 2, 24, 12),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          NavBarPage(initialPage: 'myProfile'),
                    ),
                  );
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('Notice'),
                        content: Text('Settings has been updated'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );
                },
                text: 'Save changes',
                options: FFButtonOptions(
                  width: 190,
                  height: 60,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
