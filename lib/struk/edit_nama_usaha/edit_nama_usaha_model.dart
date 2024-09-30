import '/flutter_flow/flutter_flow_util.dart';
import 'edit_nama_usaha_widget.dart' show EditNamaUsahaWidget;
import 'package:flutter/material.dart';

class EditNamaUsahaModel extends FlutterFlowModel<EditNamaUsahaWidget> {
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
