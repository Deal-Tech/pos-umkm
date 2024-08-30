import '/flutter_flow/flutter_flow_util.dart';
import 'product_add_page_widget.dart' show ProductAddPageWidget;
import 'package:flutter/material.dart';

class ProductAddPageModel extends FlutterFlowModel<ProductAddPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldNama widget.
  FocusNode? textFieldNamaFocusNode;
  TextEditingController? textFieldNamaTextController;
  String? Function(BuildContext, String?)? textFieldNamaTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

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
