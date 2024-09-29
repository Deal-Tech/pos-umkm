import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_rekening_widget.dart' show EditRekeningWidget;
import 'package:flutter/material.dart';

class EditRekeningModel extends FlutterFlowModel<EditRekeningWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nama_bank widget.
  String? namaBankValue;
  FormFieldController<String>? namaBankValueController;
  // State field(s) for nomor_rekening widget.
  FocusNode? nomorRekeningFocusNode;
  TextEditingController? nomorRekeningTextController;
  String? Function(BuildContext, String?)? nomorRekeningTextControllerValidator;
  // State field(s) for nama_pemegang widget.
  FocusNode? namaPemegangFocusNode;
  TextEditingController? namaPemegangTextController;
  String? Function(BuildContext, String?)? namaPemegangTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomorRekeningFocusNode?.dispose();
    nomorRekeningTextController?.dispose();

    namaPemegangFocusNode?.dispose();
    namaPemegangTextController?.dispose();
  }
}
