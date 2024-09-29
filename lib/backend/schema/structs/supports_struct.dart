// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupportsStruct extends BaseStruct {
  SupportsStruct({
    int? id,
    String? jenis,
    String? contact,
    int? status,
    String? createdAt,
    String? updatedAt,
  })  : _id = id,
        _jenis = jenis,
        _contact = contact,
        _status = status,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "jenis" field.
  String? _jenis;
  String get jenis => _jenis ?? '';
  set jenis(String? val) => _jenis = val;

  bool hasJenis() => _jenis != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  set contact(String? val) => _contact = val;

  bool hasContact() => _contact != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  static SupportsStruct fromMap(Map<String, dynamic> data) => SupportsStruct(
        id: castToType<int>(data['id']),
        jenis: data['jenis'] as String?,
        contact: data['contact'] as String?,
        status: castToType<int>(data['status']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static SupportsStruct? maybeFromMap(dynamic data) =>
      data is Map ? SupportsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'jenis': _jenis,
        'contact': _contact,
        'status': _status,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'jenis': serializeParam(
          _jenis,
          ParamType.String,
        ),
        'contact': serializeParam(
          _contact,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static SupportsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SupportsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        jenis: deserializeParam(
          data['jenis'],
          ParamType.String,
          false,
        ),
        contact: deserializeParam(
          data['contact'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SupportsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SupportsStruct &&
        id == other.id &&
        jenis == other.jenis &&
        contact == other.contact &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, jenis, contact, status, createdAt, updatedAt]);
}

SupportsStruct createSupportsStruct({
  int? id,
  String? jenis,
  String? contact,
  int? status,
  String? createdAt,
  String? updatedAt,
}) =>
    SupportsStruct(
      id: id,
      jenis: jenis,
      contact: contact,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
