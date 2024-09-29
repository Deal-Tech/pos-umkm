// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PengeluaranHarianStruct extends BaseStruct {
  PengeluaranHarianStruct({
    String? hari,
    int? total,
  })  : _hari = hari,
        _total = total;

  // "hari" field.
  String? _hari;
  String get hari => _hari ?? '';
  set hari(String? val) => _hari = val;

  bool hasHari() => _hari != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  static PengeluaranHarianStruct fromMap(Map<String, dynamic> data) =>
      PengeluaranHarianStruct(
        hari: data['hari'] as String?,
        total: castToType<int>(data['total']),
      );

  static PengeluaranHarianStruct? maybeFromMap(dynamic data) => data is Map
      ? PengeluaranHarianStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'hari': _hari,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hari': serializeParam(
          _hari,
          ParamType.String,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
      }.withoutNulls;

  static PengeluaranHarianStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PengeluaranHarianStruct(
        hari: deserializeParam(
          data['hari'],
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
  String toString() => 'PengeluaranHarianStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PengeluaranHarianStruct &&
        hari == other.hari &&
        total == other.total;
  }

  @override
  int get hashCode => const ListEquality().hash([hari, total]);
}

PengeluaranHarianStruct createPengeluaranHarianStruct({
  String? hari,
  int? total,
}) =>
    PengeluaranHarianStruct(
      hari: hari,
      total: total,
    );
