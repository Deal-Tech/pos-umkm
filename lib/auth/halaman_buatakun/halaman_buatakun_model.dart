import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'halaman_buatakun_widget.dart' show HalamanBuatakunWidget;
import 'package:flutter/material.dart';

class HalamanBuatakunModel extends FlutterFlowModel<HalamanBuatakunWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nama widget.
  FocusNode? namaFocusNode;
  TextEditingController? namaTextController;
  String? Function(BuildContext, String?)? namaTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for nomor widget.
  FocusNode? nomorFocusNode;
  TextEditingController? nomorTextController;
  String? Function(BuildContext, String?)? nomorTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for confirmpassword widget.
  FocusNode? confirmpasswordFocusNode;
  TextEditingController? confirmpasswordTextController;
  late bool confirmpasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmpasswordTextControllerValidator;
  // Stores action output result for [Backend Call - API (api daftar)] action in Button widget.
  ApiCallResponse? apiResultDaftar;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmpasswordVisibility = false;
  }

  @override
  void dispose() {
    namaFocusNode?.dispose();
    namaTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    nomorFocusNode?.dispose();
    nomorTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmpasswordFocusNode?.dispose();
    confirmpasswordTextController?.dispose();
  }
}
