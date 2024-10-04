import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'halaman_pembayaran_non_cash_model.dart';
export 'halaman_pembayaran_non_cash_model.dart';

class HalamanPembayaranNonCashWidget extends StatefulWidget {
  const HalamanPembayaranNonCashWidget({
    super.key,
    required this.total,
    required this.idtransactions,
    required this.datetransactions,
    required this.planuser,
  });

  final int? total;
  final int? idtransactions;
  final String? datetransactions;
  final String? planuser;

  @override
  State<HalamanPembayaranNonCashWidget> createState() =>
      _HalamanPembayaranNonCashWidgetState();
}

class _HalamanPembayaranNonCashWidgetState
    extends State<HalamanPembayaranNonCashWidget> {
  late HalamanPembayaranNonCashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HalamanPembayaranNonCashModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 10.0, 20.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('Home');
                              },
                              text: '',
                              icon: const Icon(
                                Icons.chevron_left,
                                color: Color(0xFF0EC244),
                                size: 34.0,
                              ),
                              options: FFButtonOptions(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                color: const Color(0x000EC244),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0x00363938),
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'Pembayaran',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Rubik',
                                    color: const Color(0xFF0EC244),
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Text(
                            ' ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Rubik',
                                  color: const Color(0xFF0EC244),
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.07,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      border: Border.all(
                        color: const Color(0x1E3E3E3E),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Harga :',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Rubik',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Text(
                              formatNumber(
                                widget.total,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.automatic,
                                currency: 'Rp ',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Rubik',
                                    color: const Color(0xFF0EC244),
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 25.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                    child: Container(
                      decoration: const BoxDecoration(),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 50.0, 20.0, 50.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE6E8ED),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: FutureBuilder<ApiCallResponse>(
                                future: ApiGetPaymentPOSCall.call(
                                  token: currentAuthenticationToken,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitFadingFour(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  final imageApiGetPaymentPOSResponse =
                                      snapshot.data!;

                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      FFAppState().paymentmethod.qrisImage,
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      fit: BoxFit.contain,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ].divide(const SizedBox(height: 13.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await ApiTransaksiGroup.updateStatusTransactionsCall.call(
                        token: currentAuthenticationToken,
                        status: Status.paid.name,
                        transactionId: widget.idtransactions,
                      );

                      FFAppState().paymentmethod = PaymentMethodStruct();
                      safeSetState(() {});

                      context.goNamed(
                        'Bukti-pencatatan',
                        queryParameters: {
                          'paymentmethod': serializeParam(
                            'QRIS',
                            ParamType.String,
                          ),
                          'total': serializeParam(
                            widget.total,
                            ParamType.int,
                          ),
                          'transactionsid': serializeParam(
                            widget.idtransactions,
                            ParamType.int,
                          ),
                          'datetransactions': serializeParam(
                            widget.datetransactions,
                            ParamType.String,
                          ),
                          'userplan': serializeParam(
                            widget.planuser,
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                    text: 'Pembayaran Diterima',
                    options: FFButtonOptions(
                      width: 327.0,
                      height: 60.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).success,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Rubik',
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 110.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.apiResultcektransaksii =
                          await ApiTransaksiGroup.getTransactionIDCall.call(
                        transactionId: widget.idtransactions?.toString(),
                        token: currentAuthenticationToken,
                      );

                      if ((_model.apiResultcektransaksii?.succeeded ?? true)) {
                        if (ApiTransaksiGroup.getTransactionIDCall.status(
                              (_model.apiResultcektransaksii?.jsonBody ?? ''),
                            ) ==
                            'paid') {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Sukses'),
                                content: const Text('Pembayaran telah diterima'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: const Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );

                          context.pushNamed(
                            'Bukti-pencatatan',
                            queryParameters: {
                              'paymentmethod': serializeParam(
                                'QRIS',
                                ParamType.String,
                              ),
                              'total': serializeParam(
                                widget.total,
                                ParamType.int,
                              ),
                              'transactionsid': serializeParam(
                                widget.idtransactions,
                                ParamType.int,
                              ),
                              'datetransactions': serializeParam(
                                widget.datetransactions,
                                ParamType.String,
                              ),
                              'userplan': serializeParam(
                                widget.planuser,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Belum dibayar'),
                                content: const Text('Pembayaran belum diterima'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: const Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      } else {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: const Text('Error'),
                              content: Text(
                                  (_model.apiResultcektransaksii?.bodyText ??
                                      '')),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: const Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      }

                      safeSetState(() {});
                    },
                    text: 'Cek Pembayaran',
                    options: FFButtonOptions(
                      width: 327.0,
                      height: 60.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF0EC244),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Rubik',
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
