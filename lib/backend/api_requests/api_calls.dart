import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Api Transaksi Group Code

class ApiTransaksiGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thetester.me/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static CreateTransactionCall createTransactionCall = CreateTransactionCall();
  static UpdateTransactionCall updateTransactionCall = UpdateTransactionCall();
  static GetTransactionsCall getTransactionsCall = GetTransactionsCall();
  static GetTransactionIDCall getTransactionIDCall = GetTransactionIDCall();
  static DeleteTransactionCall deleteTransactionCall = DeleteTransactionCall();
}

class CreateTransactionCall {
  Future<ApiCallResponse> call({
    List<int>? priceList,
    List<String>? unitList,
    List<String>? categoryIdList,
    int? total,
    String? paymentPosId = '',
    String? paymentMethod = '',
    String? status = '',
    List<String>? productIdList,
    List<int>? quantityList,
    String? token = '',
  }) async {
    final baseUrl = ApiTransaksiGroup.getBaseUrl(
      token: token,
    );
    final price = _serializeList(priceList);
    final unit = _serializeList(unitList);
    final categoryId = _serializeList(categoryIdList);
    final productId = _serializeList(productIdList);
    final quantity = _serializeList(quantityList);

    final ffApiRequestBody = '''
{
  "total": $total,
  "payment_pos_id": "$paymentPosId",
  "payment_method": "$paymentMethod",
  "status": "$status",
  "products": [
    {
      "product_id": "$productId",
      "quantity": $quantity,
      "price": $price,
      "category_id": "$categoryId",
      "unit": "$unit"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Transaction',
      apiUrl: '$baseUrl/transactions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTransactionCall {
  Future<ApiCallResponse> call({
    String? productId = '',
    String? nama = '',
    int? price,
    String? unit = '',
    String? categoryId = '',
    int? total,
    String? paymentPosId = '',
    String? paymentMethod = '',
    String? status = '',
    String? transactionId = '',
    String? token = '',
  }) async {
    final baseUrl = ApiTransaksiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "product_id": "$productId",
  "nama": "$nama",
  "price": $price,
  "unit": "$unit",
  "category_id": "$categoryId",
  "total": $total,
  "payment_pos_id": "$paymentPosId",
  "payment_method": "$paymentMethod",
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Transaction',
      apiUrl: '$baseUrl/transactions/$transactionId',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTransactionsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ApiTransaksiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get transactions',
      apiUrl: '$baseUrl/transactions',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTransactionIDCall {
  Future<ApiCallResponse> call({
    String? transactionId = '',
    String? token = '',
  }) async {
    final baseUrl = ApiTransaksiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Transaction ID',
      apiUrl: '$baseUrl/transactions/$transactionId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTransactionCall {
  Future<ApiCallResponse> call({
    String? transactionId = '',
    String? token = '',
  }) async {
    final baseUrl = ApiTransaksiGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Transaction ',
      apiUrl: '$baseUrl/transactions/$transactionId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Api Transaksi Group Code

class ApiDaftarCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    String? passwordConfirmation = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "email": "$email",
  "password": "$password",
"password_confirmation": "$passwordConfirmation"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'api daftar',
      apiUrl: 'https://thetester.me/api/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? tokenlogin(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class LoginApiCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phone": "$phone",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login api',
      apiUrl: 'https://thetester.me/api/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? tokenlogin(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static int? userid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.id''',
      ));
}

class ApiLogoutCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'api logout',
      apiUrl: 'https://thetester.me/api/logout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiGetUserCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Get User',
      apiUrl: 'https://thetester.me/api/user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nama(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  static String? plan(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.plan''',
      ));
  static String? resetcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.reset_code''',
      ));
}

class ApiProductCreateCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? userId = '',
    String? name = '',
    int? price,
    String? unit = '',
    String? imageUrl = '',
    String? category = '',
    bool? status = true,
    String? sku = '',
    String? barcode = '',
    String? categoryId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId",
  "sku": "$sku",
  "barcode": "$barcode",
  "name": "$name",
  "price": $price,
  "unit": "$unit",
  "image_url": "$imageUrl",
  "category": "$category",
  "status": $status,
  "category_id": "$categoryId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Api Product Create',
      apiUrl: 'https://thetester.me/api/products',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiProductUpdateCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? name = '',
    int? price,
    String? unit = '',
    String? imageUrl = '',
    String? category = '',
    bool? status = true,
    String? productId = '',
    String? sku = '',
    String? barcode = '',
    String? userId = '',
    String? categoryId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId",
  "sku": "$sku",
  "barcode": "$barcode",
  "name": "$name",
  "price": $price,
  "unit": "$unit",
  "image_url": "$imageUrl",
  "category": "$category",
  "status": $status,
  "category_id": "$categoryId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Api Product Update',
      apiUrl: 'https://thetester.me/api/products/$productId',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiProductShowCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? productId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Product Show',
      apiUrl: 'https://thetester.me/api/products/$productId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiGetListProductCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? query = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Get List Product',
      apiUrl: 'https://thetester.me/api/products',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'query': query,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nameproduct(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? imageproduct(dynamic response) => getJsonField(
        response,
        r'''$[:].image_url''',
        true,
      ) as List?;
  static List<String>? categoryproduct(dynamic response) => (getJsonField(
        response,
        r'''$[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? statusproduct(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<int>? priceproduct(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? unitproduct(dynamic response) => (getJsonField(
        response,
        r'''$[:].unit''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? userid(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? idproduct(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ApiDeleteProductCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? productId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Delete Product',
      apiUrl: 'https://thetester.me/api/products/$productId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiDeleteCategoryCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? categoryId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Delete Category',
      apiUrl: 'https://thetester.me/api/categories/$categoryId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUploudImageProductCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    FFUploadedFile? image,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Uploud Image product',
      apiUrl: 'https://thetester.me/api/upload-product-image',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'token': token,
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic imageurl(dynamic response) => getJsonField(
        response,
        r'''$.image_url''',
      );
}

class ApiDeleteImageProductCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? imageUrl = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Delete Image Product',
      apiUrl: 'https://thetester.me/api/delete-product-image',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'image_url': imageUrl,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? imagemessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ApiGetListCategoryCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Get List Category',
      apiUrl: 'https://thetester.me/api/categories',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiCategoryCreateCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? name = '',
    bool? status,
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "status": $status
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Api Category Create',
      apiUrl: 'https://thetester.me/api/categories',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiUpdateCategoryCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? name = '',
    bool? status,
    String? categoryId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Api Update Category',
      apiUrl: 'https://thetester.me/api/categories/$categoryId',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiGetPaymentPOSCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Get Payment POS',
      apiUrl: 'https://thetester.me/api/payment_pos',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendOTPCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phone": "$phone"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send OTP',
      apiUrl: 'https://thetester.me/api/password/code',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiChangePasswordWithCodeCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
    String? resetCode = '',
    String? password = '',
    String? passwordConfirmation = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phone": "$phone",
  "reset_code": "$resetCode",
  "password": "$password",
  "password_confirmation": "$passwordConfirmation"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Api Change Password With Code',
      apiUrl: 'https://thetester.me/api/password/reset-with-code',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
