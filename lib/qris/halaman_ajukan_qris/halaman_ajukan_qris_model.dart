import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'halaman_ajukan_qris_widget.dart' show HalamanAjukanQrisWidget;
import 'package:flutter/material.dart';

class HalamanAjukanQrisModel extends FlutterFlowModel<HalamanAjukanQrisWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Api Uploud Image product)] action in Image widget.
  ApiCallResponse? apiResultUploudImage1;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Api Uploud Image product)] action in Image widget.
  ApiCallResponse? apiResultUploudImage2;
  // State field(s) for nama_usaha widget.
  FocusNode? namaUsahaFocusNode;
  TextEditingController? namaUsahaTextController;
  String? Function(BuildContext, String?)? namaUsahaTextControllerValidator;
  // State field(s) for pemilik_usaha widget.
  FocusNode? pemilikUsahaFocusNode;
  TextEditingController? pemilikUsahaTextController;
  String? Function(BuildContext, String?)? pemilikUsahaTextControllerValidator;
  // State field(s) for alamat_usaha widget.
  FocusNode? alamatUsahaFocusNode;
  TextEditingController? alamatUsahaTextController;
  String? Function(BuildContext, String?)? alamatUsahaTextControllerValidator;
  // State field(s) for nomor_telepon widget.
  FocusNode? nomorTeleponFocusNode;
  TextEditingController? nomorTeleponTextController;
  String? Function(BuildContext, String?)? nomorTeleponTextControllerValidator;
  // State field(s) for kategori_usaha widget.
  String? kategoriUsahaValue;
  FormFieldController<String>? kategoriUsahaValueController;
  // State field(s) for penjelasan_usaha widget.
  FocusNode? penjelasanUsahaFocusNode;
  TextEditingController? penjelasanUsahaTextController;
  String? Function(BuildContext, String?)?
      penjelasanUsahaTextControllerValidator;
  // State field(s) for jenis_dokumen widget.
  String? jenisDokumenValue;
  FormFieldController<String>? jenisDokumenValueController;
  // State field(s) for nomor_identitas widget.
  FocusNode? nomorIdentitasFocusNode;
  TextEditingController? nomorIdentitasTextController;
  String? Function(BuildContext, String?)?
      nomorIdentitasTextControllerValidator;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Api Uploud Image product)] action in Image widget.
  ApiCallResponse? apiResultUploudImage3;
  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Api Uploud Image product)] action in Image widget.
  ApiCallResponse? apiResultUploudImage4;
  // State field(s) for rekening_bank widget.
  String? rekeningBankValue;
  FormFieldController<String>? rekeningBankValueController;
  // State field(s) for nomor_rekening widget.
  FocusNode? nomorRekeningFocusNode;
  TextEditingController? nomorRekeningTextController;
  String? Function(BuildContext, String?)? nomorRekeningTextControllerValidator;
  // State field(s) for pemilik_rekening widget.
  FocusNode? pemilikRekeningFocusNode;
  TextEditingController? pemilikRekeningTextController;
  String? Function(BuildContext, String?)?
      pemilikRekeningTextControllerValidator;
  // Stores action output result for [Backend Call - API (Add Qris)] action in Button widget.
  ApiCallResponse? apiResult37m;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    namaUsahaFocusNode?.dispose();
    namaUsahaTextController?.dispose();

    pemilikUsahaFocusNode?.dispose();
    pemilikUsahaTextController?.dispose();

    alamatUsahaFocusNode?.dispose();
    alamatUsahaTextController?.dispose();

    nomorTeleponFocusNode?.dispose();
    nomorTeleponTextController?.dispose();

    penjelasanUsahaFocusNode?.dispose();
    penjelasanUsahaTextController?.dispose();

    nomorIdentitasFocusNode?.dispose();
    nomorIdentitasTextController?.dispose();

    nomorRekeningFocusNode?.dispose();
    nomorRekeningTextController?.dispose();

    pemilikRekeningFocusNode?.dispose();
    pemilikRekeningTextController?.dispose();
  }
}
