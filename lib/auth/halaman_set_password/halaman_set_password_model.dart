import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'halaman_set_password_widget.dart' show HalamanSetPasswordWidget;
import 'package:flutter/material.dart';

class HalamanSetPasswordModel
    extends FlutterFlowModel<HalamanSetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for KodeVerifikasi widget.
  FocusNode? kodeVerifikasiFocusNode;
  TextEditingController? kodeVerifikasiTextController;
  String? Function(BuildContext, String?)?
      kodeVerifikasiTextControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for KonfirmsaiPasword widget.
  FocusNode? konfirmsaiPaswordFocusNode;
  TextEditingController? konfirmsaiPaswordTextController;
  late bool konfirmsaiPaswordVisibility;
  String? Function(BuildContext, String?)?
      konfirmsaiPaswordTextControllerValidator;
  // Stores action output result for [Backend Call - API (Api Change Password With Code)] action in Button widget.
  ApiCallResponse? apiResultChangePassword;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    konfirmsaiPaswordVisibility = false;
  }

  @override
  void dispose() {
    kodeVerifikasiFocusNode?.dispose();
    kodeVerifikasiTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    konfirmsaiPaswordFocusNode?.dispose();
    konfirmsaiPaswordTextController?.dispose();
  }
}
