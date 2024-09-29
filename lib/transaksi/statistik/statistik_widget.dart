import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'statistik_model.dart';
export 'statistik_model.dart';

class StatistikWidget extends StatefulWidget {
  const StatistikWidget({super.key});

  @override
  State<StatistikWidget> createState() => _StatistikWidgetState();
}

class _StatistikWidgetState extends State<StatistikWidget> {
  late StatistikModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatistikModel());
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
          child: FutureBuilder<ApiCallResponse>(
            future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
                  ..complete(ReportCall.call(
                    token: currentAuthenticationToken,
                    filter: FFAppState().filterreport,
                  )))
                .future,
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
              final columnReportResponse = snapshot.data!;

              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Laporan',
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
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                            color: Color(0x1A000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Keuntungan Penjualan',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Rubik',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              'Rp500.000',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Rubik',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 20.0,
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
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                            color: Color(0x1A000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().filterreport = 'minggu_ini';
                                safeSetState(() {});
                                safeSetState(
                                    () => _model.apiRequestCompleter = null);
                                await _model.waitForApiRequestCompleted();
                              },
                              text: 'Minggu ini',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                FFAppState().filterreport = 'bulan_ini';
                                safeSetState(() {});
                                safeSetState(
                                    () => _model.apiRequestCompleter = null);
                                await _model.waitForApiRequestCompleted();
                              },
                              text: 'Bulan ini',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ].divide(const SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 20.0, 20.0, 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Penjualan',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rubik',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Text(
                                    formatNumber(
                                      ReportStruct.maybeFromMap(
                                              columnReportResponse.jsonBody)!
                                          .totalPenjualan,
                                      formatType: FormatType.decimal,
                                      decimalType: DecimalType.automatic,
                                      currency: 'Rp ',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rubik',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 10.0, 15.0, 10.0),
                              child: SizedBox(
                                width: 370.0,
                                height: 180.0,
                                child: FlutterFlowBarChart(
                                  barData: [
                                    FFBarChartData(
                                      yData: FFAppState().filterreport ==
                                              'minggu_ini'
                                          ? ReportStruct.maybeFromMap(
                                                  columnReportResponse
                                                      .jsonBody)!
                                              .penjualanHarian
                                              .map((e) => formatNumber(
                                                    e.total,
                                                    formatType:
                                                        FormatType.compact,
                                                  ))
                                              .toList()
                                          : ReportStruct.maybeFromMap(
                                                  columnReportResponse
                                                      .jsonBody)!
                                              .penjualanMingguan
                                              .map((e) => formatNumber(
                                                    e.total,
                                                    formatType:
                                                        FormatType.compact,
                                                  ))
                                              .toList(),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    )
                                  ],
                                  xLabels: FFAppState().filterreport ==
                                          'minggu_ini'
                                      ? ReportStruct.maybeFromMap(
                                              columnReportResponse.jsonBody)!
                                          .penjualanHarian
                                          .map((e) => e.hari)
                                          .toList()
                                      : ReportStruct.maybeFromMap(
                                              columnReportResponse.jsonBody)!
                                          .penjualanMingguan
                                          .map((e) => e.rangeTanggal)
                                          .toList(),
                                  barWidth: 16.0,
                                  barBorderRadius: BorderRadius.circular(8.0),
                                  groupSpace: 8.0,
                                  alignment: BarChartAlignment.spaceAround,
                                  chartStylingInfo: const ChartStylingInfo(
                                    backgroundColor: Color(0x000EC244),
                                    showBorder: false,
                                  ),
                                  axisBounds: const AxisBounds(),
                                  xAxisLabelInfo: const AxisLabelInfo(
                                    reservedSize: 28.0,
                                  ),
                                  yAxisLabelInfo: const AxisLabelInfo(
                                    reservedSize: 42.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 20.0, 20.0, 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Pengeluaran',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rubik',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Text(
                                    'Rp1.000.000',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rubik',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 10.0, 15.0, 10.0),
                              child: SizedBox(
                                height: 180.0,
                                child: FlutterFlowBarChart(
                                  barData: [
                                    FFBarChartData(
                                      yData: ReportStruct.maybeFromMap(
                                              columnReportResponse.jsonBody)!
                                          .pengeluaranHarian
                                          .map((e) => formatNumber(
                                                e.total,
                                                formatType: FormatType.compact,
                                              ))
                                          .toList(),
                                      color: FlutterFlowTheme.of(context).error,
                                    )
                                  ],
                                  xLabels: ReportStruct.maybeFromMap(
                                          columnReportResponse.jsonBody)!
                                      .pengeluaranHarian
                                      .map((e) => e.hari)
                                      .toList(),
                                  barWidth: 30.0,
                                  barBorderRadius: BorderRadius.circular(10.0),
                                  groupSpace: 5.0,
                                  alignment: BarChartAlignment.spaceAround,
                                  chartStylingInfo: const ChartStylingInfo(
                                    backgroundColor: Color(0x00819288),
                                    showBorder: false,
                                  ),
                                  axisBounds: const AxisBounds(),
                                  xAxisLabelInfo: const AxisLabelInfo(
                                    reservedSize: 28.0,
                                  ),
                                  yAxisLabelInfo: const AxisLabelInfo(
                                    reservedSize: 42.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 20.0, 20.0, 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Produk Terlaris',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rubik',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Builder(
                              builder: (context) {
                                final terlaris = ReportStruct.maybeFromMap(
                                            columnReportResponse.jsonBody)
                                        ?.produkTerlaris
                                        .toList() ??
                                    [];

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: terlaris.length,
                                  itemBuilder: (context, terlarisIndex) {
                                    final terlarisItem =
                                        terlaris[terlarisIndex];
                                    return Container(
                                      width: 100.0,
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  terlarisItem.name,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Text(
                                                  terlarisItem.total,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 5.0, 15.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '60%',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                                RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: terlarisItem
                                                            .jumlahTransaksi
                                                            .toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                      TextSpan(
                                                        text: ' Transaksi',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 0.0),
                                            child: LinearPercentIndicator(
                                              percent: terlarisItem
                                                  .jumlahTransaksi
                                                  .toDouble(),
                                              width: 120.0,
                                              lineHeight: 15.0,
                                              animation: true,
                                              animateFromLastPercent: true,
                                              progressColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              padding: EdgeInsets.zero,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 20.0, 20.0, 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Metode Pembayaran',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Rubik',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Builder(
                              builder: (context) {
                                final payment = ReportStruct.maybeFromMap(
                                            columnReportResponse.jsonBody)
                                        ?.rekapMetodePembayaran
                                        .toList() ??
                                    [];

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: payment.length,
                                  itemBuilder: (context, paymentIndex) {
                                    final paymentItem = payment[paymentIndex];
                                    return Container(
                                      width: 100.0,
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  paymentItem.paymentMethod,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Text(
                                                  paymentItem.total,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 5.0, 15.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: paymentItem
                                                            .jumlahTransaksi
                                                            .toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                      TextSpan(
                                                        text: ' Transaksi',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  '60%',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 3.0)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
