// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionDetailsStruct extends BaseStruct {
  TransactionDetailsStruct({
    int? id,
    int? transactionId,
    int? productId,
    String? name,
    String? productImageUrl,
    String? unit,
    int? quantity,
    int? categoryId,
    String? createdAt,
    String? updatedAt,
    ProductStruct? product,
    int? price,
  })  : _id = id,
        _transactionId = transactionId,
        _productId = productId,
        _name = name,
        _productImageUrl = productImageUrl,
        _unit = unit,
        _quantity = quantity,
        _categoryId = categoryId,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _product = product,
        _price = price;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "transaction_id" field.
  int? _transactionId;
  int get transactionId => _transactionId ?? 0;
  set transactionId(int? val) => _transactionId = val;

  void incrementTransactionId(int amount) =>
      transactionId = transactionId + amount;

  bool hasTransactionId() => _transactionId != null;

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;

  void incrementProductId(int amount) => productId = productId + amount;

  bool hasProductId() => _productId != null;

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

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "category_id" field.
  int? _categoryId;
  int get categoryId => _categoryId ?? 0;
  set categoryId(int? val) => _categoryId = val;

  void incrementCategoryId(int amount) => categoryId = categoryId + amount;

  bool hasCategoryId() => _categoryId != null;

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

  // "product" field.
  ProductStruct? _product;
  ProductStruct get product => _product ?? ProductStruct();
  set product(ProductStruct? val) => _product = val;

  void updateProduct(Function(ProductStruct) updateFn) {
    updateFn(_product ??= ProductStruct());
  }

  bool hasProduct() => _product != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static TransactionDetailsStruct fromMap(Map<String, dynamic> data) =>
      TransactionDetailsStruct(
        id: castToType<int>(data['id']),
        transactionId: castToType<int>(data['transaction_id']),
        productId: castToType<int>(data['product_id']),
        name: data['name'] as String?,
        productImageUrl: data['product_image_url'] as String?,
        unit: data['unit'] as String?,
        quantity: castToType<int>(data['quantity']),
        categoryId: castToType<int>(data['category_id']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        product: ProductStruct.maybeFromMap(data['product']),
        price: castToType<int>(data['price']),
      );

  static TransactionDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'transaction_id': _transactionId,
        'product_id': _productId,
        'name': _name,
        'product_image_url': _productImageUrl,
        'unit': _unit,
        'quantity': _quantity,
        'category_id': _categoryId,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'product': _product?.toMap(),
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'transaction_id': serializeParam(
          _transactionId,
          ParamType.int,
        ),
        'product_id': serializeParam(
          _productId,
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
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'category_id': serializeParam(
          _categoryId,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'product': serializeParam(
          _product,
          ParamType.DataStruct,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
      }.withoutNulls;

  static TransactionDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TransactionDetailsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        transactionId: deserializeParam(
          data['transaction_id'],
          ParamType.int,
          false,
        ),
        productId: deserializeParam(
          data['product_id'],
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
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        categoryId: deserializeParam(
          data['category_id'],
          ParamType.int,
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
        product: deserializeStructParam(
          data['product'],
          ParamType.DataStruct,
          false,
          structBuilder: ProductStruct.fromSerializableMap,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TransactionDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionDetailsStruct &&
        id == other.id &&
        transactionId == other.transactionId &&
        productId == other.productId &&
        name == other.name &&
        productImageUrl == other.productImageUrl &&
        unit == other.unit &&
        quantity == other.quantity &&
        categoryId == other.categoryId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        product == other.product &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        transactionId,
        productId,
        name,
        productImageUrl,
        unit,
        quantity,
        categoryId,
        createdAt,
        updatedAt,
        product,
        price
      ]);
}

TransactionDetailsStruct createTransactionDetailsStruct({
  int? id,
  int? transactionId,
  int? productId,
  String? name,
  String? productImageUrl,
  String? unit,
  int? quantity,
  int? categoryId,
  String? createdAt,
  String? updatedAt,
  ProductStruct? product,
  int? price,
}) =>
    TransactionDetailsStruct(
      id: id,
      transactionId: transactionId,
      productId: productId,
      name: name,
      productImageUrl: productImageUrl,
      unit: unit,
      quantity: quantity,
      categoryId: categoryId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      product: product ?? ProductStruct(),
      price: price,
    );
