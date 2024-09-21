import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'halaman_reset_password_widget.dart' show HalamanResetPasswordWidget;
import 'package:flutter/material.dart';

class HalamanResetPasswordModel
    extends FlutterFlowModel<HalamanResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // Stores action output result for [Backend Call - API (Send OTP)] action in Button widget.
  ApiCallResponse? outputsendotp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();
  }
}
