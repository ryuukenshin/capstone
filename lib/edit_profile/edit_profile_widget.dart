import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({
    Key key,
    this.userEmail,
    this.userDisplay,
    this.photoUrl,
  }) : super(key: key);

  final UsersRecord userEmail;
  final UsersRecord userDisplay;
  final String photoUrl;

  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  String uploadedFileUrl = '';
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(text: currentUserEmail);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference),
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
        final editProfileUsersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.black,
              iconTheme: IconThemeData(color: FlutterFlowTheme.white),
              automaticallyImplyLeading: true,
              leading: InkWell(
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.white,
                  size: 24,
                ),
              ),
              flexibleSpace: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Text(
                  'Edit Profile',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.title2.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              actions: [],
              elevation: 0,
            ),
          ),
          backgroundColor: FlutterFlowTheme.white,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            final selectedMedia = await selectMedia(
                              maxWidth: 1000.00,
                              maxHeight: 1000.00,
                              mediaSource: MediaSource.photoGallery,
                            );
                            if (selectedMedia != null &&
                                validateFileFormat(
                                    selectedMedia.storagePath, context)) {
                              showUploadMessage(context, 'Uploading file...',
                                  showLoading: true);
                              final downloadUrl = await uploadData(
                                  selectedMedia.storagePath,
                                  selectedMedia.bytes);
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              if (downloadUrl != null) {
                                setState(() => uploadedFileUrl = downloadUrl);
                                showUploadMessage(context, 'Success!');
                              } else {
                                showUploadMessage(
                                    context, 'Failed to upload media');
                                return;
                              }
                            }
                          },
                          child: Container(
                            width: 80,
                            height: 80,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              valueOrDefault<String>(
                                editProfileUsersRecord.photoUrl,
                                'https://image.flaticon.com/icons/png/512/599/599305.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                            child: AuthUserStreamWidget(
                              child: TextFormField(
                                controller: textController1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  labelStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.black,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.primaryColor,
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.primaryColor,
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.white,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 24, 16, 24),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.black,
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                            child: TextFormField(
                              controller: textController2 ??=
                                  TextEditingController(
                                text: editProfileUsersRecord.firstName,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Full Name',
                                labelStyle: FlutterFlowTheme.bodyText1,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.primaryColor,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.primaryColor,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16, 24, 16, 24),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.black,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                            child: TextFormField(
                              controller: textController3 ??=
                                  TextEditingController(
                                text: editProfileUsersRecord.userRole,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Job Title',
                                labelStyle: FlutterFlowTheme.bodyText1,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.primaryColor,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.primaryColor,
                                    width: 3,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16, 24, 16, 24),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final usersUpdateData = createUsersRecordData(
                            userRole: textController3?.text ?? '',
                            firstName: '',
                            lastName: '',
                            email: '',
                          );
                          await editProfileUsersRecord.reference
                              .update(usersUpdateData);
                          Navigator.pop(context);
                        },
                        text: 'Save Changes',
                        options: FFButtonOptions(
                          width: 200,
                          height: 50,
                          color: FlutterFlowTheme.primaryColor,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.white,
                            fontWeight: FontWeight.bold,
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
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
