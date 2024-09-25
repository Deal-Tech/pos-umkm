// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartItemStruct extends BaseStruct {
  CartItemStruct({
    int? quantity,
    int? price,
    String? unit,
    int? productId,
    int? categoryId,
    String? name,
    String? productImageUrl,
  })  : _quantity = quantity,
        _price = price,
        _unit = unit,
        _productId = productId,
        _categoryId = categoryId,
        _name = name,
        _productImageUrl = productImageUrl;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

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

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;

  void incrementProductId(int amount) => productId = productId + amount;

  bool hasProductId() => _productId != null;

  // "category_id" field.
  int? _categoryId;
  int get categoryId => _categoryId ?? 0;
  set categoryId(int? val) => _categoryId = val;

  void incrementCategoryId(int amount) => categoryId = categoryId + amount;

  bool hasCategoryId() => _categoryId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "product_image_url" field.
  String? _productImageUrl;
  String get productImageUrl => _productImageUrl ?? '';
  set productImageUrl(String? val) => _productImageUrl = val;

  bool hasProductImageUrl() => _productImageUrl != null;

  static CartItemStruct fromMap(Map<String, dynamic> data) => CartItemStruct(
        quantity: castToType<int>(data['quantity']),
        price: castToType<int>(data['price']),
        unit: data['unit'] as String?,
        productId: castToType<int>(data['product_id']),
        categoryId: castToType<int>(data['category_id']),
        name: data['name'] as String?,
        productImageUrl: data['product_image_url'] as String?,
      );

  static CartItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'quantity': _quantity,
        'price': _price,
        'unit': _unit,
        'product_id': _productId,
        'category_id': _categoryId,
        'name': _name,
        'product_image_url': _productImageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'product_id': serializeParam(
          _productId,
          ParamType.int,
        ),
        'category_id': serializeParam(
          _categoryId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'product_image_url': serializeParam(
          _productImageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static CartItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartItemStruct(
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
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
        productId: deserializeParam(
          data['product_id'],
          ParamType.int,
          false,
        ),
        categoryId: deserializeParam(
          data['category_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        productImageUrl: deserializeParam(
          data['product_image_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CartItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartItemStruct &&
        quantity == other.quantity &&
        price == other.price &&
        unit == other.unit &&
        productId == other.productId &&
        categoryId == other.categoryId &&
        name == other.name &&
        productImageUrl == other.productImageUrl;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [quantity, price, unit, productId, categoryId, name, productImageUrl]);
}

CartItemStruct createCartItemStruct({
  int? quantity,
  int? price,
  String? unit,
  int? productId,
  int? categoryId,
  String? name,
  String? productImageUrl,
}) =>
    CartItemStruct(
      quantity: quantity,
      price: price,
      unit: unit,
      productId: productId,
      categoryId: categoryId,
      name: name,
      productImageUrl: productImageUrl,
    );
