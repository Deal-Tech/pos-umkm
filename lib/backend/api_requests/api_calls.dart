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
  static UpdateStatusTransactionsCall updateStatusTransactionsCall =
      UpdateStatusTransactionsCall();
  static GetTransactionsCall getTransactionsCall = GetTransactionsCall();
  static GetTransactionIDCall getTransactionIDCall = GetTransactionIDCall();
  static DeleteTransactionCall deleteTransactionCall = DeleteTransactionCall();
}

class CreateTransactionCall {
  Future<ApiCallResponse> call({
    int? total,
    int? paymentPosId,
    String? paymentMethod = '',
    String? status = '',
    dynamic productsJson,
    String? token = '',
  }) async {
    final baseUrl = ApiTransaksiGroup.getBaseUrl(
      token: token,
    );

    final products = _serializeJson(productsJson, true);
    final ffApiRequestBody = '''
{
  "total": $total,
  "payment_pos_id": $paymentPosId,
  "payment_method": "$paymentMethod",
  "status": "$status",
  "products": $products
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

  int? transactionsid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.transaction.id''',
      ));
  String? paymentmethod(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.payment_method''',
      ));
  int? paymentposid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.transaction.payment_pos_id''',
      ));
  int? transactionuserid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.transaction.user_id''',
      ));
  int? transacionstotal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.transaction.total''',
      ));
  String? transactionstatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction.status''',
      ));
  String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.created_at''',
      ));
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transaction.updated_at''',
      ));
  List? transactionsdetail(dynamic response) => getJsonField(
        response,
        r'''$.transaction.transaction_details''',
        true,
      ) as List?;
}

class UpdateTransactionCall {
  Future<ApiCallResponse> call({
    int? total,
    int? paymentPosId,
    String? paymentMethod = '',
    String? status = '',
    dynamic productsJson,
    int? transactionId,
    String? token = '',
  }) async {
    final baseUrl = ApiTransaksiGroup.getBaseUrl(
      token: token,
    );

    final products = _serializeJson(productsJson, true);
    final ffApiRequestBody = '''
{
  "total": $total,
  "payment_pos_id": $paymentPosId,
  "payment_method": "$paymentMethod",
  "status": "$status",
  "products": $products
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

class UpdateStatusTransactionsCall {
  Future<ApiCallResponse> call({
    String? status = '',
    int? transactionId,
    String? token = '',
  }) async {
    final baseUrl = ApiTransaksiGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Status Transactions',
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
    String? startDate = '',
    String? endDate = '',
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
      params: {
        'start_date': startDate,
        'end_date': endDate,
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

  String? paymentmethod(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment_method''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  int? paymentposid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.payment_pos_id''',
      ));
  int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total''',
      ));
  int? userid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  int? idtransactions(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updated_at''',
      ));
  List? transactionsdetail(dynamic response) => getJsonField(
        response,
        r'''$.transaction_details''',
        true,
      ) as List?;
  int? transactionsdetailid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.transaction_details[:].id''',
      ));
  int? transactionsdetailproductid(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.transaction_details[:].product_id''',
      ));
  String? transactionsdetailname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction_details[:].name''',
      ));
  String? transactionsdetailunit(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction_details[:].unit''',
      ));
  int? transactionsdetailquantity(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.transaction_details[:].quantity''',
      ));
  String? transactionsdetailprice(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.transaction_details[:].price''',
      ));
  int? transactionsdetailcategoryid(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.transaction_details[:].category_id''',
      ));
  dynamic transactionsdetailproduct(dynamic response) => getJsonField(
        response,
        r'''$.transaction_details[:].product''',
      );
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

/// Start Expense Group Code

class ExpenseGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thetester.me/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetListCall getListCall = GetListCall();
  static AddExpenseCall addExpenseCall = AddExpenseCall();
}

