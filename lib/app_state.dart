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
      _userid = prefs.getString('ff_userid') ?? _userid;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_SettingStruk')) {
        try {
          final serializedData = prefs.getString('ff_SettingStruk') ?? '{}';
          _SettingStruk = SettingStrukStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _uploudedimage = prefs.getString('ff_uploudedimage') ?? _uploudedimage;
    });
    _safeInit(() {
      _categoryexpenslocal = prefs
              .getStringList('ff_categoryexpenslocal')
              ?.map((x) {
                try {
                  return CategoryexpenslocalStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _categoryexpenslocal;
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
  }

  void addToCart(CartItemStruct value) {
    cart.add(value);
  }

  void removeFromCart(CartItemStruct value) {
    cart.remove(value);
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
  }

  void updateCartAtIndex(
    int index,
    CartItemStruct Function(CartItemStruct) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
  }

  void insertAtIndexInCart(int index, CartItemStruct value) {
    cart.insert(index, value);
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

  PaymentMethodStruct _paymentmethod = PaymentMethodStruct();
  PaymentMethodStruct get paymentmethod => _paymentmethod;
  set paymentmethod(PaymentMethodStruct value) {
    _paymentmethod = value;
  }

  void updatePaymentmethodStruct(Function(PaymentMethodStruct) updateFn) {
    updateFn(_paymentmethod);
  }

  CategoriesStruct _selectcategory = CategoriesStruct();
  CategoriesStruct get selectcategory => _selectcategory;
  set selectcategory(CategoriesStruct value) {
    _selectcategory = value;
  }

  void updateSelectcategoryStruct(Function(CategoriesStruct) updateFn) {
    updateFn(_selectcategory);
  }

  String _filtercategory = '';
  String get filtercategory => _filtercategory;
  set filtercategory(String value) {
    _filtercategory = value;
  }

  FiltertransactionsStruct _filtertransactionsdate = FiltertransactionsStruct();
  FiltertransactionsStruct get filtertransactionsdate =>
      _filtertransactionsdate;
  set filtertransactionsdate(FiltertransactionsStruct value) {
    _filtertransactionsdate = value;
  }

  void updateFiltertransactionsdateStruct(
      Function(FiltertransactionsStruct) updateFn) {
    updateFn(_filtertransactionsdate);
  }

  CategoryExpenseStruct _selectcategoryexpense = CategoryExpenseStruct();
  CategoryExpenseStruct get selectcategoryexpense => _selectcategoryexpense;
  set selectcategoryexpense(CategoryExpenseStruct value) {
    _selectcategoryexpense = value;
  }

  void updateSelectcategoryexpenseStruct(
      Function(CategoryExpenseStruct) updateFn) {
    updateFn(_selectcategoryexpense);
  }

  String _filterreport = 'minggu_ini';
  String get filterreport => _filterreport;
  set filterreport(String value) {
    _filterreport = value;
  }

  SettingStrukStruct _SettingStruk = SettingStrukStruct();
  SettingStrukStruct get SettingStruk => _SettingStruk;
  set SettingStruk(SettingStrukStruct value) {
    _SettingStruk = value;
    prefs.setString('ff_SettingStruk', value.serialize());
  }

  void updateSettingStrukStruct(Function(SettingStrukStruct) updateFn) {
    updateFn(_SettingStruk);
    prefs.setString('ff_SettingStruk', _SettingStruk.serialize());
  }

  String _SelectJenisDebt =
      'https://thetester.me/storage/product_images/xs8w0LCXrFg1N7BLdlyDSK1LHi5xEqd09Obhv2iF.png';
  String get SelectJenisDebt => _SelectJenisDebt;
  set SelectJenisDebt(String value) {
    _SelectJenisDebt = value;
  }

  String _uploudedimage = '';
  String get uploudedimage => _uploudedimage;
  set uploudedimage(String value) {
    _uploudedimage = value;
    prefs.setString('ff_uploudedimage', value);
  }

  List<CategoryexpenslocalStruct> _categoryexpenslocal = [
    CategoryexpenslocalStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1111\",\"user_id\":\"0\",\"nama\":\"Belanja Kebutuhan\",\"status\":\"1\",\"created_at\":\"\",\"updated_at\":\"\"}')),
    CategoryexpenslocalStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"user_id\":\"0\",\"nama\":\"Hello World\",\"status\":\"0\",\"created_at\":\"Hello World\",\"updated_at\":\"Hello World\"}')),
    CategoryexpenslocalStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"user_id\":\"0\",\"nama\":\"Hello World\",\"status\":\"0\",\"created_at\":\"Hello World\",\"updated_at\":\"Hello World\"}'))
  ];
  List<CategoryexpenslocalStruct> get categoryexpenslocal =>
      _categoryexpenslocal;
  set categoryexpenslocal(List<CategoryexpenslocalStruct> value) {
    _categoryexpenslocal = value;
    prefs.setStringList(
        'ff_categoryexpenslocal', value.map((x) => x.serialize()).toList());
  }

  void addToCategoryexpenslocal(CategoryexpenslocalStruct value) {
    categoryexpenslocal.add(value);
    prefs.setStringList('ff_categoryexpenslocal',
        _categoryexpenslocal.map((x) => x.serialize()).toList());
  }

  void removeFromCategoryexpenslocal(CategoryexpenslocalStruct value) {
    categoryexpenslocal.remove(value);
    prefs.setStringList('ff_categoryexpenslocal',
        _categoryexpenslocal.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCategoryexpenslocal(int index) {
    categoryexpenslocal.removeAt(index);
    prefs.setStringList('ff_categoryexpenslocal',
        _categoryexpenslocal.map((x) => x.serialize()).toList());
  }

  void updateCategoryexpenslocalAtIndex(
    int index,
    CategoryexpenslocalStruct Function(CategoryexpenslocalStruct) updateFn,
  ) {
    categoryexpenslocal[index] = updateFn(_categoryexpenslocal[index]);
    prefs.setStringList('ff_categoryexpenslocal',
        _categoryexpenslocal.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCategoryexpenslocal(
      int index, CategoryexpenslocalStruct value) {
    categoryexpenslocal.insert(index, value);
    prefs.setStringList('ff_categoryexpenslocal',
        _categoryexpenslocal.map((x) => x.serialize()).toList());
  }

  FilterreportdateStruct _filterreportdate = FilterreportdateStruct();
  FilterreportdateStruct get filterreportdate => _filterreportdate;
  set filterreportdate(FilterreportdateStruct value) {
    _filterreportdate = value;
  }

  void updateFilterreportdateStruct(Function(FilterreportdateStruct) updateFn) {
    updateFn(_filterreportdate);
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
