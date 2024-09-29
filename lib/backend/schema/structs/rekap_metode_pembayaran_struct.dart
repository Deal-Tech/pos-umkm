// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RekapMetodePembayaranStruct extends BaseStruct {
  RekapMetodePembayaranStruct({
    String? paymentMethod,
    String? total,
    int? jumlahTransaksi,
  })  : _paymentMethod = paymentMethod,
        _total = total,
        _jumlahTransaksi = jumlahTransaksi;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  set paymentMethod(String? val) => _paymentMethod = val;

  bool hasPaymentMethod() => _paymentMethod != null;

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

  static RekapMetodePembayaranStruct fromMap(Map<String, dynamic> data) =>
      RekapMetodePembayaranStruct(
        paymentMethod: data['payment_method'] as String?,
        total: data['total'] as String?,
        jumlahTransaksi: castToType<int>(data['jumlah_transaksi']),
      );

  static RekapMetodePembayaranStruct? maybeFromMap(dynamic data) => data is Map
      ? RekapMetodePembayaranStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'payment_method': _paymentMethod,
        'total': _total,
        'jumlah_transaksi': _jumlahTransaksi,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'payment_method': serializeParam(
          _paymentMethod,
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

  static RekapMetodePembayaranStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RekapMetodePembayaranStruct(
        paymentMethod: deserializeParam(
          data['payment_method'],
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
  String toString() => 'RekapMetodePembayaranStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RekapMetodePembayaranStruct &&
        paymentMethod == other.paymentMethod &&
        total == other.total &&
        jumlahTransaksi == other.jumlahTransaksi;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([paymentMethod, total, jumlahTransaksi]);
}

RekapMetodePembayaranStruct createRekapMetodePembayaranStruct({
  String? paymentMethod,
  String? total,
  int? jumlahTransaksi,
}) =>
    RekapMetodePembayaranStruct(
      paymentMethod: paymentMethod,
      total: total,
      jumlahTransaksi: jumlahTransaksi,
    );
