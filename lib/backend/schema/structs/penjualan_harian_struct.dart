// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PenjualanHarianStruct extends BaseStruct {
  PenjualanHarianStruct({
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

  static PenjualanHarianStruct fromMap(Map<String, dynamic> data) =>
      PenjualanHarianStruct(
        hari: data['hari'] as String?,
        total: castToType<int>(data['total']),
      );

  static PenjualanHarianStruct? maybeFromMap(dynamic data) => data is Map
      ? PenjualanHarianStruct.fromMap(data.cast<String, dynamic>())
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

  static PenjualanHarianStruct fromSerializableMap(Map<String, dynamic> data) =>
      PenjualanHarianStruct(
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
  String toString() => 'PenjualanHarianStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PenjualanHarianStruct &&
        hari == other.hari &&
        total == other.total;
  }

  @override
  int get hashCode => const ListEquality().hash([hari, total]);
}

PenjualanHarianStruct createPenjualanHarianStruct({
  String? hari,
  int? total,
}) =>
    PenjualanHarianStruct(
      hari: hari,
      total: total,
    );
