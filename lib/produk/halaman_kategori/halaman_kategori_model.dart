import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'halaman_kategori_widget.dart' show HalamanKategoriWidget;
import 'package:flutter/material.dart';

class HalamanKategoriModel extends FlutterFlowModel<HalamanKategoriWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Api Category Create)] action in Button widget.
  ApiCallResponse? apiResultgqy;
  // Stores action output result for [Backend Call - API (Api Delete Category)] action in Icon widget.
  ApiCallResponse? apiResultqqe;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
