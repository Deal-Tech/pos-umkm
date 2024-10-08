// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriesStruct extends BaseStruct {
  CategoriesStruct({
    String? name,
    bool? status,
    int? id,
  })  : _name = name,
        _status = status,
        _id = id;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static CategoriesStruct fromMap(Map<String, dynamic> data) =>
      CategoriesStruct(
        name: data['name'] as String?,
        status: data['status'] as bool?,
        id: castToType<int>(data['id']),
      );

  static CategoriesStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'status': _status,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static CategoriesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoriesStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CategoriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoriesStruct &&
        name == other.name &&
        status == other.status &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([name, status, id]);
}

CategoriesStruct createCategoriesStruct({
  String? name,
  bool? status,
  int? id,
}) =>
    CategoriesStruct(
      name: name,
      status: status,
      id: id,
    );
