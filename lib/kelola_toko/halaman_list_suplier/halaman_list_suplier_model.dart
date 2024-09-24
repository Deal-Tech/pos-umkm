import '/flutter_flow/flutter_flow_util.dart';
import 'halaman_list_suplier_widget.dart' show HalamanListSuplierWidget;
import 'package:flutter/material.dart';

class HalamanListSuplierModel
    extends FlutterFlowModel<HalamanListSuplierWidget> {
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
