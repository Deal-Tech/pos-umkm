import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_add_page_widget.dart' show ProductAddPageWidget;
import 'package:flutter/material.dart';

class ProductAddPageModel extends FlutterFlowModel<ProductAddPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldNama widget.
  FocusNode? textFieldNamaFocusNode;
  TextEditingController? textFieldNamaTextController;
  String? Function(BuildContext, String?)? textFieldNamaTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Api Uploud Image product)] action in Image widget.
  ApiCallResponse? apiResultuploudimage;
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
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (Api Product Create)] action in Button widget.
  ApiCallResponse? insertApiCall;

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
