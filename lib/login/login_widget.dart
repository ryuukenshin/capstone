import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../forgot_password/forgot_password_widget.dart';
import '../main.dart';
import '../phone_verification/phone_verification_widget.dart';
import '../register/register_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.white,
      body: Align(
        alignment: AlignmentDirectional(-0.14, -0.08),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: FlutterFlowTheme.white,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/Calauan_Laguna.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Container(
                  width: 500,
                  height: 150,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.white,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                    child: Text(
                      'MENRO CALAUAN\nSOLID-WASTE COLLECTION SCHEDULING APP',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Lexend Deca',
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 110),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 20),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: FlutterFlowTheme.primaryColor,
                            width: 3,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 20, 0),
                          child: TextFormField(
                            controller: emailTextController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              labelStyle: FlutterFlowTheme.subtitle2,
                              hintText: 'Email Address',
                              hintStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF1A1F24),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 20),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: FlutterFlowTheme.primaryColor,
                            width: 3,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 20, 0),
                          child: TextFormField(
                            controller: passwordTextController,
                            obscureText: !passwordVisibility,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: FlutterFlowTheme.subtitle2,
                              hintText: 'Password',
                              hintStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () =>
                                      passwordVisibility = !passwordVisibility,
                                ),
                                child: Icon(
                                  passwordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: FlutterFlowTheme.black,
                                  size: 24,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.tertiaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        final user = await signInWithEmail(
                          context,
                          emailTextController.text,
                          passwordTextController.text,
                        );
                        if (user == null) {
                          return;
                        }

                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                NavBarPage(initialPage: 'dashboard'),
                          ),
                        );
                      },
                      text: 'Log In',
                      options: FFButtonOptions(
                        width: 300,
                        height: 55,
                        color: FlutterFlowTheme.primaryColor,
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.white,
                          fontWeight: FontWeight.bold,
                        ),
                        elevation: 4,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 2,
                        ),
                        borderRadius: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: AutoSizeText(
                              'Don\'t have an account?',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.black,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 150),
                                  reverseDuration: Duration(milliseconds: 150),
                                  child: RegisterWidget(),
                                ),
                              );
                            },
                            text: 'Create Account',
                            options: FFButtonOptions(
                              width: 150,
                              height: 40,
                              color: FlutterFlowTheme.primaryColor,
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 0,
                              ),
                              borderRadius: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordWidget(),
                            ),
                          );
                        },
                        text: 'Forgot Password?',
                        options: FFButtonOptions(
                          width: 200,
                          height: 40,
                          color: Color(0xFF1A1F24),
                          textStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.white,
                          ),
                          elevation: 0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2,
                          ),
                          borderRadius: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.primaryColor,
                        borderRadius: 30,
                        borderWidth: 3,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PhoneVerificationWidget(),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        'Sign in using phone number',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
