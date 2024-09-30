import '/flutter_flow/flutter_flow_util.dart';
import 'detail_piutang_widget.dart' show DetailPiutangWidget;
import 'package:flutter/material.dart';

class DetailPiutangModel extends FlutterFlowModel<DetailPiutangWidget> {
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
