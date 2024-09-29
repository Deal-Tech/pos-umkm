// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PenjualanMingguanStruct extends BaseStruct {
  PenjualanMingguanStruct({
    String? rangeTanggal,
    int? total,
  })  : _rangeTanggal = rangeTanggal,
        _total = total;

  // "range_tanggal" field.
  String? _rangeTanggal;
  String get rangeTanggal => _rangeTanggal ?? '';
  set rangeTanggal(String? val) => _rangeTanggal = val;

  bool hasRangeTanggal() => _rangeTanggal != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  static PenjualanMingguanStruct fromMap(Map<String, dynamic> data) =>
      PenjualanMingguanStruct(
        rangeTanggal: data['range_tanggal'] as String?,
        total: castToType<int>(data['total']),
      );

  static PenjualanMingguanStruct? maybeFromMap(dynamic data) => data is Map
      ? PenjualanMingguanStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'range_tanggal': _rangeTanggal,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'range_tanggal': serializeParam(
          _rangeTanggal,
          ParamType.String,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
      }.withoutNulls;

  static PenjualanMingguanStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PenjualanMingguanStruct(
        rangeTanggal: deserializeParam(
          data['range_tanggal'],
          ParamType.String,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PenjualanMingguanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PenjualanMingguanStruct &&
        rangeTanggal == other.rangeTanggal &&
        total == other.total;
  }

  @override
  int get hashCode => const ListEquality().hash([rangeTanggal, total]);
}

PenjualanMingguanStruct createPenjualanMingguanStruct({
  String? rangeTanggal,
  int? total,
}) =>
    PenjualanMingguanStruct(
      rangeTanggal: rangeTanggal,
      total: total,
    );
