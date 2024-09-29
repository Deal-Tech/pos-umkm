// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportStruct extends BaseStruct {
  ReportStruct({
    int? jumlahTransaksiPenjualan,
    int? jumlahPengeluaran,
    List<ProdukTerlarisStruct>? produkTerlaris,
    List<RekapMetodePembayaranStruct>? rekapMetodePembayaran,
    List<PenjualanHarianStruct>? penjualanHarian,
    List<PengeluaranHarianStruct>? pengeluaranHarian,
    int? totalPenjualan,
    int? totalPengeluaran,
    List<PenjualanMingguanStruct>? penjualanMingguan,
    List<PengeluaranMingguanStruct>? pengeluaranMingguan,
  })  : _jumlahTransaksiPenjualan = jumlahTransaksiPenjualan,
        _jumlahPengeluaran = jumlahPengeluaran,
        _produkTerlaris = produkTerlaris,
        _rekapMetodePembayaran = rekapMetodePembayaran,
        _penjualanHarian = penjualanHarian,
        _pengeluaranHarian = pengeluaranHarian,
        _totalPenjualan = totalPenjualan,
        _totalPengeluaran = totalPengeluaran,
        _penjualanMingguan = penjualanMingguan,
        _pengeluaranMingguan = pengeluaranMingguan;

  // "jumlah_transaksi_penjualan" field.
  int? _jumlahTransaksiPenjualan;
  int get jumlahTransaksiPenjualan => _jumlahTransaksiPenjualan ?? 0;
  set jumlahTransaksiPenjualan(int? val) => _jumlahTransaksiPenjualan = val;

  void incrementJumlahTransaksiPenjualan(int amount) =>
      jumlahTransaksiPenjualan = jumlahTransaksiPenjualan + amount;

  bool hasJumlahTransaksiPenjualan() => _jumlahTransaksiPenjualan != null;

  // "jumlah_pengeluaran" field.
  int? _jumlahPengeluaran;
  int get jumlahPengeluaran => _jumlahPengeluaran ?? 0;
  set jumlahPengeluaran(int? val) => _jumlahPengeluaran = val;

  void incrementJumlahPengeluaran(int amount) =>
      jumlahPengeluaran = jumlahPengeluaran + amount;

  bool hasJumlahPengeluaran() => _jumlahPengeluaran != null;

  // "produk_terlaris" field.
  List<ProdukTerlarisStruct>? _produkTerlaris;
  List<ProdukTerlarisStruct> get produkTerlaris => _produkTerlaris ?? const [];
  set produkTerlaris(List<ProdukTerlarisStruct>? val) => _produkTerlaris = val;

  void updateProdukTerlaris(Function(List<ProdukTerlarisStruct>) updateFn) {
    updateFn(_produkTerlaris ??= []);
  }

  bool hasProdukTerlaris() => _produkTerlaris != null;

  // "rekap_metode_pembayaran" field.
  List<RekapMetodePembayaranStruct>? _rekapMetodePembayaran;
  List<RekapMetodePembayaranStruct> get rekapMetodePembayaran =>
      _rekapMetodePembayaran ?? const [];
  set rekapMetodePembayaran(List<RekapMetodePembayaranStruct>? val) =>
      _rekapMetodePembayaran = val;

  void updateRekapMetodePembayaran(
      Function(List<RekapMetodePembayaranStruct>) updateFn) {
    updateFn(_rekapMetodePembayaran ??= []);
  }

  bool hasRekapMetodePembayaran() => _rekapMetodePembayaran != null;

  // "penjualan_harian" field.
  List<PenjualanHarianStruct>? _penjualanHarian;
  List<PenjualanHarianStruct> get penjualanHarian =>
      _penjualanHarian ?? const [];
  set penjualanHarian(List<PenjualanHarianStruct>? val) =>
      _penjualanHarian = val;

  void updatePenjualanHarian(Function(List<PenjualanHarianStruct>) updateFn) {
    updateFn(_penjualanHarian ??= []);
  }

  bool hasPenjualanHarian() => _penjualanHarian != null;

  // "pengeluaran_harian" field.
  List<PengeluaranHarianStruct>? _pengeluaranHarian;
  List<PengeluaranHarianStruct> get pengeluaranHarian =>
      _pengeluaranHarian ?? const [];
  set pengeluaranHarian(List<PengeluaranHarianStruct>? val) =>
      _pengeluaranHarian = val;

  void updatePengeluaranHarian(
      Function(List<PengeluaranHarianStruct>) updateFn) {
    updateFn(_pengeluaranHarian ??= []);
  }

  bool hasPengeluaranHarian() => _pengeluaranHarian != null;

  // "total_penjualan" field.
  int? _totalPenjualan;
  int get totalPenjualan => _totalPenjualan ?? 0;
  set totalPenjualan(int? val) => _totalPenjualan = val;

  void incrementTotalPenjualan(int amount) =>
      totalPenjualan = totalPenjualan + amount;

  bool hasTotalPenjualan() => _totalPenjualan != null;

  // "total_pengeluaran" field.
  int? _totalPengeluaran;
  int get totalPengeluaran => _totalPengeluaran ?? 0;
  set totalPengeluaran(int? val) => _totalPengeluaran = val;

  void incrementTotalPengeluaran(int amount) =>
      totalPengeluaran = totalPengeluaran + amount;

  bool hasTotalPengeluaran() => _totalPengeluaran != null;

  // "penjualan_mingguan" field.
  List<PenjualanMingguanStruct>? _penjualanMingguan;
  List<PenjualanMingguanStruct> get penjualanMingguan =>
      _penjualanMingguan ?? const [];
  set penjualanMingguan(List<PenjualanMingguanStruct>? val) =>
      _penjualanMingguan = val;

  void updatePenjualanMingguan(
      Function(List<PenjualanMingguanStruct>) updateFn) {
    updateFn(_penjualanMingguan ??= []);
  }

  bool hasPenjualanMingguan() => _penjualanMingguan != null;

  // "pengeluaran_mingguan" field.
  List<PengeluaranMingguanStruct>? _pengeluaranMingguan;
  List<PengeluaranMingguanStruct> get pengeluaranMingguan =>
      _pengeluaranMingguan ?? const [];
  set pengeluaranMingguan(List<PengeluaranMingguanStruct>? val) =>
      _pengeluaranMingguan = val;

  void updatePengeluaranMingguan(
      Function(List<PengeluaranMingguanStruct>) updateFn) {
    updateFn(_pengeluaranMingguan ??= []);
  }

  bool hasPengeluaranMingguan() => _pengeluaranMingguan != null;

  static ReportStruct fromMap(Map<String, dynamic> data) => ReportStruct(
        jumlahTransaksiPenjualan:
            castToType<int>(data['jumlah_transaksi_penjualan']),
        jumlahPengeluaran: castToType<int>(data['jumlah_pengeluaran']),
        produkTerlaris: getStructList(
          data['produk_terlaris'],
          ProdukTerlarisStruct.fromMap,
        ),
        rekapMetodePembayaran: getStructList(
          data['rekap_metode_pembayaran'],
          RekapMetodePembayaranStruct.fromMap,
        ),
        penjualanHarian: getStructList(
          data['penjualan_harian'],
          PenjualanHarianStruct.fromMap,
        ),
        pengeluaranHarian: getStructList(
          data['pengeluaran_harian'],
          PengeluaranHarianStruct.fromMap,
        ),
        totalPenjualan: castToType<int>(data['total_penjualan']),
        totalPengeluaran: castToType<int>(data['total_pengeluaran']),
        penjualanMingguan: getStructList(
          data['penjualan_mingguan'],
          PenjualanMingguanStruct.fromMap,
        ),
        pengeluaranMingguan: getStructList(
          data['pengeluaran_mingguan'],
          PengeluaranMingguanStruct.fromMap,
        ),
      );

  static ReportStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReportStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'jumlah_transaksi_penjualan': _jumlahTransaksiPenjualan,
        'jumlah_pengeluaran': _jumlahPengeluaran,
        'produk_terlaris': _produkTerlaris?.map((e) => e.toMap()).toList(),
        'rekap_metode_pembayaran':
            _rekapMetodePembayaran?.map((e) => e.toMap()).toList(),
        'penjualan_harian': _penjualanHarian?.map((e) => e.toMap()).toList(),
        'pengeluaran_harian':
            _pengeluaranHarian?.map((e) => e.toMap()).toList(),
        'total_penjualan': _totalPenjualan,
        'total_pengeluaran': _totalPengeluaran,
        'penjualan_mingguan':
            _penjualanMingguan?.map((e) => e.toMap()).toList(),
        'pengeluaran_mingguan':
            _pengeluaranMingguan?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'jumlah_transaksi_penjualan': serializeParam(
          _jumlahTransaksiPenjualan,
          ParamType.int,
        ),
        'jumlah_pengeluaran': serializeParam(
          _jumlahPengeluaran,
          ParamType.int,
        ),
        'produk_terlaris': serializeParam(
          _produkTerlaris,
          ParamType.DataStruct,
          isList: true,
        ),
        'rekap_metode_pembayaran': serializeParam(
          _rekapMetodePembayaran,
          ParamType.DataStruct,
          isList: true,
        ),
        'penjualan_harian': serializeParam(
          _penjualanHarian,
          ParamType.DataStruct,
          isList: true,
        ),
        'pengeluaran_harian': serializeParam(
          _pengeluaranHarian,
          ParamType.DataStruct,
          isList: true,
        ),
        'total_penjualan': serializeParam(
          _totalPenjualan,
          ParamType.int,
        ),
        'total_pengeluaran': serializeParam(
          _totalPengeluaran,
          ParamType.int,
        ),
        'penjualan_mingguan': serializeParam(
          _penjualanMingguan,
          ParamType.DataStruct,
          isList: true,
        ),
        'pengeluaran_mingguan': serializeParam(
          _pengeluaranMingguan,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ReportStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReportStruct(
        jumlahTransaksiPenjualan: deserializeParam(
          data['jumlah_transaksi_penjualan'],
          ParamType.int,
          false,
        ),
        jumlahPengeluaran: deserializeParam(
          data['jumlah_pengeluaran'],
          ParamType.int,
          false,
        ),
        produkTerlaris: deserializeStructParam<ProdukTerlarisStruct>(
          data['produk_terlaris'],
          ParamType.DataStruct,
          true,
          structBuilder: ProdukTerlarisStruct.fromSerializableMap,
        ),
        rekapMetodePembayaran:
            deserializeStructParam<RekapMetodePembayaranStruct>(
          data['rekap_metode_pembayaran'],
          ParamType.DataStruct,
          true,
          structBuilder: RekapMetodePembayaranStruct.fromSerializableMap,
        ),
        penjualanHarian: deserializeStructParam<PenjualanHarianStruct>(
          data['penjualan_harian'],
          ParamType.DataStruct,
          true,
          structBuilder: PenjualanHarianStruct.fromSerializableMap,
        ),
        pengeluaranHarian: deserializeStructParam<PengeluaranHarianStruct>(
          data['pengeluaran_harian'],
          ParamType.DataStruct,
          true,
          structBuilder: PengeluaranHarianStruct.fromSerializableMap,
        ),
        totalPenjualan: deserializeParam(
          data['total_penjualan'],
          ParamType.int,
          false,
        ),
        totalPengeluaran: deserializeParam(
          data['total_pengeluaran'],
          ParamType.int,
          false,
        ),
        penjualanMingguan: deserializeStructParam<PenjualanMingguanStruct>(
          data['penjualan_mingguan'],
          ParamType.DataStruct,
          true,
          structBuilder: PenjualanMingguanStruct.fromSerializableMap,
        ),
        pengeluaranMingguan: deserializeStructParam<PengeluaranMingguanStruct>(
          data['pengeluaran_mingguan'],
          ParamType.DataStruct,
          true,
          structBuilder: PengeluaranMingguanStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ReportStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ReportStruct &&
        jumlahTransaksiPenjualan == other.jumlahTransaksiPenjualan &&
        jumlahPengeluaran == other.jumlahPengeluaran &&
        listEquality.equals(produkTerlaris, other.produkTerlaris) &&
        listEquality.equals(
            rekapMetodePembayaran, other.rekapMetodePembayaran) &&
        listEquality.equals(penjualanHarian, other.penjualanHarian) &&
        listEquality.equals(pengeluaranHarian, other.pengeluaranHarian) &&
        totalPenjualan == other.totalPenjualan &&
        totalPengeluaran == other.totalPengeluaran &&
        listEquality.equals(penjualanMingguan, other.penjualanMingguan) &&
        listEquality.equals(pengeluaranMingguan, other.pengeluaranMingguan);
  }

  @override
  int get hashCode => const ListEquality().hash([
        jumlahTransaksiPenjualan,
        jumlahPengeluaran,
        produkTerlaris,
        rekapMetodePembayaran,
        penjualanHarian,
        pengeluaranHarian,
        totalPenjualan,
        totalPengeluaran,
        penjualanMingguan,
        pengeluaranMingguan
      ]);
}

ReportStruct createReportStruct({
  int? jumlahTransaksiPenjualan,
  int? jumlahPengeluaran,
  int? totalPenjualan,
  int? totalPengeluaran,
}) =>
    ReportStruct(
      jumlahTransaksiPenjualan: jumlahTransaksiPenjualan,
      jumlahPengeluaran: jumlahPengeluaran,
      totalPenjualan: totalPenjualan,
      totalPengeluaran: totalPengeluaran,
    );