class GetListCall {
  Future<ApiCallResponse> call({
    String? startDate = '',
    String? endDate = '',
    String? token = '',
  }) async {
    final baseUrl = ExpenseGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get List',
      apiUrl: '$baseUrl/expenses',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'start_date': startDate,
        'end_date': endDate,
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

class AddExpenseCall {
  Future<ApiCallResponse> call({
    String? tanggal = '',
    String? waktu = '',
    int? nominal,
    int? categoryExpenseId,
    String? catatan = '',
    String? categoryName = '',
    String? token = '',
  }) async {
    final baseUrl = ExpenseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "tanggal": "$tanggal",
  "waktu": "$waktu",
  "nominal": $nominal,
  "category_expense_id": $categoryExpenseId,
  "category_name": "$categoryName",
  "catatan": "$catatan"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Expense',
      apiUrl: '$baseUrl/expenses',
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

/// End Expense Group Code

/// Start Category Expense Group Code

class CategoryExpenseGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thetester.me/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetCategoryExpenseCall getCategoryExpenseCall =
      GetCategoryExpenseCall();
  static AddCategoryExpenseCall addCategoryExpenseCall =
      AddCategoryExpenseCall();
  static DeleteCall deleteCall = DeleteCall();
  static DeleteCopyCall deleteCopyCall = DeleteCopyCall();
}

class GetCategoryExpenseCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = CategoryExpenseGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Category Expense',
      apiUrl: '$baseUrl/category-expenses',
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

class AddCategoryExpenseCall {
  Future<ApiCallResponse> call({
    String? name = '',
    bool? status,
    String? token = '',
  }) async {
    final baseUrl = CategoryExpenseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "nama": "$name",
  "status": $status
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Category Expense',
      apiUrl: '$baseUrl/category-expenses',
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

class DeleteCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    final baseUrl = CategoryExpenseGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete',
      apiUrl: '$baseUrl/category-expenses/$id',
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

class DeleteCopyCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? name = '',
    bool? status,
    String? token = '',
  }) async {
    final baseUrl = CategoryExpenseGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "nama": "$name",
  "status": $status
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Copy',
      apiUrl: '$baseUrl/category-expenses/$id',
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

/// End Category Expense Group Code

/// Start QRIS Group Code

class QrisGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thetester.me/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static AddQrisCall addQrisCall = AddQrisCall();
  static UpdateQrisCall updateQrisCall = UpdateQrisCall();
  static GetQrisCall getQrisCall = GetQrisCall();
}

class AddQrisCall {
  Future<ApiCallResponse> call({
    String? fotoKtp = '',
    String? fotoUsaha = '',
    String? namaUsaha = '',
    String? namaPemilik = '',
    String? alamatUsaha = '',
    String? nomorTelepon = '',
    String? kategoriUsaha = '',
    String? deskripsiUsaha = '',
    String? rekeningPencairan = '',
    String? nomorRekening = '',
    String? pemilikRekening = '',
    String? linkQris = 'null',
    bool? status,
    String? jenisDokumen = '',
    String? nomorIdentitas = '',
    String? token = '',
  }) async {
    final baseUrl = QrisGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "foto_ktp": "$fotoKtp",
  "foto_usaha": "$fotoUsaha",
  "nama_usaha": "$namaUsaha",
  "nama_pemilik": "$namaPemilik",
  "alamat_usaha": "$alamatUsaha",
  "nomor_telepon": "$nomorTelepon",
  "kategori_usaha": "$kategoriUsaha",
  "deskripsi_usaha": "$deskripsiUsaha",
"jenis_dokumen": "$jenisDokumen",
"nomor_identitas": "$nomorIdentitas",
  "rekening_pencairan": "$rekeningPencairan",
  "nomor_rekening": "$nomorRekening",
  "pemilik_rekening": "$pemilikRekening",
  "link_qris": "$linkQris",
  "status": $status
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Qris',
      apiUrl: '$baseUrl/qris',
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

class UpdateQrisCall {
  Future<ApiCallResponse> call({
    String? fotoKtp = '',
    String? fotoUsaha = '',
    String? namaUsaha = '',
    String? namaPemilik = '',
    String? alamatUsaha = '',
    String? nomorTelepon = '',
    String? kategoriUsaha = '',
    String? deskripsiUsaha = '',
    String? rekeningPencairan = '',
    String? nomorRekening = '',
    String? pemilikRekening = '',
    String? linkQris = 'null',
    bool? status,
    String? jenisDokumen = '',
    String? nomorIdentitas = '',
    String? qrisId = '',
    String? token = '',
  }) async {
    final baseUrl = QrisGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "foto_ktp": "$fotoKtp",
  "foto_usaha": "$fotoUsaha",
  "nama_usaha": "$namaUsaha",
  "nama_pemilik": "$namaPemilik",
  "alamat_usaha": "$alamatUsaha",
  "nomor_telepon": "$nomorTelepon",
  "kategori_usaha": "$kategoriUsaha",
  "deskripsi_usaha": "$deskripsiUsaha",
"jenis_dokumen": "$jenisDokumen",
"nomor_identitas": "$nomorIdentitas",
  "rekening_pencairan": "$rekeningPencairan",
  "nomor_rekening": "$nomorRekening",
  "pemilik_rekening": "$pemilikRekening",
  "link_qris": "$linkQris",
  "status": $status
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Qris ',
      apiUrl: '$baseUrl/qris/$qrisId',
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

class GetQrisCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = QrisGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Qris',
      apiUrl: '$baseUrl/qris',
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

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  String? linkqris(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].link_qris''',
      ));
  String? bank(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].rekening_pencairan''',
      ));
  String? norek(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomor_rekening''',
      ));
  String? atasnama(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].pemilik_rekening''',
      ));
  String? fotoktp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto_ktp''',
      ));
  String? fotousaha(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto_usaha''',
      ));
  String? namausaha(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nama_usaha''',
      ));
  String? namapemilik(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nama_pemilik''',
      ));
  String? alamatusaha(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].alamat_usaha''',
      ));
  String? nomortelephon(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomor_telepon''',
      ));
  String? kategoriusaha(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].kategori_usaha''',
      ));
  String? deskripsiusaha(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].deskripsi_usaha''',
      ));
  String? jenisdokumen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].jenis_dokumen''',
      ));
  String? nomoridentitas(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomor_identitas''',
      ));
  int? qirsid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
}

