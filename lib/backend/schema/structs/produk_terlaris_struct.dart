// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdukTerlarisStruct extends BaseStruct {
  ProdukTerlarisStruct({
    String? name,
    String? total,
    int? jumlahTransaksi,
  })  : _name = name,
        _total = total,
        _jumlahTransaksi = jumlahTransaksi;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "total" field.
  String? _total;
  String get total => _total ?? '';
  set total(String? val) => _total = val;

  bool hasTotal() => _total != null;

  // "jumlah_transaksi" field.
  int? _jumlahTransaksi;
  int get jumlahTransaksi => _jumlahTransaksi ?? 0;
  set jumlahTransaksi(int? val) => _jumlahTransaksi = val;

  void incrementJumlahTransaksi(int amount) =>
      jumlahTransaksi = jumlahTransaksi + amount;

  bool hasJumlahTransaksi() => _jumlahTransaksi != null;

  static ProdukTerlarisStruct fromMap(Map<String, dynamic> data) =>
      ProdukTerlarisStruct(
        name: data['name'] as String?,
        total: data['total'] as String?,
        jumlahTransaksi: castToType<int>(data['jumlah_transaksi']),
      );

  static ProdukTerlarisStruct? maybeFromMap(dynamic data) => data is Map
      ? ProdukTerlarisStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'total': _total,
        'jumlah_transaksi': _jumlahTransaksi,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'total': serializeParam(
          _total,
          ParamType.String,
        ),
        'jumlah_transaksi': serializeParam(
          _jumlahTransaksi,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProdukTerlarisStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdukTerlarisStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.String,
          false,
        ),
        jumlahTransaksi: deserializeParam(
          data['jumlah_transaksi'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProdukTerlarisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdukTerlarisStruct &&
        name == other.name &&
        total == other.total &&
        jumlahTransaksi == other.jumlahTransaksi;
  }

  @override
  int get hashCode => const ListEquality().hash([name, total, jumlahTransaksi]);
}

ProdukTerlarisStruct createProdukTerlarisStruct({
  String? name,
  String? total,
  int? jumlahTransaksi,
}) =>
    ProdukTerlarisStruct(
      name: name,
      total: total,
      jumlahTransaksi: jumlahTransaksi,
    );
