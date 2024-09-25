// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io'; // Untuk file handling

Future<String> uploadProductImage(String imagePath, String authToken) async {
  if (imagePath.isEmpty) {
    throw ArgumentError("Image path cannot be empty.");
  }

  final String apiUrl = "http://thetester.me/api/upload-product-image";
  var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

  // Menambahkan header otentikasi
  request.headers['Authorization'] = 'Bearer $authToken';

  // Menambahkan file gambar ke permintaan
  request.files.add(await http.MultipartFile.fromPath('image', imagePath));

  // Mengirim permintaan dan menunggu respons
  var response = await request.send();

  if (response.statusCode == 200) {
    var responseBody = await response.stream.bytesToString();
    var jsonResponse = jsonDecode(responseBody);

    // Mengembalikan URL gambar jika tersedia
    return jsonResponse['imageUrl'] ?? '';
  } else {
    throw Exception(
        'Failed to upload image. Status code: ${response.statusCode}');
  }
}
