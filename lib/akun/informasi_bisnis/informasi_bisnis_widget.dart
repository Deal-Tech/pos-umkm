import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'informasi_bisnis_model.dart';
export 'informasi_bisnis_model.dart';

class InformasiBisnisWidget extends StatefulWidget {
  const InformasiBisnisWidget({super.key});

  @override
  State<InformasiBisnisWidget> createState() => _InformasiBisnisWidgetState();
}

class _InformasiBisnisWidgetState extends State<InformasiBisnisWidget> {
  late InformasiBisnisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InformasiBisnisModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult4hj = await ApiGetUserCall.call(
        token: currentAuthenticationToken,
      );
    });
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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
            child: RefreshIndicator(
              color: FlutterFlowTheme.of(context).primary,
              onRefresh: () async {
                safeSetState(() => _model.apiRequestCompleter = null);
                await _model.waitForApiRequestCompleted();
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.safePop();
                                },
                                text: '',
                                icon: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Color(0xFF0EC244),
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 34.0,
                                  height: 34.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  color: const Color(0x000EC244),
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
                            ),
                            Text(
                              'Informasi Bisnis',
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
                      height: MediaQuery.sizeOf(context).height * 0.65,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ListView(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 10.0,
                                        color: Color(0x1A000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 50.0, 0.0, 50.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: (_model.apiRequestCompleter ??=
                                              Completer<ApiCallResponse>()
                                                ..complete(
                                                    QrisGroup.getQrisCall.call(
                                                  token:
                                                      currentAuthenticationToken,
                                                )))
                                          .future,
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: SpinKitFadingFour(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final columnGetQrisResponse =
                                            snapshot.data!;

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Untitled_design_(23).png',
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.25,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.1,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                QrisGroup.getQrisCall
                                                                .alamatusaha(
                                                              columnGetQrisResponse
                                                                  .jsonBody,
                                                            ) !=
                                                            null &&
                                                        QrisGroup.getQrisCall
                                                                .alamatusaha(
                                                              columnGetQrisResponse
                                                                  .jsonBody,
                                                            ) !=
                                                            ''
                                                    ? valueOrDefault<String>(
                                                        QrisGroup.getQrisCall
                                                            .namausaha(
                                                          columnGetQrisResponse
                                                              .jsonBody,
                                                        ),
                                                        'alamat',
                                                      )
                                                    : 'Nama Usaha',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                            Text(
                                              QrisGroup.getQrisCall.status(
                                                        columnGetQrisResponse
                                                            .jsonBody,
                                                      ) ==
                                                      1
                                                  ? 'Terverifikasi'
                                                  : 'Belum Verifikasi',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Rubik',
                                                    color: QrisGroup.getQrisCall
                                                                .status(
                                                              columnGetQrisResponse
                                                                  .jsonBody,
                                                            ) ==
                                                            1
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .error,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 60.0, 15.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Nama Pemilik',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      29.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              ApiGetUserCall
                                                                  .nama(
                                                                (_model.apiResult4hj
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              'nama',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rubik',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 15.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Email',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          'edit_email',
                                                          queryParameters: {
                                                            'nomor':
                                                                serializeParam(
                                                              ApiGetUserCall
                                                                  .phone(
                                                                (_model.apiResult4hj
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              ParamType.String,
                                                            ),
                                                            'email':
                                                                serializeParam(
                                                              ApiGetUserCall
                                                                  .email(
                                                                (_model.apiResult4hj
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              ApiGetUserCall
                                                                  .email(
                                                                (_model.apiResult4hj
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              'email',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rubik',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          const FaIcon(
                                                            FontAwesomeIcons
                                                                .edit,
                                                            color: Color(
                                                                0x8057636C),
                                                            size: 18.0,
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 10.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 15.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Nomor Telepon',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            ApiGetUserCall
                                                                .phone(
                                                              (_model.apiResult4hj
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            'phone',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Rubik',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        if (ApiGetUserCall
                                                                .phone(
                                                              (_model.apiResult4hj
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) !=
                                                            '081111111111')
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'edit_nomor',
                                                                queryParameters:
                                                                    {
                                                                  'nomor':
                                                                      serializeParam(
                                                                    ApiGetUserCall
                                                                        .phone(
                                                                      (_model.apiResult4hj
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'email':
                                                                      serializeParam(
                                                                    ApiGetUserCall
                                                                        .email(
                                                                      (_model.apiResult4hj
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: const FaIcon(
                                                              FontAwesomeIcons
                                                                  .edit,
                                                              color: Color(
                                                                  0x7F57636C),
                                                              size: 18.0,
                                                            ),
                                                          ),
                                                      ].divide(const SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if (QrisGroup.getQrisCall.status(
                                                  columnGetQrisResponse
                                                      .jsonBody,
                                                ) ==
                                                1)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 15.0, 20.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Rekening',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            QrisGroup.getQrisCall
                                                                            .bank(
                                                                          columnGetQrisResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null &&
                                                                    QrisGroup
                                                                            .getQrisCall
                                                                            .bank(
                                                                          columnGetQrisResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        ''
                                                                ? valueOrDefault<
                                                                    String>(
                                                                    QrisGroup
                                                                        .getQrisCall
                                                                        .norek(
                                                                      columnGetQrisResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    'nomor rekening',
                                                                  )
                                                                : 'Rekening tidak dapat diubah jika belum mengajukan QRIS',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rubik',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'edit_rekening',
                                                                queryParameters:
                                                                    {
                                                                  'bank':
                                                                      serializeParam(
                                                                    QrisGroup
                                                                        .getQrisCall
                                                                        .bank(
                                                                      columnGetQrisResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'nomor':
                                                                      serializeParam(
                                                                    QrisGroup
                                                                        .getQrisCall
                                                                        .norek(
                                                                      columnGetQrisResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'nama':
                                                                      serializeParam(
                                                                    QrisGroup
                                                                        .getQrisCall
                                                                        .atasnama(
                                                                      columnGetQrisResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: const FaIcon(
                                                              FontAwesomeIcons
                                                                  .edit,
                                                              color: Color(
                                                                  0x8057636C),
                                                              size: 18.0,
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 10.0)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 15.0, 20.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Alamat',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Container(
                                                    width: 200.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        29.0,
                                                                        0.0),
                                                            child: Text(
                                                              QrisGroup.getQrisCall
                                                                              .alamatusaha(
                                                                            columnGetQrisResponse.jsonBody,
                                                                          ) !=
                                                                          null &&
                                                                      QrisGroup
                                                                              .getQrisCall
                                                                              .alamatusaha(
                                                                            columnGetQrisResponse.jsonBody,
                                                                          ) !=
                                                                          ''
                                                                  ? valueOrDefault<
                                                                      String>(
                                                                      QrisGroup
                                                                          .getQrisCall
                                                                          .alamatusaha(
                                                                        columnGetQrisResponse
                                                                            .jsonBody,
                                                                      ),
                                                                      'alamat',
                                                                    )
                                                                  : 'Alamat tidak dapat diubah jika belum mengajukan QRIS',
                                                              textAlign:
                                                                  TextAlign.end,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Rubik',
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ].divide(const SizedBox(height: 30.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
