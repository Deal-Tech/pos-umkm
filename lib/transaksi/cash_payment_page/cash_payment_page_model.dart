import '/flutter_flow/flutter_flow_util.dart';
import 'cash_payment_page_widget.dart' show CashPaymentPageWidget;
import 'package:flutter/material.dart';

class CashPaymentPageModel extends FlutterFlowModel<CashPaymentPageWidget> {
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
