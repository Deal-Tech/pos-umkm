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
  })  : _provider = provider,
        _paymentMethod = paymentMethod,
        _status = status,
        _qrisImage = qrisImage;

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

  static PaymentMethodStruct fromMap(Map<String, dynamic> data) =>
      PaymentMethodStruct(
        provider: data['provider'] as String?,
        paymentMethod: data['payment_method'] as String?,
        status: data['status'] as bool?,
        qrisImage: data['qris_image'] as String?,
      );

  static PaymentMethodStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentMethodStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'provider': _provider,
        'payment_method': _paymentMethod,
        'status': _status,
        'qris_image': _qrisImage,
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
      );

  @override
  String toString() => 'PaymentMethodStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentMethodStruct &&
        provider == other.provider &&
        paymentMethod == other.paymentMethod &&
        status == other.status &&
        qrisImage == other.qrisImage;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([provider, paymentMethod, status, qrisImage]);
}

PaymentMethodStruct createPaymentMethodStruct({
  String? provider,
  String? paymentMethod,
  bool? status,
  String? qrisImage,
}) =>
    PaymentMethodStruct(
      provider: provider,
      paymentMethod: paymentMethod,
      status: status,
      qrisImage: qrisImage,
    );
