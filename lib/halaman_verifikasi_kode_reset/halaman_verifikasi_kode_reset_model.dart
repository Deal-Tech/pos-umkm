import '/flutter_flow/flutter_flow_util.dart';
import 'halaman_verifikasi_kode_reset_widget.dart'
    show HalamanVerifikasiKodeResetWidget;
import 'package:flutter/material.dart';

class HalamanVerifikasiKodeResetModel
    extends FlutterFlowModel<HalamanVerifikasiKodeResetWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for KodeVerifikasi widget.
  FocusNode? kodeVerifikasiFocusNode;
  TextEditingController? kodeVerifikasiTextController;
  String? Function(BuildContext, String?)?
      kodeVerifikasiTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    kodeVerifikasiFocusNode?.dispose();
    kodeVerifikasiTextController?.dispose();
  }
}
