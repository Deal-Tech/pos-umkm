// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApiloginStruct extends BaseStruct {
  ApiloginStruct({
    String? apilogin,
    DateTime? expiredtoken,
  })  : _apilogin = apilogin,
        _expiredtoken = expiredtoken;

  // "apilogin" field.
  String? _apilogin;
  String get apilogin => _apilogin ?? '';
  set apilogin(String? val) => _apilogin = val;

  bool hasApilogin() => _apilogin != null;

  // "expiredtoken" field.
  DateTime? _expiredtoken;
  DateTime? get expiredtoken => _expiredtoken;
  set expiredtoken(DateTime? val) => _expiredtoken = val;

  bool hasExpiredtoken() => _expiredtoken != null;

  static ApiloginStruct fromMap(Map<String, dynamic> data) => ApiloginStruct(
        apilogin: data['apilogin'] as String?,
        expiredtoken: data['expiredtoken'] as DateTime?,
      );

  static ApiloginStruct? maybeFromMap(dynamic data) =>
      data is Map ? ApiloginStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'apilogin': _apilogin,
        'expiredtoken': _expiredtoken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'apilogin': serializeParam(
          _apilogin,
          ParamType.String,
        ),
        'expiredtoken': serializeParam(
          _expiredtoken,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ApiloginStruct fromSerializableMap(Map<String, dynamic> data) =>
      ApiloginStruct(
        apilogin: deserializeParam(
          data['apilogin'],
          ParamType.String,
          false,
        ),
        expiredtoken: deserializeParam(
          data['expiredtoken'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ApiloginStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApiloginStruct &&
        apilogin == other.apilogin &&
        expiredtoken == other.expiredtoken;
  }

  @override
  int get hashCode => const ListEquality().hash([apilogin, expiredtoken]);
}

ApiloginStruct createApiloginStruct({
  String? apilogin,
  DateTime? expiredtoken,
}) =>
    ApiloginStruct(
      apilogin: apilogin,
      expiredtoken: expiredtoken,
    );
