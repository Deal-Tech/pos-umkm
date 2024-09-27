import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'halaman_metode_pembayaran_model.dart';
export 'halaman_metode_pembayaran_model.dart';

class HalamanMetodePembayaranWidget extends StatefulWidget {
  const HalamanMetodePembayaranWidget({
    super.key,
    required this.total,
  });

  final int? total;

  @override
  State<HalamanMetodePembayaranWidget> createState() =>
      _HalamanMetodePembayaranWidgetState();
}

class _HalamanMetodePembayaranWidgetState
    extends State<HalamanMetodePembayaranWidget> {
  late HalamanMetodePembayaranModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HalamanMetodePembayaranModel());
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
                                context.safePop();
                                FFAppState().pilihpayment = '';
                                safeSetState(() {});
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
                      child: Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Metode Pembayaran',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Rubik',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: FutureBuilder<ApiCallResponse>(
                            future: ApiGetPaymentPOSCall.call(
                              token: FFAppState().apilogin,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final gridViewApiGetPaymentPOSResponse =
                                  snapshot.data!;

                              return Builder(
                                builder: (context) {
                                  final listPaymentMethod =
                                      (gridViewApiGetPaymentPOSResponse.jsonBody
                                                      .toList()
                                                      .map<PaymentMethodStruct?>(
                                                          PaymentMethodStruct
                                                              .maybeFromMap)
                                                      .toList()
                                                  as Iterable<
                                                      PaymentMethodStruct?>)
                                              .withoutNulls
                                              .toList() ??
                                          [];

                                  return GridView.builder(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 10.0,
                                      childAspectRatio: 4.0,
                                    ),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listPaymentMethod.length,
                                    itemBuilder:
                                        (context, listPaymentMethodIndex) {
                                      final listPaymentMethodItem =
                                          listPaymentMethod[
                                              listPaymentMethodIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState().paymentmethod =
                                              PaymentMethodStruct(
                                            paymentMethod: listPaymentMethodItem
                                                .paymentMethod,
                                            id: listPaymentMethodItem.id,
                                            qrisImage:
                                                listPaymentMethodItem.qrisImage,
                                          );
                                          FFAppState().update(() {});
                                        },
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FFAppState()
                                                        .paymentmethod
                                                        .paymentMethod ==
                                                    listPaymentMethodItem
                                                        .paymentMethod
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              listPaymentMethodItem.provider,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 22.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (FFAppState().paymentmethod.paymentMethod == 'QRIS') {
                        _model.apiResultqristransactions =
                            await ApiTransaksiGroup.createTransactionCall.call(
                          paymentPosId: FFAppState().paymentmethod.id,
                          paymentMethod:
                              FFAppState().paymentmethod.paymentMethod,
                          total: widget.total,
                          token: currentAuthenticationToken,
                          status: 'pending',
                          productsJson:
                              FFAppState().cart.map((e) => e.toMap()).toList(),
                        );

                        if ((_model.apiResultqristransactions?.succeeded ??
                            true)) {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Sukses'),
                                content: Text((_model
                                        .apiResultqristransactions?.bodyText ??
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
                          FFAppState().cart = [];
                          safeSetState(() {});

                          context.pushNamed(
                            'Halaman-pembayaran-non-cash',
                            queryParameters: {
                              'total': serializeParam(
                                widget.total,
                                ParamType.int,
                              ),
                              'idtransactions': serializeParam(
                                ApiTransaksiGroup.createTransactionCall
                                    .transactionsid(
                                  (_model.apiResultqristransactions?.jsonBody ??
                                      ''),
                                ),
                                ParamType.int,
                              ),
                              'datetransactions': serializeParam(
                                ApiTransaksiGroup.createTransactionCall
                                    .createdat(
                                  (_model.apiResultqristransactions?.jsonBody ??
                                      ''),
                                ),
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Sukses'),
                                content: Text((_model
                                        .apiResultqristransactions?.bodyText ??
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
                      } else {
                        _model.apiResultdpc =
                            await ApiTransaksiGroup.createTransactionCall.call(
                          paymentPosId: FFAppState().paymentmethod.id,
                          paymentMethod:
                              FFAppState().paymentmethod.paymentMethod,
                          total: widget.total,
                          token: currentAuthenticationToken,
                          status: 'paid',
                          productsJson:
                              FFAppState().cart.map((e) => e.toMap()).toList(),
                        );

                        if ((_model.apiResultdpc?.succeeded ?? true)) {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Sukses'),
                                content:
                                    Text((_model.apiResultdpc?.bodyText ?? '')),
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
                          FFAppState().cart = [];
                          safeSetState(() {});

                          context.pushNamed(
                            'Bukti-pencatatan',
                            queryParameters: {
                              'paymentmethod': serializeParam(
                                'Cash',
                                ParamType.String,
                              ),
                              'total': serializeParam(
                                widget.total,
                                ParamType.int,
                              ),
                              'transactionsid': serializeParam(
                                ApiTransaksiGroup.createTransactionCall
                                    .transactionsid(
                                  (_model.apiResultdpc?.jsonBody ?? ''),
                                ),
                                ParamType.int,
                              ),
                              'datetransactions': serializeParam(
                                ApiTransaksiGroup.createTransactionCall
                                    .createdat(
                                  (_model.apiResultdpc?.jsonBody ?? ''),
                                ),
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Gagal'),
                                content:
                                    Text((_model.apiResultdpc?.bodyText ?? '')),
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
                      }

                      safeSetState(() {});
                    },
                    text: FFAppState().paymentmethod.paymentMethod == 'QRIS'
                        ? 'Lanjut'
                        : 'Simpan',
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
