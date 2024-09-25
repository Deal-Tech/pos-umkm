// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartItemStruct extends BaseStruct {
  CartItemStruct({
    int? quantity,
    int? price,
    String? name,
    String? unit,
    String? category,
    String? imageUrl,
    String? paymentMethod,
    String? paymentPosId,
    String? productId,
    String? categoryId,
  })  : _quantity = quantity,
        _price = price,
        _name = name,
        _unit = unit,
        _category = category,
        _imageUrl = imageUrl,
        _paymentMethod = paymentMethod,
        _paymentPosId = paymentPosId,
        _productId = productId,
        _categoryId = categoryId;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  set paymentMethod(String? val) => _paymentMethod = val;

  bool hasPaymentMethod() => _paymentMethod != null;

  // "payment_pos_id" field.
  String? _paymentPosId;
  String get paymentPosId => _paymentPosId ?? '';
  set paymentPosId(String? val) => _paymentPosId = val;

  bool hasPaymentPosId() => _paymentPosId != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) => _productId = val;

  bool hasProductId() => _productId != null;

  // "category_id" field.
  String? _categoryId;
  String get categoryId => _categoryId ?? '';
  set categoryId(String? val) => _categoryId = val;

  bool hasCategoryId() => _categoryId != null;

  static CartItemStruct fromMap(Map<String, dynamic> data) => CartItemStruct(
        quantity: castToType<int>(data['quantity']),
        price: castToType<int>(data['price']),
        name: data['name'] as String?,
        unit: data['unit'] as String?,
        category: data['category'] as String?,
        imageUrl: data['image_url'] as String?,
        paymentMethod: data['payment_method'] as String?,
        paymentPosId: data['payment_pos_id'] as String?,
        productId: data['product_id'] as String?,
        categoryId: data['category_id'] as String?,
      );

  static CartItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'quantity': _quantity,
        'price': _price,
        'name': _name,
        'unit': _unit,
        'category': _category,
        'image_url': _imageUrl,
        'payment_method': _paymentMethod,
        'payment_pos_id': _paymentPosId,
        'product_id': _productId,
        'category_id': _categoryId,
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
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'payment_method': serializeParam(
          _paymentMethod,
          ParamType.String,
        ),
        'payment_pos_id': serializeParam(
          _paymentPosId,
          ParamType.String,
        ),
        'product_id': serializeParam(
          _productId,
          ParamType.String,
        ),
        'category_id': serializeParam(
          _categoryId,
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
        paymentMethod: deserializeParam(
          data['payment_method'],
          ParamType.String,
          false,
        ),
        paymentPosId: deserializeParam(
          data['payment_pos_id'],
          ParamType.String,
          false,
        ),
        productId: deserializeParam(
          data['product_id'],
          ParamType.String,
          false,
        ),
        categoryId: deserializeParam(
          data['category_id'],
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
        name == other.name &&
        unit == other.unit &&
        category == other.category &&
        imageUrl == other.imageUrl &&
        paymentMethod == other.paymentMethod &&
        paymentPosId == other.paymentPosId &&
        productId == other.productId &&
        categoryId == other.categoryId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        quantity,
        price,
        name,
        unit,
        category,
        imageUrl,
        paymentMethod,
        paymentPosId,
        productId,
        categoryId
      ]);
}

CartItemStruct createCartItemStruct({
  int? quantity,
  int? price,
  String? name,
  String? unit,
  String? category,
  String? imageUrl,
  String? paymentMethod,
  String? paymentPosId,
  String? productId,
  String? categoryId,
}) =>
    CartItemStruct(
      quantity: quantity,
      price: price,
      name: name,
      unit: unit,
      category: category,
      imageUrl: imageUrl,
      paymentMethod: paymentMethod,
      paymentPosId: paymentPosId,
      productId: productId,
      categoryId: categoryId,
    );
