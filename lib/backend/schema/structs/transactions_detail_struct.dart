// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsDetailStruct extends BaseStruct {
  TransactionsDetailStruct({
    int? id,
    int? userId,
    int? total,
    int? paymentPosId,
    String? paymentMethod,
    String? status,
    List<TransactionDetailsStruct>? transactionDetails,
    String? createdAt,
    String? updatedAt,
  })  : _id = id,
        _userId = userId,
        _total = total,
        _paymentPosId = paymentPosId,
        _paymentMethod = paymentMethod,
        _status = status,
        _transactionDetails = transactionDetails,
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

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "payment_pos_id" field.
  int? _paymentPosId;
  int get paymentPosId => _paymentPosId ?? 0;
  set paymentPosId(int? val) => _paymentPosId = val;

  void incrementPaymentPosId(int amount) =>
      paymentPosId = paymentPosId + amount;

  bool hasPaymentPosId() => _paymentPosId != null;

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

  // "transaction_details" field.
  List<TransactionDetailsStruct>? _transactionDetails;
  List<TransactionDetailsStruct> get transactionDetails =>
      _transactionDetails ?? const [];
  set transactionDetails(List<TransactionDetailsStruct>? val) =>
      _transactionDetails = val;

  void updateTransactionDetails(
      Function(List<TransactionDetailsStruct>) updateFn) {
    updateFn(_transactionDetails ??= []);
  }

  bool hasTransactionDetails() => _transactionDetails != null;

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

  static TransactionsDetailStruct fromMap(Map<String, dynamic> data) =>
      TransactionsDetailStruct(
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        total: castToType<int>(data['total']),
        paymentPosId: castToType<int>(data['payment_pos_id']),
        paymentMethod: data['payment_method'] as String?,
        status: data['status'] as String?,
        transactionDetails: getStructList(
          data['transaction_details'],
          TransactionDetailsStruct.fromMap,
        ),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static TransactionsDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionsDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'total': _total,
        'payment_pos_id': _paymentPosId,
        'payment_method': _paymentMethod,
        'status': _status,
        'transaction_details':
            _transactionDetails?.map((e) => e.toMap()).toList(),
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
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'payment_pos_id': serializeParam(
          _paymentPosId,
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
        'transaction_details': serializeParam(
          _transactionDetails,
          ParamType.DataStruct,
          isList: true,
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

  static TransactionsDetailStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TransactionsDetailStruct(
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
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        paymentPosId: deserializeParam(
          data['payment_pos_id'],
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
        transactionDetails: deserializeStructParam<TransactionDetailsStruct>(
          data['transaction_details'],
          ParamType.DataStruct,
          true,
          structBuilder: TransactionDetailsStruct.fromSerializableMap,
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
  String toString() => 'TransactionsDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TransactionsDetailStruct &&
        id == other.id &&
        userId == other.userId &&
        total == other.total &&
        paymentPosId == other.paymentPosId &&
        paymentMethod == other.paymentMethod &&
        status == other.status &&
        listEquality.equals(transactionDetails, other.transactionDetails) &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userId,
        total,
        paymentPosId,
        paymentMethod,
        status,
        transactionDetails,
        createdAt,
        updatedAt
      ]);
}

TransactionsDetailStruct createTransactionsDetailStruct({
  int? id,
  int? userId,
  int? total,
  int? paymentPosId,
  String? paymentMethod,
  String? status,
  String? createdAt,
  String? updatedAt,
}) =>
    TransactionsDetailStruct(
      id: id,
      userId: userId,
      total: total,
      paymentPosId: paymentPosId,
      paymentMethod: paymentMethod,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
