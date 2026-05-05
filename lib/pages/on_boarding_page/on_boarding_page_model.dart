import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'on_boarding_page_widget.dart' show OnBoardingPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OnBoardingPageModel extends FlutterFlowModel<OnBoardingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for AccountPageView widget.
  PageController? accountPageViewController;

  int get accountPageViewCurrentIndex => accountPageViewController != null &&
          accountPageViewController!.hasClients &&
          accountPageViewController!.page != null
      ? accountPageViewController!.page!.round()
      : 0;
  bool isDataUploading_uploadProfileImage = false;
  FFUploadedFile uploadedLocalFile_uploadProfileImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadProfileImage = '';

  // State field(s) for UsernameTextField widget.
  FocusNode? usernameTextFieldFocusNode;
  TextEditingController? usernameTextFieldTextController;
  String? Function(BuildContext, String?)?
      usernameTextFieldTextControllerValidator;
  String? _usernameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Username is required';
    }

    return null;
  }

  // State field(s) for BusinessNameTextField widget.
  FocusNode? businessNameTextFieldFocusNode;
  TextEditingController? businessNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      businessNameTextFieldTextControllerValidator;
  String? _businessNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Pronouns is required';
    }

    return null;
  }

  // State field(s) for LocationTextField widget.
  FocusNode? locationTextFieldFocusNode;
  TextEditingController? locationTextFieldTextController;
  String? Function(BuildContext, String?)?
      locationTextFieldTextControllerValidator;
  String? _locationTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter your location is required';
    }

    return null;
  }

  // State field(s) for BioTextField widget.
  FocusNode? bioTextFieldFocusNode;
  TextEditingController? bioTextFieldTextController;
  String? Function(BuildContext, String?)? bioTextFieldTextControllerValidator;
  String? _bioTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Bio is required';
    }

    return null;
  }

  // State field(s) for TypeDropDown widget.
  String? typeDropDownValue;
  FormFieldController<String>? typeDropDownValueController;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    usernameTextFieldTextControllerValidator =
        _usernameTextFieldTextControllerValidator;
    businessNameTextFieldTextControllerValidator =
        _businessNameTextFieldTextControllerValidator;
    locationTextFieldTextControllerValidator =
        _locationTextFieldTextControllerValidator;
    bioTextFieldTextControllerValidator = _bioTextFieldTextControllerValidator;
    passwordVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    usernameTextFieldFocusNode?.dispose();
    usernameTextFieldTextController?.dispose();

    businessNameTextFieldFocusNode?.dispose();
    businessNameTextFieldTextController?.dispose();

    locationTextFieldFocusNode?.dispose();
    locationTextFieldTextController?.dispose();

    bioTextFieldFocusNode?.dispose();
    bioTextFieldTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
