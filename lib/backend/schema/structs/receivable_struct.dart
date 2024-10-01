// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReceivableStruct extends BaseStruct {
  ReceivableStruct({
    int? id,
    String? name,
    String? phone,
    String? jenis,
    String? description,
    int? amount,
    String? dueDate,
    int? isPaid,
    String? createdAt,
    String? updatedAt,
  })  : _id = id,
        _name = name,
        _phone = phone,
        _jenis = jenis,
        _description = description,
        _amount = amount,
        _dueDate = dueDate,
        _isPaid = isPaid,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "jenis" field.
  String? _jenis;
  String get jenis => _jenis ?? '';
  set jenis(String? val) => _jenis = val;

  bool hasJenis() => _jenis != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  set amount(int? val) => _amount = val;

  void incrementAmount(int amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "due_date" field.
  String? _dueDate;
  String get dueDate => _dueDate ?? '';
  set dueDate(String? val) => _dueDate = val;

  bool hasDueDate() => _dueDate != null;

  // "is_paid" field.
  int? _isPaid;
  int get isPaid => _isPaid ?? 0;
  set isPaid(int? val) => _isPaid = val;

  void incrementIsPaid(int amount) => isPaid = isPaid + amount;

  bool hasIsPaid() => _isPaid != null;

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

  static ReceivableStruct fromMap(Map<String, dynamic> data) =>
      ReceivableStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        phone: data['phone'] as String?,
        jenis: data['jenis'] as String?,
        description: data['description'] as String?,
        amount: castToType<int>(data['amount']),
        dueDate: data['due_date'] as String?,
        isPaid: castToType<int>(data['is_paid']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static ReceivableStruct? maybeFromMap(dynamic data) => data is Map
      ? ReceivableStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'phone': _phone,
        'jenis': _jenis,
        'description': _description,
        'amount': _amount,
        'due_date': _dueDate,
        'is_paid': _isPaid,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'jenis': serializeParam(
          _jenis,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.int,
        ),
        'due_date': serializeParam(
          _dueDate,
          ParamType.String,
        ),
        'is_paid': serializeParam(
          _isPaid,
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

  static ReceivableStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReceivableStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        jenis: deserializeParam(
          data['jenis'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.int,
          false,
        ),
        dueDate: deserializeParam(
          data['due_date'],
          ParamType.String,
          false,
        ),
        isPaid: deserializeParam(
          data['is_paid'],
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
  String toString() => 'ReceivableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReceivableStruct &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        jenis == other.jenis &&
        description == other.description &&
        amount == other.amount &&
        dueDate == other.dueDate &&
        isPaid == other.isPaid &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        phone,
        jenis,
        description,
        amount,
        dueDate,
        isPaid,
        createdAt,
        updatedAt
      ]);
}

ReceivableStruct createReceivableStruct({
  int? id,
  String? name,
  String? phone,
  String? jenis,
  String? description,
  int? amount,
  String? dueDate,
  int? isPaid,
  String? createdAt,
  String? updatedAt,
}) =>
    ReceivableStruct(
      id: id,
      name: name,
      phone: phone,
      jenis: jenis,
      description: description,
      amount: amount,
      dueDate: dueDate,
      isPaid: isPaid,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
