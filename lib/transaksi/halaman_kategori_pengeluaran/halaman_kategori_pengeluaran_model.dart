import '/flutter_flow/flutter_flow_util.dart';
import 'halaman_kategori_pengeluaran_widget.dart'
    show HalamanKategoriPengeluaranWidget;
import 'package:flutter/material.dart';

class HalamanKategoriPengeluaranModel
    extends FlutterFlowModel<HalamanKategoriPengeluaranWidget> {
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
