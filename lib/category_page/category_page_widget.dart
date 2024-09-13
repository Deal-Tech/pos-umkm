import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'category_page_model.dart';
export 'category_page_model.dart';

class CategoryPageWidget extends StatefulWidget {
  const CategoryPageWidget({super.key});

  @override
  State<CategoryPageWidget> createState() => _CategoryPageWidgetState();
}

class _CategoryPageWidgetState extends State<CategoryPageWidget> {
  late CategoryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            'Category',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 1.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController,
                        focusNode: _model.textFieldFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.textController',
                          const Duration(milliseconds: 250),
                          () async {
                            safeSetState(
                                () => _model.apiRequestCompleter = null);
                            await _model.waitForApiRequestCompleted();
                          },
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Search by product name or SKU',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFFAFAFA),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xFF999999),
                            size: 16.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF808080),
                              letterSpacing: 0.0,
                            ),
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                    Text(
                      '0 Produk',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    FutureBuilder<ApiCallResponse>(
                      future: (_model.apiRequestCompleter ??=
                              Completer<ApiCallResponse>()
                                ..complete(ApiGetListCategoryCall.call(
                                  token: FFAppState().apilogin,
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
                        final listViewApiGetListCategoryResponse =
                            snapshot.data!;

                        return Builder(
                          builder: (context) {
                            final category = (listViewApiGetListCategoryResponse
                                            .jsonBody
                                            .toList()
                                            .map<CategoriesStruct?>(
                                                CategoriesStruct.maybeFromMap)
                                            .toList()
                                        as Iterable<CategoriesStruct?>)
                                    .withoutNulls
                                    .toList() ??
                                [];
                            if (category.isEmpty) {
                              return Center(
                                child: Image.asset(
                                  'assets/images/undraw_empty_re_opql_3.png',
                                ),
                              );
                            }

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: category.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 16.0),
                              itemBuilder: (context, categoryIndex) {
                                final categoryItem = category[categoryIndex];
                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        categoryItem.name,
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.apiResultqi9 =
                                            await ApiDeleteCategoryCall.call(
                                          token: FFAppState().apilogin,
                                          categoryId: categoryItem.id,
                                        );

                                        if ((_model.apiResultqi9?.succeeded ??
                                            true)) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: const Text('Sukses'),
                                                content: const Text(
                                                    'Ctegory berhasil dihapus'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: const Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: const Text('Gagal'),
                                                content: const Text(
                                                    'Ctegory gagal dihapus'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: const Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }

                                        safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.delete,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 30.0,
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 4.0)),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ].divide(const SizedBox(height: 16.0)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: ' Tambah Produk',
                    icon: const Icon(
                      Icons.add,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                      elevation: 1.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
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
