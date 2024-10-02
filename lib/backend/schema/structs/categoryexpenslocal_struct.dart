// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryexpenslocalStruct extends BaseStruct {
  CategoryexpenslocalStruct({
    String? name,
  }) : _name = name;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static CategoryexpenslocalStruct fromMap(Map<String, dynamic> data) =>
      CategoryexpenslocalStruct(
        name: data['name'] as String?,
      );

  static CategoryexpenslocalStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoryexpenslocalStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoryexpenslocalStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CategoryexpenslocalStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoryexpenslocalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoryexpenslocalStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

CategoryexpenslocalStruct createCategoryexpenslocalStruct({
  String? name,
}) =>
    CategoryexpenslocalStruct(
      name: name,
    );
