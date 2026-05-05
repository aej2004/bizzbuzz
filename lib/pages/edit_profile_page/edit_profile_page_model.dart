import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'edit_profile_page_widget.dart' show EditProfilePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfilePageModel extends FlutterFlowModel<EditProfilePageWidget> {
  ///  Local state fields for this page.

  String? profilePicture;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData7ry = false;
  FFUploadedFile uploadedLocalFile_uploadData7ry =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData7ry = '';

  // State field(s) for UsernameTextField widget.
  FocusNode? usernameTextFieldFocusNode;
  TextEditingController? usernameTextFieldTextController;
  String? Function(BuildContext, String?)?
      usernameTextFieldTextControllerValidator;
  // State field(s) for PronounsTextField widget.
  FocusNode? pronounsTextFieldFocusNode1;
  TextEditingController? pronounsTextFieldTextController1;
  String? Function(BuildContext, String?)?
      pronounsTextFieldTextController1Validator;
  // State field(s) for PronounsTextField widget.
  FocusNode? pronounsTextFieldFocusNode2;
  TextEditingController? pronounsTextFieldTextController2;
  String? Function(BuildContext, String?)?
      pronounsTextFieldTextController2Validator;
  // State field(s) for BioTextField widget.
  FocusNode? bioTextFieldFocusNode;
  TextEditingController? bioTextFieldTextController;
  String? Function(BuildContext, String?)? bioTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    usernameTextFieldFocusNode?.dispose();
    usernameTextFieldTextController?.dispose();

    pronounsTextFieldFocusNode1?.dispose();
    pronounsTextFieldTextController1?.dispose();

    pronounsTextFieldFocusNode2?.dispose();
    pronounsTextFieldTextController2?.dispose();

    bioTextFieldFocusNode?.dispose();
    bioTextFieldTextController?.dispose();
  }
}
