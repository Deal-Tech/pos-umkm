import '/flutter_flow/flutter_flow_util.dart';
import 'halaman_kelola_toko_widget.dart' show HalamanKelolaTokoWidget;
import 'package:flutter/material.dart';

class HalamanKelolaTokoModel extends FlutterFlowModel<HalamanKelolaTokoWidget> {
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
