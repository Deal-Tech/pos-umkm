import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

int calaculateTotalCartPrice(List<CartItemStruct> items) {
  // jumlahkan semua hasil dari price*quantity tiap item pada cart_item , kembalikan berupa total harga dari semua item
  int total = 0;
  for (var item in items) {
    total += item.price * item.quantity;
  }
  return total;
}

int? totalperlistitemproduct(TransactionDetailsStruct? productdetail) {
  // sum quantity x price
  if (productdetail != null) {
    return productdetail.quantity * productdetail.price;
  } else {
    return null;
  }
}
