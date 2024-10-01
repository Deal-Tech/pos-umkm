import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'catatan_piutang_widget.dart' show CatatanPiutangWidget;
import 'package:flutter/material.dart';

class CatatanPiutangModel extends FlutterFlowModel<CatatanPiutangWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nama_penghutang widget.
  FocusNode? namaPenghutangFocusNode;
  TextEditingController? namaPenghutangTextController;
  String? Function(BuildContext, String?)?
      namaPenghutangTextControllerValidator;
  // State field(s) for TextFieldnomor_penghutang widget.
  FocusNode? textFieldnomorPenghutangFocusNode;
  TextEditingController? textFieldnomorPenghutangTextController;
  String? Function(BuildContext, String?)?
      textFieldnomorPenghutangTextControllerValidator;
  // State field(s) for jumlah_hutang widget.
  FocusNode? jumlahHutangFocusNode;
  TextEditingController? jumlahHutangTextController;
  String? Function(BuildContext, String?)? jumlahHutangTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for deskripsi_hutang widget.
  FocusNode? deskripsiHutangFocusNode;
  TextEditingController? deskripsiHutangTextController;
  String? Function(BuildContext, String?)?
      deskripsiHutangTextControllerValidator;
  // Stores action output result for [Backend Call - API (Add Receivable)] action in Button widget.
  ApiCallResponse? apiResultearud;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    namaPenghutangFocusNode?.dispose();
    namaPenghutangTextController?.dispose();

    textFieldnomorPenghutangFocusNode?.dispose();
    textFieldnomorPenghutangTextController?.dispose();

    jumlahHutangFocusNode?.dispose();
    jumlahHutangTextController?.dispose();

    deskripsiHutangFocusNode?.dispose();
    deskripsiHutangTextController?.dispose();
  }
}
