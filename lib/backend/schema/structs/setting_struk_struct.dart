// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SettingStrukStruct extends BaseStruct {
  SettingStrukStruct({
    String? namaBisnis,
    String? nomor,
    String? alamat,
  })  : _namaBisnis = namaBisnis,
        _nomor = nomor,
        _alamat = alamat;

  // "NamaBisnis" field.
  String? _namaBisnis;
  String get namaBisnis => _namaBisnis ?? '';
  set namaBisnis(String? val) => _namaBisnis = val;

  bool hasNamaBisnis() => _namaBisnis != null;

  // "nomor" field.
  String? _nomor;
  String get nomor => _nomor ?? '';
  set nomor(String? val) => _nomor = val;

  bool hasNomor() => _nomor != null;

  // "alamat" field.
  String? _alamat;
  String get alamat => _alamat ?? '';
  set alamat(String? val) => _alamat = val;

  bool hasAlamat() => _alamat != null;

  static SettingStrukStruct fromMap(Map<String, dynamic> data) =>
      SettingStrukStruct(
        namaBisnis: data['NamaBisnis'] as String?,
        nomor: data['nomor'] as String?,
        alamat: data['alamat'] as String?,
      );

  static SettingStrukStruct? maybeFromMap(dynamic data) => data is Map
      ? SettingStrukStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'NamaBisnis': _namaBisnis,
        'nomor': _nomor,
        'alamat': _alamat,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'NamaBisnis': serializeParam(
          _namaBisnis,
          ParamType.String,
        ),
        'nomor': serializeParam(
          _nomor,
          ParamType.String,
        ),
        'alamat': serializeParam(
          _alamat,
          ParamType.String,
        ),
      }.withoutNulls;

  static SettingStrukStruct fromSerializableMap(Map<String, dynamic> data) =>
      SettingStrukStruct(
        namaBisnis: deserializeParam(
          data['NamaBisnis'],
          ParamType.String,
          false,
        ),
        nomor: deserializeParam(
          data['nomor'],
          ParamType.String,
          false,
        ),
        alamat: deserializeParam(
          data['alamat'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SettingStrukStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SettingStrukStruct &&
        namaBisnis == other.namaBisnis &&
        nomor == other.nomor &&
        alamat == other.alamat;
  }

  @override
  int get hashCode => const ListEquality().hash([namaBisnis, nomor, alamat]);
}

SettingStrukStruct createSettingStrukStruct({
  String? namaBisnis,
  String? nomor,
  String? alamat,
}) =>
    SettingStrukStruct(
      namaBisnis: namaBisnis,
      nomor: nomor,
      alamat: alamat,
    );
