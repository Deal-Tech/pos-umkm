// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterreportdateStruct extends BaseStruct {
  FilterreportdateStruct({
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

  static FilterreportdateStruct fromMap(Map<String, dynamic> data) =>
      FilterreportdateStruct(
        datestart: data['datestart'] as DateTime?,
        dateend: data['dateend'] as DateTime?,
        paymentMethod: data['payment_method'] as String?,
      );

  static FilterreportdateStruct? maybeFromMap(dynamic data) => data is Map
      ? FilterreportdateStruct.fromMap(data.cast<String, dynamic>())
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

  static FilterreportdateStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FilterreportdateStruct(
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
  String toString() => 'FilterreportdateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FilterreportdateStruct &&
        datestart == other.datestart &&
        dateend == other.dateend &&
        paymentMethod == other.paymentMethod;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([datestart, dateend, paymentMethod]);
}

FilterreportdateStruct createFilterreportdateStruct({
  DateTime? datestart,
  DateTime? dateend,
  String? paymentMethod,
}) =>
    FilterreportdateStruct(
      datestart: datestart,
      dateend: dateend,
      paymentMethod: paymentMethod,
    );
