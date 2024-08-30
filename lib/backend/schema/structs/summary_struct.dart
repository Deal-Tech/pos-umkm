// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SummaryStruct extends BaseStruct {
  SummaryStruct({
    int? totalSales,
    int? totalTransactions,
    int? totalItems,
  })  : _totalSales = totalSales,
        _totalTransactions = totalTransactions,
        _totalItems = totalItems;

  // "total_sales" field.
  int? _totalSales;
  int get totalSales => _totalSales ?? 0;
  set totalSales(int? val) => _totalSales = val;

  void incrementTotalSales(int amount) => totalSales = totalSales + amount;

  bool hasTotalSales() => _totalSales != null;

  // "total_transactions" field.
  int? _totalTransactions;
  int get totalTransactions => _totalTransactions ?? 0;
  set totalTransactions(int? val) => _totalTransactions = val;

  void incrementTotalTransactions(int amount) =>
      totalTransactions = totalTransactions + amount;

  bool hasTotalTransactions() => _totalTransactions != null;

  // "total_items" field.
  int? _totalItems;
  int get totalItems => _totalItems ?? 0;
  set totalItems(int? val) => _totalItems = val;

  void incrementTotalItems(int amount) => totalItems = totalItems + amount;

  bool hasTotalItems() => _totalItems != null;

  static SummaryStruct fromMap(Map<String, dynamic> data) => SummaryStruct(
        totalSales: castToType<int>(data['total_sales']),
        totalTransactions: castToType<int>(data['total_transactions']),
        totalItems: castToType<int>(data['total_items']),
      );

  static SummaryStruct? maybeFromMap(dynamic data) =>
      data is Map ? SummaryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'total_sales': _totalSales,
        'total_transactions': _totalTransactions,
        'total_items': _totalItems,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total_sales': serializeParam(
          _totalSales,
          ParamType.int,
        ),
        'total_transactions': serializeParam(
          _totalTransactions,
          ParamType.int,
        ),
        'total_items': serializeParam(
          _totalItems,
          ParamType.int,
        ),
      }.withoutNulls;

  static SummaryStruct fromSerializableMap(Map<String, dynamic> data) =>
      SummaryStruct(
        totalSales: deserializeParam(
          data['total_sales'],
          ParamType.int,
          false,
        ),
        totalTransactions: deserializeParam(
          data['total_transactions'],
          ParamType.int,
          false,
        ),
        totalItems: deserializeParam(
          data['total_items'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SummaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SummaryStruct &&
        totalSales == other.totalSales &&
        totalTransactions == other.totalTransactions &&
        totalItems == other.totalItems;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([totalSales, totalTransactions, totalItems]);
}

SummaryStruct createSummaryStruct({
  int? totalSales,
  int? totalTransactions,
  int? totalItems,
}) =>
    SummaryStruct(
      totalSales: totalSales,
      totalTransactions: totalTransactions,
      totalItems: totalItems,
    );
