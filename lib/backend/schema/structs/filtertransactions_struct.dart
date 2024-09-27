// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FiltertransactionsStruct extends BaseStruct {
  FiltertransactionsStruct({
    DateTime? datestart,
    DateTime? dateend,
    String? paymentMethod,
  })  : _datestart = datestart,
        _dateend = dateend,
        _paymentMethod = paymentMethod;

  // "datestart" field.
  DateTime? _datestart;
  DateTime get datestart =>
      _datestart ?? DateTime.fromMicrosecondsSinceEpoch(1725123600000000);
  set datestart(DateTime? val) => _datestart = val;

  bool hasDatestart() => _datestart != null;

  // "dateend" field.
  DateTime? _dateend;
  DateTime get dateend =>
      _dateend ?? DateTime.fromMicrosecondsSinceEpoch(1885136400000000);
  set dateend(DateTime? val) => _dateend = val;

  bool hasDateend() => _dateend != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  set paymentMethod(String? val) => _paymentMethod = val;

  bool hasPaymentMethod() => _paymentMethod != null;

  static FiltertransactionsStruct fromMap(Map<String, dynamic> data) =>
      FiltertransactionsStruct(
        datestart: data['datestart'] as DateTime?,
        dateend: data['dateend'] as DateTime?,
        paymentMethod: data['payment_method'] as String?,
      );

  static FiltertransactionsStruct? maybeFromMap(dynamic data) => data is Map
      ? FiltertransactionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'datestart': _datestart,
        'dateend': _dateend,
        'payment_method': _paymentMethod,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'datestart': serializeParam(
          _datestart,
          ParamType.DateTime,
        ),
        'dateend': serializeParam(
          _dateend,
          ParamType.DateTime,
        ),
        'payment_method': serializeParam(
          _paymentMethod,
          ParamType.String,
        ),
      }.withoutNulls;

  static FiltertransactionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FiltertransactionsStruct(
        datestart: deserializeParam(
          data['datestart'],
          ParamType.DateTime,
          false,
        ),
        dateend: deserializeParam(
          data['dateend'],
          ParamType.DateTime,
          false,
        ),
        paymentMethod: deserializeParam(
          data['payment_method'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FiltertransactionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FiltertransactionsStruct &&
        datestart == other.datestart &&
        dateend == other.dateend &&
        paymentMethod == other.paymentMethod;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([datestart, dateend, paymentMethod]);
}

FiltertransactionsStruct createFiltertransactionsStruct({
  DateTime? datestart,
  DateTime? dateend,
  String? paymentMethod,
}) =>
    FiltertransactionsStruct(
      datestart: datestart,
      dateend: dateend,
      paymentMethod: paymentMethod,
    );
