import '/flutter_flow/flutter_flow_util.dart';
import 'halaman_catat_pengeluaran_widget.dart'
    show HalamanCatatPengeluaranWidget;
import 'package:flutter/material.dart';

class HalamanCatatPengeluaranModel
    extends FlutterFlowModel<HalamanCatatPengeluaranWidget> {
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
