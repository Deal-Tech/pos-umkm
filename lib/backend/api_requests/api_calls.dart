import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetListProductCall {
  static Future<ApiCallResponse> call({
    String? name = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get List Product',
      apiUrl:
          'https://n8n-cahrur-api.lwpvj5.easypanel.host/webhook/superpos-product',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'name': name,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SummaryCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'summary',
      apiUrl:
          'https://n8n-cahrur-api.lwpvj5.easypanel.host/webhook/SuperPOS-Summary',
      callType: ApiCallType.GET,
      headers: {},
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
      apiUrl: 'http://thetester.me/api/register',
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
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login api',
      apiUrl: 'http://thetester.me/api/login',
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

  static dynamic tokenlogin(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
}

class ApiLogoutCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'api logout',
      apiUrl: 'http://thetester.me/api/logout',
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
      apiUrl: 'http://thetester.me/api/user',
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
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId",
  "name": "$name",
  "price": $price,
  "unit": "$unit",
  "image_url": "$imageUrl",
  "category": "$category",
  "status": $status
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Api Product Create',
      apiUrl: 'http://thetester.me/api/products',
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
