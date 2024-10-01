import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'halaman_edit_produk_widget.dart' show HalamanEditProdukWidget;
import 'package:flutter/material.dart';

class HalamanEditProdukModel extends FlutterFlowModel<HalamanEditProdukWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Api Uploud Image product)] action in Image widget.
  ApiCallResponse? apiResultUploudImage1;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for NamaProduk widget.
  FocusNode? namaProdukFocusNode;
  TextEditingController? namaProdukTextController;
  String? Function(BuildContext, String?)? namaProdukTextControllerValidator;
  // State field(s) for HargaProduk widget.
  FocusNode? hargaProdukFocusNode;
  TextEditingController? hargaProdukTextController;
  String? Function(BuildContext, String?)? hargaProdukTextControllerValidator;
  // State field(s) for NilaiSatuan widget.
  FocusNode? nilaiSatuanFocusNode;
  TextEditingController? nilaiSatuanTextController;
  String? Function(BuildContext, String?)? nilaiSatuanTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for SKUProduk widget.
  FocusNode? sKUProdukFocusNode;
  TextEditingController? sKUProdukTextController;
  String? Function(BuildContext, String?)? sKUProdukTextControllerValidator;
  // State field(s) for Barcode widget.
  FocusNode? barcodeFocusNode;
  TextEditingController? barcodeTextController;
  String? Function(BuildContext, String?)? barcodeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Api Product Update)] action in Button widget.
  ApiCallResponse? apiResultysp;
  // Stores action output result for [Backend Call - API (Api Uploud Image product)] action in Button widget.
  ApiCallResponse? apiResultUploudImage2;
  // Stores action output result for [Backend Call - API (Api Product Update)] action in Button widget.
  ApiCallResponse? apiResultysppp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    namaProdukFocusNode?.dispose();
    namaProdukTextController?.dispose();

    hargaProdukFocusNode?.dispose();
    hargaProdukTextController?.dispose();

    nilaiSatuanFocusNode?.dispose();
    nilaiSatuanTextController?.dispose();

    sKUProdukFocusNode?.dispose();
    sKUProdukTextController?.dispose();

    barcodeFocusNode?.dispose();
    barcodeTextController?.dispose();
  }
}
