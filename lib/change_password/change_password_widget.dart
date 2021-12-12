import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({Key key}) : super(key: key);

  @override
  _ChangePasswordWidgetState createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  TextEditingController emailAddressController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.black,
          automaticallyImplyLeading: false,
          leading: InkWell(
            onTap: () async {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.chevron_left_rounded,
              color: Colors.white,
              size: 32,
            ),
          ),
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
            child: Text(
              'Change Password',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.title2.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: FlutterFlowTheme.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.white,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: TextFormField(
                  controller: emailAddressController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Your Email Address',
                    labelStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    hintText: 'Please enter a email...',
                    hintStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.primaryColor,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.primaryColor,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.white,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                  ),
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (emailAddressController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Email required!',
                          ),
                        ),
                      );
                      return;
                    }
                    await resetPassword(
                      email: emailAddressController.text,
                      context: context,
                    );
                    Navigator.pop(context);
                  },
                  text: 'Send Reset Link',
                  options: FFButtonOptions(
                    width: 230,
                    height: 60,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 40,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
