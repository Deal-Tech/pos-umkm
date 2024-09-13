// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApiloginStruct extends BaseStruct {
  ApiloginStruct({
    String? apilogin,
  }) : _apilogin = apilogin;

  // "apilogin" field.
  String? _apilogin;
  String get apilogin => _apilogin ?? '';
  set apilogin(String? val) => _apilogin = val;

  bool hasApilogin() => _apilogin != null;

  static ApiloginStruct fromMap(Map<String, dynamic> data) => ApiloginStruct(
        apilogin: data['apilogin'] as String?,
      );

  static ApiloginStruct? maybeFromMap(dynamic data) =>
      data is Map ? ApiloginStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'apilogin': _apilogin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'apilogin': serializeParam(
          _apilogin,
          ParamType.String,
        ),
      }.withoutNulls;

  static ApiloginStruct fromSerializableMap(Map<String, dynamic> data) =>
      ApiloginStruct(
        apilogin: deserializeParam(
          data['apilogin'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ApiloginStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApiloginStruct && apilogin == other.apilogin;
  }

  @override
  int get hashCode => const ListEquality().hash([apilogin]);
}

ApiloginStruct createApiloginStruct({
  String? apilogin,
}) =>
    ApiloginStruct(
      apilogin: apilogin,
    );
