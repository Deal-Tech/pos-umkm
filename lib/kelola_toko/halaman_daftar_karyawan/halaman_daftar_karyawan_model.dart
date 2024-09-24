import '/flutter_flow/flutter_flow_util.dart';
import 'halaman_daftar_karyawan_widget.dart' show HalamanDaftarKaryawanWidget;
import 'package:flutter/material.dart';

class HalamanDaftarKaryawanModel
    extends FlutterFlowModel<HalamanDaftarKaryawanWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
