import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cart = prefs
              .getStringList('ff_cart')
              ?.map((x) {
                try {
                  return CartItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cart;
    });
    _safeInit(() {
      _apilogin = prefs.getString('ff_apilogin') ?? _apilogin;
    });
    _safeInit(() {
      _userid = prefs.getString('ff_userid') ?? _userid;
    });
    _safeInit(() {
      _paymentmethod = prefs
              .getStringList('ff_paymentmethod')
              ?.map((x) {
                try {
                  return PaymentMethodStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _paymentmethod;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CartItemStruct> _cart = [];
  List<CartItemStruct> get cart => _cart;
  set cart(List<CartItemStruct> value) {
    _cart = value;
    prefs.setStringList('ff_cart', value.map((x) => x.serialize()).toList());
  }

  void addToCart(CartItemStruct value) {
    cart.add(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void removeFromCart(CartItemStruct value) {
    cart.remove(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void updateCartAtIndex(
    int index,
    CartItemStruct Function(CartItemStruct) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCart(int index, CartItemStruct value) {
    cart.insert(index, value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.serialize()).toList());
  }

  String _apilogin = '';
  String get apilogin => _apilogin;
  set apilogin(String value) {
    _apilogin = value;
    prefs.setString('ff_apilogin', value);
  }

  String _userid = '';
  String get userid => _userid;
  set userid(String value) {
    _userid = value;
    prefs.setString('ff_userid', value);
  }

  String _imageurl = '';
  String get imageurl => _imageurl;
  set imageurl(String value) {
    _imageurl = value;
  }

  List<PaymentMethodStruct> _paymentmethod = [];
  List<PaymentMethodStruct> get paymentmethod => _paymentmethod;
  set paymentmethod(List<PaymentMethodStruct> value) {
    _paymentmethod = value;
    prefs.setStringList(
        'ff_paymentmethod', value.map((x) => x.serialize()).toList());
  }

  void addToPaymentmethod(PaymentMethodStruct value) {
    paymentmethod.add(value);
    prefs.setStringList(
        'ff_paymentmethod', _paymentmethod.map((x) => x.serialize()).toList());
  }

  void removeFromPaymentmethod(PaymentMethodStruct value) {
    paymentmethod.remove(value);
    prefs.setStringList(
        'ff_paymentmethod', _paymentmethod.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPaymentmethod(int index) {
    paymentmethod.removeAt(index);
    prefs.setStringList(
        'ff_paymentmethod', _paymentmethod.map((x) => x.serialize()).toList());
  }

  void updatePaymentmethodAtIndex(
    int index,
    PaymentMethodStruct Function(PaymentMethodStruct) updateFn,
  ) {
    paymentmethod[index] = updateFn(_paymentmethod[index]);
    prefs.setStringList(
        'ff_paymentmethod', _paymentmethod.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPaymentmethod(int index, PaymentMethodStruct value) {
    paymentmethod.insert(index, value);
    prefs.setStringList(
        'ff_paymentmethod', _paymentmethod.map((x) => x.serialize()).toList());
  }

  String _pilihpayment = '';
  String get pilihpayment => _pilihpayment;
  set pilihpayment(String value) {
    _pilihpayment = value;
  }

  String _resetcode = '';
  String get resetcode => _resetcode;
  set resetcode(String value) {
    _resetcode = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
