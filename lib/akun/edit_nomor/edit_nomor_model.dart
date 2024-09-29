import '/flutter_flow/flutter_flow_util.dart';
import 'edit_nomor_widget.dart' show EditNomorWidget;
import 'package:flutter/material.dart';

class EditNomorModel extends FlutterFlowModel<EditNomorWidget> {
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
