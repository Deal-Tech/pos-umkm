import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  DealPOSAuthUser? initialUser;
  DealPOSAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(DealPOSAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const HalamanDepanWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const HalamanDepanWidget(),
        ),
        FFRoute(
          name: 'SplashPage',
          path: '/splashPage',
          builder: (context, params) => const SplashPageWidget(),
        ),
        FFRoute(
          name: 'OtherPage',
          path: '/otherPage',
          builder: (context, params) => const OtherPageWidget(),
        ),
        FFRoute(
          name: 'Halaman_depan',
          path: '/halamanDepan',
          builder: (context, params) => const HalamanDepanWidget(),
        ),
        FFRoute(
          name: 'Halaman_login_1',
          path: '/halamanLogin1',
          builder: (context, params) => const HalamanLogin1Widget(),
        ),
        FFRoute(
          name: 'Halaman_login_2',
          path: '/halamanLogin2',
          builder: (context, params) => const HalamanLogin2Widget(),
        ),
        FFRoute(
          name: 'Halaman_reset_password',
          path: '/halamanResetPassword',
          builder: (context, params) => const HalamanResetPasswordWidget(),
        ),
        FFRoute(
          name: 'HalamanBuatakun',
          path: '/halamanBuatakun',
          builder: (context, params) => const HalamanBuatakunWidget(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'Home') : const HomeWidget(),
        ),
        FFRoute(
          name: 'Halaman_detail_list',
          path: '/halamanDetailList',
          builder: (context, params) => const HalamanDetailListWidget(),
        ),
        FFRoute(
          name: 'NOTUSE-Halaman_add_list',
          path: '/nOTUSEHalamanAddList',
          builder: (context, params) => const NOTUSEHalamanAddListWidget(),
        ),
        FFRoute(
          name: 'Halaman_entri_harga_manual',
          path: '/halamanEntriHargaManual',
          builder: (context, params) => const HalamanEntriHargaManualWidget(),
        ),
        FFRoute(
          name: 'Halaman_metode_pembayaran',
          path: '/halamanMetodePembayaran',
          builder: (context, params) => HalamanMetodePembayaranWidget(
            total: params.getParam(
              'total',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'Halaman-pembayaran-non-cash',
          path: '/halamanPembayaranNonCash',
          builder: (context, params) => HalamanPembayaranNonCashWidget(
            total: params.getParam(
              'total',
              ParamType.int,
            ),
            idtransactions: params.getParam(
              'idtransactions',
              ParamType.int,
            ),
            datetransactions: params.getParam(
              'datetransactions',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Bukti-pencatatan',
          path: '/buktiPencatatan',
          builder: (context, params) => BuktiPencatatanWidget(
            paymentmethod: params.getParam(
              'paymentmethod',
              ParamType.String,
            ),
            total: params.getParam(
              'total',
              ParamType.int,
            ),
            transactionsid: params.getParam(
              'transactionsid',
              ParamType.int,
            ),
            datetransactions: params.getParam(
              'datetransactions',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Halaman-verifikasi-kode-reset',
          path: '/halamanVerifikasiKodeReset',
          builder: (context, params) => const HalamanVerifikasiKodeResetWidget(),
        ),
        FFRoute(
          name: 'Halaman-set-password',
          path: '/halamanSetPassword',
          builder: (context, params) => HalamanSetPasswordWidget(
            phone: params.getParam(
              'phone',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Halaman-sukses-set-password',
          path: '/halamanSuksesSetPassword',
          builder: (context, params) => const HalamanSuksesSetPasswordWidget(),
        ),
        FFRoute(
          name: 'Halaman-list-suplier',
          path: '/halamanListSuplier',
          builder: (context, params) => const HalamanListSuplierWidget(),
        ),
        FFRoute(
          name: 'Halaman_tambah-produk',
          path: '/halamanTambahProduk',
          builder: (context, params) => const HalamanTambahProdukWidget(),
        ),
        FFRoute(
          name: 'Halaman-tambah-suplier',
          path: '/halamanTambahSuplier',
          builder: (context, params) => const HalamanTambahSuplierWidget(),
        ),
        FFRoute(
          name: 'Halaman-riwayat-transaksi',
          path: '/halamanRiwayatTransaksi',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Halaman-riwayat-transaksi')
              : const HalamanRiwayatTransaksiWidget(),
        ),
        FFRoute(
          name: 'Halaman-kelola-toko',
          path: '/halamanKelolaToko',
          builder: (context, params) => const HalamanKelolaTokoWidget(),
        ),
        FFRoute(
          name: 'Halaman-akun',
          path: '/halamanAkun',
          builder: (context, params) => const HalamanAkunWidget(),
        ),
        FFRoute(
          name: 'Halaman-detail-profil',
          path: '/halamanDetailProfil',
          builder: (context, params) => HalamanDetailProfilWidget(
            email: params.getParam(
              'email',
              ParamType.String,
            ),
            phone: params.getParam(
              'phone',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Halaman-riwayat-langganan',
          path: '/halamanRiwayatLangganan',
          builder: (context, params) => const HalamanRiwayatLanggananWidget(),
        ),
        FFRoute(
          name: 'Halaman-bantuan',
          path: '/halamanBantuan',
          builder: (context, params) => const HalamanBantuanWidget(),
        ),
        FFRoute(
          name: 'inputmanual',
          path: '/inputmanual',
          builder: (context, params) => const InputmanualWidget(),
        ),
        FFRoute(
          name: 'Halaman-kategori-pengeluaran',
          path: '/halamanKategoriPengeluaran',
          builder: (context, params) => const HalamanKategoriPengeluaranWidget(),
        ),
        FFRoute(
          name: 'Halaman-langganan',
          path: '/halamanLangganan',
          builder: (context, params) => const HalamanLanggananWidget(),
        ),
        FFRoute(
          name: 'Halaman-Qris-merchant',
          path: '/halamanQrisMerchant',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Halaman-Qris-merchant')
              : const HalamanQrisMerchantWidget(),
        ),
        FFRoute(
          name: 'Halaman-ajukan-qris',
          path: '/halamanAjukanQris',
          builder: (context, params) => const HalamanAjukanQrisWidget(),
        ),
        FFRoute(
          name: 'Pending-pengajuan-qris',
          path: '/pendingPengajuanQris',
          builder: (context, params) => const PendingPengajuanQrisWidget(),
        ),
        FFRoute(
          name: 'Sukses-pengajuan-qris',
          path: '/suksesPengajuanQris',
          builder: (context, params) => const SuksesPengajuanQrisWidget(),
        ),
        FFRoute(
          name: 'gagal-pengajuan-qris',
          path: '/gagalPengajuanQris',
          builder: (context, params) => const GagalPengajuanQrisWidget(),
        ),
        FFRoute(
          name: 'Halaman-printer',
          path: '/halamanPrinter',
          builder: (context, params) => const HalamanPrinterWidget(),
        ),
        FFRoute(
          name: 'halaman-daftar-karyawan',
          path: '/halamanDaftarKaryawan',
          builder: (context, params) => const HalamanDaftarKaryawanWidget(),
        ),
        FFRoute(
          name: 'Halaman-tambah-karyawan',
          path: '/halamanTambahKaryawan',
          builder: (context, params) => const HalamanTambahKaryawanWidget(),
        ),
        FFRoute(
          name: 'Halaman-kategori',
          path: '/halamanKategori',
          builder: (context, params) => const HalamanKategoriWidget(),
        ),
        FFRoute(
          name: 'Detail_transaksi',
          path: '/detailTransaksi',
          builder: (context, params) => DetailTransaksiWidget(
            transactionsid: params.getParam(
              'transactionsid',
              ParamType.int,
            ),
            datetransactions: params.getParam(
              'datetransactions',
              ParamType.String,
            ),
            total: params.getParam(
              'total',
              ParamType.int,
            ),
            paymentmethod: params.getParam(
              'paymentmethod',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'sukses_add-produk',
          path: '/suksesAddProduk',
          builder: (context, params) => const SuksesAddProdukWidget(),
        ),
        FFRoute(
          name: 'gagal-add-produk',
          path: '/gagalAddProduk',
          builder: (context, params) => GagalAddProdukWidget(
            pesanerror: params.getParam(
              'pesanerror',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Statistik',
          path: '/statistik',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Statistik')
              : const StatistikWidget(),
        ),
        FFRoute(
          name: 'Halaman_edit_produk',
          path: '/halamanEditProduk',
          builder: (context, params) => HalamanEditProdukWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            price: params.getParam(
              'price',
              ParamType.int,
            ),
            category: params.getParam(
              'category',
              ParamType.String,
            ),
            categoryid: params.getParam(
              'categoryid',
              ParamType.int,
            ),
            unit: params.getParam(
              'unit',
              ParamType.String,
            ),
            sku: params.getParam(
              'sku',
              ParamType.String,
            ),
            barcode: params.getParam(
              'barcode',
              ParamType.String,
            ),
            imageurl: params.getParam(
              'imageurl',
              ParamType.String,
            ),
            productid: params.getParam(
              'productid',
              ParamType.String,
            ),
            imagetampil: params.getParam(
              'imagetampil',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'List-produk',
          path: '/listProduk',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'List-produk')
              : const ListProdukWidget(),
        ),
        FFRoute(
          name: 'Informasi_bisnis',
          path: '/informasiBisnis',
          builder: (context, params) => const InformasiBisnisWidget(),
        ),
        FFRoute(
          name: 'Transaksi-keluar',
          path: '/transaksiKeluar',
          builder: (context, params) => const TransaksiKeluarWidget(),
        ),
        FFRoute(
          name: 'Expens_detail',
          path: '/expensDetail',
          builder: (context, params) => ExpensDetailWidget(
            total: params.getParam(
              'total',
              ParamType.int,
            ),
            transactionsid: params.getParam(
              'transactionsid',
              ParamType.int,
            ),
            datetransactions: params.getParam(
              'datetransactions',
              ParamType.String,
            ),
            categoryexpense: params.getParam(
              'categoryexpense',
              ParamType.String,
            ),
            time: params.getParam(
              'time',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'edit_pemilik',
          path: '/editPemilik',
          builder: (context, params) => EditPemilikWidget(
            pemilik: params.getParam(
              'pemilik',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'edit_nomor',
          path: '/editNomor',
          builder: (context, params) => EditNomorWidget(
            nomor: params.getParam(
              'nomor',
              ParamType.String,
            ),
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'edit_alamat',
          path: '/editAlamat',
          builder: (context, params) => EditAlamatWidget(
            alamat: params.getParam(
              'alamat',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'edit_rekening',
          path: '/editRekening',
          builder: (context, params) => EditRekeningWidget(
            bank: params.getParam(
              'bank',
              ParamType.String,
            ),
            nomor: params.getParam(
              'nomor',
              ParamType.String,
            ),
            nama: params.getParam(
              'nama',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'expense_history',
          path: '/expenseHistory',
          builder: (context, params) => const ExpenseHistoryWidget(),
        ),
        FFRoute(
          name: 'edit_alamat_bisnis',
          path: '/editAlamatBisnis',
          builder: (context, params) => EditAlamatBisnisWidget(
            alamat: params.getParam(
              'alamat',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'pengaturan_struk',
          path: '/pengaturanStruk',
          builder: (context, params) => const PengaturanStrukWidget(),
        ),
        FFRoute(
          name: 'edit_nama_usaha',
          path: '/editNamaUsaha',
          builder: (context, params) => EditNamaUsahaWidget(
            namausaha: params.getParam(
              'namausaha',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'edit_nomor_telepon',
          path: '/editNomorTelepon',
          builder: (context, params) => EditNomorTeleponWidget(
            nomor: params.getParam(
              'nomor',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'edit_alamat_usaha',
          path: '/editAlamatUsaha',
          builder: (context, params) => EditAlamatUsahaWidget(
            alamat: params.getParam(
              'alamat',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'catatan_hutang',
          path: '/catatanHutang',
          builder: (context, params) => const CatatanHutangWidget(),
        ),
        FFRoute(
          name: 'List_hutang',
          path: '/listHutang',
          builder: (context, params) => const ListHutangWidget(),
        ),
        FFRoute(
          name: 'Detail_hutang',
          path: '/detailHutang',
          builder: (context, params) => DetailHutangWidget(
            jenis: params.getParam(
              'jenis',
              ParamType.String,
            ),
            nama: params.getParam(
              'nama',
              ParamType.String,
            ),
            nominal: params.getParam(
              'nominal',
              ParamType.int,
            ),
            duedate: params.getParam(
              'duedate',
              ParamType.String,
            ),
            nomor: params.getParam(
              'nomor',
              ParamType.String,
            ),
            ispaid: params.getParam(
              'ispaid',
              ParamType.bool,
            ),
            id: params.getParam(
              'id',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'edit_email',
          path: '/editEmail',
          builder: (context, params) => EditEmailWidget(
            nomor: params.getParam(
              'nomor',
              ParamType.String,
            ),
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'catatan_piutang',
          path: '/catatanPiutang',
          builder: (context, params) => const CatatanPiutangWidget(),
        ),
        FFRoute(
          name: 'Detail_piutang',
          path: '/detailPiutang',
          builder: (context, params) => DetailPiutangWidget(
            jenis: params.getParam(
              'jenis',
              ParamType.String,
            ),
            nama: params.getParam(
              'nama',
              ParamType.String,
            ),
            nominal: params.getParam(
              'nominal',
              ParamType.int,
            ),
            duedate: params.getParam(
              'duedate',
              ParamType.String,
            ),
            nomor: params.getParam(
              'nomor',
              ParamType.String,
            ),
            ispaid: params.getParam(
              'ispaid',
              ParamType.bool,
            ),
            id: params.getParam(
              'id',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'List_piutang',
          path: '/listPiutang',
          builder: (context, params) => const ListPiutangWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/halamanDepan';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitFadingFour(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
