// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersStruct extends BaseStruct {
  OrdersStruct({
    int? id,
    int? userId,
    String? name,
    String? phone,
    String? email,
    int? planId,
    String? planName,
    int? amount,
    String? expiredPlan,
    String? paymentAmount,
    int? paymentId,
    String? paymentMethod,
    String? status,
    String? createdAt,
    String? updatedAt,
  })  : _id = id,
        _userId = userId,
        _name = name,
        _phone = phone,
        _email = email,
        _planId = planId,
        _planName = planName,
        _amount = amount,
        _expiredPlan = expiredPlan,
        _paymentAmount = paymentAmount,
        _paymentId = paymentId,
        _paymentMethod = paymentMethod,
        _status = status,
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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "plan_id" field.
  int? _planId;
  int get planId => _planId ?? 0;
  set planId(int? val) => _planId = val;

  void incrementPlanId(int amount) => planId = planId + amount;

  bool hasPlanId() => _planId != null;

  // "plan_name" field.
  String? _planName;
  String get planName => _planName ?? '';
  set planName(String? val) => _planName = val;

  bool hasPlanName() => _planName != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  set amount(int? val) => _amount = val;

  void incrementAmount(int amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "expired_plan" field.
  String? _expiredPlan;
  String get expiredPlan => _expiredPlan ?? '';
  set expiredPlan(String? val) => _expiredPlan = val;

  bool hasExpiredPlan() => _expiredPlan != null;

  // "payment_amount" field.
  String? _paymentAmount;
  String get paymentAmount => _paymentAmount ?? '';
  set paymentAmount(String? val) => _paymentAmount = val;

  bool hasPaymentAmount() => _paymentAmount != null;

  // "payment_id" field.
  int? _paymentId;
  int get paymentId => _paymentId ?? 0;
  set paymentId(int? val) => _paymentId = val;

  void incrementPaymentId(int amount) => paymentId = paymentId + amount;

  bool hasPaymentId() => _paymentId != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  set paymentMethod(String? val) => _paymentMethod = val;

  bool hasPaymentMethod() => _paymentMethod != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

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

  static OrdersStruct fromMap(Map<String, dynamic> data) => OrdersStruct(
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        name: data['name'] as String?,
        phone: data['phone'] as String?,
        email: data['email'] as String?,
        planId: castToType<int>(data['plan_id']),
        planName: data['plan_name'] as String?,
        amount: castToType<int>(data['amount']),
        expiredPlan: data['expired_plan'] as String?,
        paymentAmount: data['payment_amount'] as String?,
        paymentId: castToType<int>(data['payment_id']),
        paymentMethod: data['payment_method'] as String?,
        status: data['status'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static OrdersStruct? maybeFromMap(dynamic data) =>
      data is Map ? OrdersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'name': _name,
        'phone': _phone,
        'email': _email,
        'plan_id': _planId,
        'plan_name': _planName,
        'amount': _amount,
        'expired_plan': _expiredPlan,
        'payment_amount': _paymentAmount,
        'payment_id': _paymentId,
        'payment_method': _paymentMethod,
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
        'user_id': serializeParam(
          _userId,
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
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'plan_id': serializeParam(
          _planId,
          ParamType.int,
        ),
        'plan_name': serializeParam(
          _planName,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.int,
        ),
        'expired_plan': serializeParam(
          _expiredPlan,
          ParamType.String,
        ),
        'payment_amount': serializeParam(
          _paymentAmount,
          ParamType.String,
        ),
        'payment_id': serializeParam(
          _paymentId,
          ParamType.int,
        ),
        'payment_method': serializeParam(
          _paymentMethod,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
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

  static OrdersStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrdersStruct(
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
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        planId: deserializeParam(
          data['plan_id'],
          ParamType.int,
          false,
        ),
        planName: deserializeParam(
          data['plan_name'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.int,
          false,
        ),
        expiredPlan: deserializeParam(
          data['expired_plan'],
          ParamType.String,
          false,
        ),
        paymentAmount: deserializeParam(
          data['payment_amount'],
          ParamType.String,
          false,
        ),
        paymentId: deserializeParam(
          data['payment_id'],
          ParamType.int,
          false,
        ),
        paymentMethod: deserializeParam(
          data['payment_method'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
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
  String toString() => 'OrdersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrdersStruct &&
        id == other.id &&
        userId == other.userId &&
        name == other.name &&
        phone == other.phone &&
        email == other.email &&
        planId == other.planId &&
        planName == other.planName &&
        amount == other.amount &&
        expiredPlan == other.expiredPlan &&
        paymentAmount == other.paymentAmount &&
        paymentId == other.paymentId &&
        paymentMethod == other.paymentMethod &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userId,
        name,
        phone,
        email,
        planId,
        planName,
        amount,
        expiredPlan,
        paymentAmount,
        paymentId,
        paymentMethod,
        status,
        createdAt,
        updatedAt
      ]);
}

OrdersStruct createOrdersStruct({
  int? id,
  int? userId,
  String? name,
  String? phone,
  String? email,
  int? planId,
  String? planName,
  int? amount,
  String? expiredPlan,
  String? paymentAmount,
  int? paymentId,
  String? paymentMethod,
  String? status,
  String? createdAt,
  String? updatedAt,
}) =>
    OrdersStruct(
      id: id,
      userId: userId,
      name: name,
      phone: phone,
      email: email,
      planId: planId,
      planName: planName,
      amount: amount,
      expiredPlan: expiredPlan,
      paymentAmount: paymentAmount,
      paymentId: paymentId,
      paymentMethod: paymentMethod,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
