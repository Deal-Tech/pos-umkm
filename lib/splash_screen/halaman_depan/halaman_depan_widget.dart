import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'halaman_depan_model.dart';
export 'halaman_depan_model.dart';

class HalamanDepanWidget extends StatefulWidget {
  const HalamanDepanWidget({super.key});

  @override
  State<HalamanDepanWidget> createState() => _HalamanDepanWidgetState();
}

class _HalamanDepanWidgetState extends State<HalamanDepanWidget> {
  late HalamanDepanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HalamanDepanModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Deal POS',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Rubik',
                            color: const Color(0xFF0EC244),
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: SvgPicture.asset(
                            'assets/images/Group_16.svg',
                            width: 256.42,
                            height: 284.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Cara terbaik mengelola keuangan anda',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Rubik',
                            color: const Color(0xFF2A3357),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ].divide(const SizedBox(height: 20.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('HalamanBuatakun');
                      },
                      text: 'Buat akun baru',
                      options: FFButtonOptions(
                        width: 327.0,
                        height: 57.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF0EC244),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Rubik',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Halaman_login_2');
                      },
                      text: 'Masuk',
                      options: FFButtonOptions(
                        width: 327.0,
                        height: 57.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0x000EC244),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Rubik',
                                  color: const Color(0xFF0EC244),
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderSide: const BorderSide(
                          color: Color(0xFF0EC244),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ].divide(const SizedBox(height: 31.0)),
                ),
              ].divide(const SizedBox(height: 100.0)),
            ),
          ),
        ),
      ),
    );
  }
}
