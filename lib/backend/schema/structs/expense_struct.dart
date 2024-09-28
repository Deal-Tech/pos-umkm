// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseStruct extends BaseStruct {
  ExpenseStruct({
    int? id,
    int? userId,
    String? tanggal,
    String? waktu,
    int? nominal,
    int? categoryExpenseId,
    String? categoryName,
    String? catatan,
    String? createdAt,
    String? updatedAt,
  })  : _id = id,
        _userId = userId,
        _tanggal = tanggal,
        _waktu = waktu,
        _nominal = nominal,
        _categoryExpenseId = categoryExpenseId,
        _categoryName = categoryName,
        _catatan = catatan,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "tanggal" field.
  String? _tanggal;
  String get tanggal => _tanggal ?? '';
  set tanggal(String? val) => _tanggal = val;

  bool hasTanggal() => _tanggal != null;

  // "waktu" field.
  String? _waktu;
  String get waktu => _waktu ?? '';
  set waktu(String? val) => _waktu = val;

  bool hasWaktu() => _waktu != null;

  // "nominal" field.
  int? _nominal;
  int get nominal => _nominal ?? 0;
  set nominal(int? val) => _nominal = val;

  void incrementNominal(int amount) => nominal = nominal + amount;

  bool hasNominal() => _nominal != null;

  // "category_expense_id" field.
  int? _categoryExpenseId;
  int get categoryExpenseId => _categoryExpenseId ?? 0;
  set categoryExpenseId(int? val) => _categoryExpenseId = val;

  void incrementCategoryExpenseId(int amount) =>
      categoryExpenseId = categoryExpenseId + amount;

  bool hasCategoryExpenseId() => _categoryExpenseId != null;

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  set categoryName(String? val) => _categoryName = val;

  bool hasCategoryName() => _categoryName != null;

  // "catatan" field.
  String? _catatan;
  String get catatan => _catatan ?? '';
  set catatan(String? val) => _catatan = val;

  bool hasCatatan() => _catatan != null;

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

  static ExpenseStruct fromMap(Map<String, dynamic> data) => ExpenseStruct(
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        tanggal: data['tanggal'] as String?,
        waktu: data['waktu'] as String?,
        nominal: castToType<int>(data['nominal']),
        categoryExpenseId: castToType<int>(data['category_expense_id']),
        categoryName: data['category_name'] as String?,
        catatan: data['catatan'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static ExpenseStruct? maybeFromMap(dynamic data) =>
      data is Map ? ExpenseStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'tanggal': _tanggal,
        'waktu': _waktu,
        'nominal': _nominal,
        'category_expense_id': _categoryExpenseId,
        'category_name': _categoryName,
        'catatan': _catatan,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'tanggal': serializeParam(
          _tanggal,
          ParamType.String,
        ),
        'waktu': serializeParam(
          _waktu,
          ParamType.String,
        ),
        'nominal': serializeParam(
          _nominal,
          ParamType.int,
        ),
        'category_expense_id': serializeParam(
          _categoryExpenseId,
          ParamType.int,
        ),
        'category_name': serializeParam(
          _categoryName,
          ParamType.String,
        ),
        'catatan': serializeParam(
          _catatan,
          ParamType.String,
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

  static ExpenseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExpenseStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        tanggal: deserializeParam(
          data['tanggal'],
          ParamType.String,
          false,
        ),
        waktu: deserializeParam(
          data['waktu'],
          ParamType.String,
          false,
        ),
        nominal: deserializeParam(
          data['nominal'],
          ParamType.int,
          false,
        ),
        categoryExpenseId: deserializeParam(
          data['category_expense_id'],
          ParamType.int,
          false,
        ),
        categoryName: deserializeParam(
          data['category_name'],
          ParamType.String,
          false,
        ),
        catatan: deserializeParam(
          data['catatan'],
          ParamType.String,
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
  String toString() => 'ExpenseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExpenseStruct &&
        id == other.id &&
        userId == other.userId &&
        tanggal == other.tanggal &&
        waktu == other.waktu &&
        nominal == other.nominal &&
        categoryExpenseId == other.categoryExpenseId &&
        categoryName == other.categoryName &&
        catatan == other.catatan &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userId,
        tanggal,
        waktu,
        nominal,
        categoryExpenseId,
        categoryName,
        catatan,
        createdAt,
        updatedAt
      ]);
}

ExpenseStruct createExpenseStruct({
  int? id,
  int? userId,
  String? tanggal,
  String? waktu,
  int? nominal,
  int? categoryExpenseId,
  String? categoryName,
  String? catatan,
  String? createdAt,
  String? updatedAt,
}) =>
    ExpenseStruct(
      id: id,
      userId: userId,
      tanggal: tanggal,
      waktu: waktu,
      nominal: nominal,
      categoryExpenseId: categoryExpenseId,
      categoryName: categoryName,
      catatan: catatan,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
