import '/flutter_flow/flutter_flow_util.dart';
import 'edit_alamat_usaha_widget.dart' show EditAlamatUsahaWidget;
import 'package:flutter/material.dart';

class EditAlamatUsahaModel extends FlutterFlowModel<EditAlamatUsahaWidget> {
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