/// End QRIS Group Code

/// Start Debt Group Code

class DebtGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thetester.me/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetDebtCall getDebtCall = GetDebtCall();
  static AddDebtCall addDebtCall = AddDebtCall();
  static UpdateDebtCall updateDebtCall = UpdateDebtCall();
  static UpdateDebtIsPaidCall updateDebtIsPaidCall = UpdateDebtIsPaidCall();
  static DeleteDebtCall deleteDebtCall = DeleteDebtCall();
}

class GetDebtCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = DebtGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Debt',
      apiUrl: '$baseUrl/debts',
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

class AddDebtCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? phone = '',
    String? jenis = '',
    String? description = '',
    int? amount,
    String? dueDate = '',
    bool? isPaid,
    String? token = '',
  }) async {
    final baseUrl = DebtGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "name": "$name",
  "phone": "$phone",
  "jenis": "$jenis",
  "description": "$description",
  "amount": $amount,
  "due_date": "$dueDate",
  "is_paid": $isPaid
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Debt',
      apiUrl: '$baseUrl/debts',
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

class UpdateDebtCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? phone = '',
    String? jenis = '',
    String? description = '',
    int? amount,
    String? dueDate = '',
    bool? isPaid,
    String? id = '',
    String? token = '',
  }) async {
    final baseUrl = DebtGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "name": "$name",
  "phone": "$phone",
  "jenis": "$jenis",
  "description": "$description",
  "amount": $amount,
  "due_date": "$dueDate",
  "is_paid": $isPaid
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Debt',
      apiUrl: '$baseUrl/debts/$id',
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

class UpdateDebtIsPaidCall {
  Future<ApiCallResponse> call({
    bool? isPaid,
    String? id = '',
    String? token = '',
  }) async {
    final baseUrl = DebtGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "is_paid": $isPaid
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Debt is paid',
      apiUrl: '$baseUrl/debts/$id',
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

class DeleteDebtCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    final baseUrl = DebtGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Debt',
      apiUrl: '$baseUrl/debts$id',
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

/// End Debt Group Code

/// Start Receivable Group Code

class ReceivableGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thetester.me/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetReceivableCall getReceivableCall = GetReceivableCall();
  static AddReceivableCall addReceivableCall = AddReceivableCall();
  static UpdateReceivableCall updateReceivableCall = UpdateReceivableCall();
  static UpdateReceivableIsPaidCall updateReceivableIsPaidCall =
      UpdateReceivableIsPaidCall();
  static DeleteReceivableCall deleteReceivableCall = DeleteReceivableCall();
}

class GetReceivableCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ReceivableGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Receivable',
      apiUrl: '$baseUrl/receivables',
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

class AddReceivableCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? phone = '',
    String? jenis = '',
    String? description = '',
    int? amount,
    String? dueDate = '',
    bool? isPaid,
    String? token = '',
  }) async {
    final baseUrl = ReceivableGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "name": "$name",
  "phone": "$phone",
  "jenis": "$jenis",
  "description": "$description",
  "amount": $amount,
  "due_date": "$dueDate",
  "is_paid": $isPaid
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Receivable',
      apiUrl: '$baseUrl/receivables',
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

class UpdateReceivableCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? phone = '',
    String? jenis = '',
    String? description = '',
    int? amount,
    String? dueDate = '',
    bool? isPaid,
    String? id = '',
    String? token = '',
  }) async {
    final baseUrl = ReceivableGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "name": "$name",
  "phone": "$phone",
  "jenis": "$jenis",
  "description": "$description",
  "amount": $amount,
  "due_date": "$dueDate",
  "is_paid": $isPaid
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Receivable',
      apiUrl: '$baseUrl/receivables/$id',
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

class UpdateReceivableIsPaidCall {
  Future<ApiCallResponse> call({
    bool? isPaid,
    String? id = '',
    String? token = '',
  }) async {
    final baseUrl = ReceivableGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "is_paid": $isPaid
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Receivable is paid ',
      apiUrl: '$baseUrl/receivables/$id',
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

class DeleteReceivableCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    final baseUrl = ReceivableGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Receivable',
      apiUrl: '$baseUrl/receivables$id',
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

/// End Receivable Group Code

/// Start Order Group Code

class OrderGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thetester.me/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static AddCall addCall = AddCall();
  static GetCall getCall = GetCall();
}

class AddCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? phone = '',
    String? email = '',
    int? planId,
    String? planName = '',
    int? amount,
    int? paymentId,
    String? paymentMethod = '',
    int? paymentAmount,
    String? token = '',
  }) async {
    final baseUrl = OrderGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "name": "$name",
  "phone": "$phone",
  "email": "$email",
  "plan_id": $planId,
  "plan_name": "$planName",
  "amount": $amount,
  "payment_id": $paymentId,
  "payment_method": "$paymentMethod"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add',
      apiUrl: '$baseUrl/orders',
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

  int? idorder(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.order.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.order.status''',
      ));
}

class GetCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OrderGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get',
      apiUrl: '$baseUrl/orders',
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

/// End Order Group Code

class ApiDaftarCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    String? passwordConfirmation = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "email": "$email",
  "phone": "$phone",
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
  static int? userid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.id''',
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
  static String? expiredtoken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.expires_at''',
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
      cache: true,
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
  static String? startplan(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.start_plan''',
      ));
  static String? expiredplan(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.expired_plan''',
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

  static dynamic errors(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
  static List<String>? errorsku(dynamic response) => (getJsonField(
        response,
        r'''$.errors.sku''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? errorbarcode(dynamic response) => (getJsonField(
        response,
        r'''$.errors.barcode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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
    String? category = '',
    String? sku = '',
    String? barcode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api Get List Product',
      apiUrl: 'https://thetester.me/api/products',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'category': category,
        'query': query,
        'barcode': barcode,
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
  static List<String>? imageproduct(dynamic response) => (getJsonField(
        response,
        r'''$[:].image_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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

class TesapiCall {
  static Future<ApiCallResponse> call({
    int? total,
    int? paymentPosId,
    dynamic productsJson,
    String? status = '',
    String? paymentMethod = '',
  }) async {
    final products = _serializeJson(productsJson, true);
    final ffApiRequestBody = '''
{
  "total": $total,
  "payment_pos_id": $paymentPosId,
  "payment_method": "$paymentMethod",
  "status": "$status",
  "products": $products
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tesapi',
      apiUrl: 'https://webhook.site/6ee8cb57-5f46-4a07-8cbe-fc8f17841730',
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

class ApiListProductFixedBugCall {
  static Future<ApiCallResponse> call({
    String? category = '',
    String? token = '',
    String? query = '',
    String? barcode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Api List Product Fixed Bug',
      apiUrl: 'https://thetester.me/api/products',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'category': category,
        'query': query,
        'barcode': barcode,
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

class ReportCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? filter = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Report',
      apiUrl: 'https://thetester.me/api/rekappos',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'filter': filter,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? penjualanhariantotal(dynamic response) => (getJsonField(
        response,
        r'''$.penjualan_harian[:].total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class SupportsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Supports',
      apiUrl: 'https://thetester.me/api/supports',
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

  static String? jenis(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].jenis''',
      ));
  static String? contact(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].contact''',
      ));
}

class ApiUpdateUserCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? email = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phone": "$phone",
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Api Update User',
      apiUrl: 'https://thetester.me/api/user/update',
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

class PlansCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Plans',
      apiUrl: 'https://thetester.me/api/plans',
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

class ApiXenditCall {
  static Future<ApiCallResponse> call({
    String? orderid = '',
    String? token = '',
    int? amount,
    String? payerEmail = '',
    String? description = '',
  }) async {
    final ffApiRequestBody = '''
{
  "external_id": "$orderid",
  "amount": $amount,
  "payer_email": "$payerEmail",
  "description": "$description"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Api Xendit',
      apiUrl: 'https://api.xendit.co/v2/invoices',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $token',
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

  static String? invoiceurl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.invoice_url''',
      ));
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
