// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentMethodStruct extends BaseStruct {
  PaymentMethodStruct({
    String? provider,
    String? paymentMethod,
    bool? status,
    String? qrisImage,
    int? id,
  })  : _provider = provider,
        _paymentMethod = paymentMethod,
        _status = status,
        _qrisImage = qrisImage,
        _id = id;

  // "provider" field.
  String? _provider;
  String get provider => _provider ?? '';
  set provider(String? val) => _provider = val;

  bool hasProvider() => _provider != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  set paymentMethod(String? val) => _paymentMethod = val;

  bool hasPaymentMethod() => _paymentMethod != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "qris_image" field.
  String? _qrisImage;
  String get qrisImage => _qrisImage ?? '';
  set qrisImage(String? val) => _qrisImage = val;

  bool hasQrisImage() => _qrisImage != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static PaymentMethodStruct fromMap(Map<String, dynamic> data) =>
      PaymentMethodStruct(
        provider: data['provider'] as String?,
        paymentMethod: data['payment_method'] as String?,
        status: data['status'] as bool?,
        qrisImage: data['qris_image'] as String?,
        id: castToType<int>(data['id']),
      );

  static PaymentMethodStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentMethodStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'provider': _provider,
        'payment_method': _paymentMethod,
        'status': _status,
        'qris_image': _qrisImage,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'provider': serializeParam(
          _provider,
          ParamType.String,
        ),
        'payment_method': serializeParam(
          _paymentMethod,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'qris_image': serializeParam(
          _qrisImage,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static PaymentMethodStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentMethodStruct(
        provider: deserializeParam(
          data['provider'],
          ParamType.String,
          false,
        ),
        paymentMethod: deserializeParam(
          data['payment_method'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        qrisImage: deserializeParam(
          data['qris_image'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PaymentMethodStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentMethodStruct &&
        provider == other.provider &&
        paymentMethod == other.paymentMethod &&
        status == other.status &&
        qrisImage == other.qrisImage &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([provider, paymentMethod, status, qrisImage, id]);
}

PaymentMethodStruct createPaymentMethodStruct({
  String? provider,
  String? paymentMethod,
  bool? status,
  String? qrisImage,
  int? id,
}) =>
    PaymentMethodStruct(
      provider: provider,
      paymentMethod: paymentMethod,
      status: status,
      qrisImage: qrisImage,
      id: id,
    );
