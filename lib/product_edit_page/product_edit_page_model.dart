import '/flutter_flow/flutter_flow_util.dart';
import 'product_edit_page_widget.dart' show ProductEditPageWidget;
import 'package:flutter/material.dart';

class ProductEditPageModel extends FlutterFlowModel<ProductEditPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldNama widget.
  FocusNode? textFieldNamaFocusNode;
  TextEditingController? textFieldNamaTextController;
  String? Function(BuildContext, String?)? textFieldNamaTextControllerValidator;
  // State field(s) for TextFieldHarga widget.
  FocusNode? textFieldHargaFocusNode;
  TextEditingController? textFieldHargaTextController;
  String? Function(BuildContext, String?)?
      textFieldHargaTextControllerValidator;
  // State field(s) for TextFieldSatuan widget.
  FocusNode? textFieldSatuanFocusNode;
  TextEditingController? textFieldSatuanTextController;
  String? Function(BuildContext, String?)?
      textFieldSatuanTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNamaFocusNode?.dispose();
    textFieldNamaTextController?.dispose();

    textFieldHargaFocusNode?.dispose();
    textFieldHargaTextController?.dispose();

    textFieldSatuanFocusNode?.dispose();
    textFieldSatuanTextController?.dispose();
  }
}
