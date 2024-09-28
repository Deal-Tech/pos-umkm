import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transaksi_keluar_widget.dart' show TransaksiKeluarWidget;
import 'package:flutter/material.dart';

class TransaksiKeluarModel extends FlutterFlowModel<TransaksiKeluarWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Category Expense)] action in Transaksi-keluar widget.
  ApiCallResponse? apiResultCategoryExpense;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for nominal_transaksi widget.
  FocusNode? nominalTransaksiFocusNode;
  TextEditingController? nominalTransaksiTextController;
  String? Function(BuildContext, String?)?
      nominalTransaksiTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (Add Expense)] action in Button widget.
  ApiCallResponse? apiResult99e;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nominalTransaksiFocusNode?.dispose();
    nominalTransaksiTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
