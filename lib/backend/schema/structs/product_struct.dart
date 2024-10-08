// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    int? id,
    String? name,
    int? price,
    String? unit,
    String? imageUrl,
    String? category,
    bool? status,
    int? userId,
    int? categoryId,
    String? sku,
    String? barcode,
  })  : _id = id,
        _name = name,
        _price = price,
        _unit = unit,
        _imageUrl = imageUrl,
        _category = category,
        _status = status,
        _userId = userId,
        _categoryId = categoryId,
        _sku = sku,
        _barcode = barcode;

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

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? true;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "category_id" field.
  int? _categoryId;
  int get categoryId => _categoryId ?? 0;
  set categoryId(int? val) => _categoryId = val;

  void incrementCategoryId(int amount) => categoryId = categoryId + amount;

  bool hasCategoryId() => _categoryId != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "barcode" field.
  String? _barcode;
  String get barcode => _barcode ?? '';
  set barcode(String? val) => _barcode = val;

  bool hasBarcode() => _barcode != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        price: castToType<int>(data['price']),
        unit: data['unit'] as String?,
        imageUrl: data['image_url'] as String?,
        category: data['category'] as String?,
        status: data['status'] as bool?,
        userId: castToType<int>(data['user_id']),
        categoryId: castToType<int>(data['category_id']),
        sku: data['sku'] as String?,
        barcode: data['barcode'] as String?,
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'price': _price,
        'unit': _unit,
        'image_url': _imageUrl,
        'category': _category,
        'status': _status,
        'user_id': _userId,
        'category_id': _categoryId,
        'sku': _sku,
        'barcode': _barcode,
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
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'category_id': serializeParam(
          _categoryId,
          ParamType.int,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'barcode': serializeParam(
          _barcode,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
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
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        categoryId: deserializeParam(
          data['category_id'],
          ParamType.int,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        barcode: deserializeParam(
          data['barcode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductStruct &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        unit == other.unit &&
        imageUrl == other.imageUrl &&
        category == other.category &&
        status == other.status &&
        userId == other.userId &&
        categoryId == other.categoryId &&
        sku == other.sku &&
        barcode == other.barcode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        price,
        unit,
        imageUrl,
        category,
        status,
        userId,
        categoryId,
        sku,
        barcode
      ]);
}

ProductStruct createProductStruct({
  int? id,
  String? name,
  int? price,
  String? unit,
  String? imageUrl,
  String? category,
  bool? status,
  int? userId,
  int? categoryId,
  String? sku,
  String? barcode,
}) =>
    ProductStruct(
      id: id,
      name: name,
      price: price,
      unit: unit,
      imageUrl: imageUrl,
      category: category,
      status: status,
      userId: userId,
      categoryId: categoryId,
      sku: sku,
      barcode: barcode,
    );
