// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlansStruct extends BaseStruct {
  PlansStruct({
    int? id,
    String? name,
    int? price,
    String? durasi,
    String? createdAt,
    String? updatedAt,
    int? iklan,
    int? batasProduk,
    String? layananSupport,
    int? qris,
    int? fiturHutang,
    int? diskonPajak,
    int? watermarkStruk,
  })  : _id = id,
        _name = name,
        _price = price,
        _durasi = durasi,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _iklan = iklan,
        _batasProduk = batasProduk,
        _layananSupport = layananSupport,
        _qris = qris,
        _fiturHutang = fiturHutang,
        _diskonPajak = diskonPajak,
        _watermarkStruk = watermarkStruk;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "durasi" field.
  String? _durasi;
  String get durasi => _durasi ?? '';
  set durasi(String? val) => _durasi = val;

  bool hasDurasi() => _durasi != null;

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

  // "iklan" field.
  int? _iklan;
  int get iklan => _iklan ?? 0;
  set iklan(int? val) => _iklan = val;

  void incrementIklan(int amount) => iklan = iklan + amount;

  bool hasIklan() => _iklan != null;

  // "batas_produk" field.
  int? _batasProduk;
  int get batasProduk => _batasProduk ?? 0;
  set batasProduk(int? val) => _batasProduk = val;

  void incrementBatasProduk(int amount) => batasProduk = batasProduk + amount;

  bool hasBatasProduk() => _batasProduk != null;

  // "layanan_support" field.
  String? _layananSupport;
  String get layananSupport => _layananSupport ?? '';
  set layananSupport(String? val) => _layananSupport = val;

  bool hasLayananSupport() => _layananSupport != null;

  // "qris" field.
  int? _qris;
  int get qris => _qris ?? 0;
  set qris(int? val) => _qris = val;

  void incrementQris(int amount) => qris = qris + amount;

  bool hasQris() => _qris != null;

  // "fitur_hutang" field.
  int? _fiturHutang;
  int get fiturHutang => _fiturHutang ?? 0;
  set fiturHutang(int? val) => _fiturHutang = val;

  void incrementFiturHutang(int amount) => fiturHutang = fiturHutang + amount;

  bool hasFiturHutang() => _fiturHutang != null;

  // "diskon_pajak" field.
  int? _diskonPajak;
  int get diskonPajak => _diskonPajak ?? 0;
  set diskonPajak(int? val) => _diskonPajak = val;

  void incrementDiskonPajak(int amount) => diskonPajak = diskonPajak + amount;

  bool hasDiskonPajak() => _diskonPajak != null;

  // "watermark_struk" field.
  int? _watermarkStruk;
  int get watermarkStruk => _watermarkStruk ?? 0;
  set watermarkStruk(int? val) => _watermarkStruk = val;

  void incrementWatermarkStruk(int amount) =>
      watermarkStruk = watermarkStruk + amount;

  bool hasWatermarkStruk() => _watermarkStruk != null;

  static PlansStruct fromMap(Map<String, dynamic> data) => PlansStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        price: castToType<int>(data['price']),
        durasi: data['durasi'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        iklan: castToType<int>(data['iklan']),
        batasProduk: castToType<int>(data['batas_produk']),
        layananSupport: data['layanan_support'] as String?,
        qris: castToType<int>(data['qris']),
        fiturHutang: castToType<int>(data['fitur_hutang']),
        diskonPajak: castToType<int>(data['diskon_pajak']),
        watermarkStruk: castToType<int>(data['watermark_struk']),
      );

  static PlansStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlansStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'price': _price,
        'durasi': _durasi,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'iklan': _iklan,
        'batas_produk': _batasProduk,
        'layanan_support': _layananSupport,
        'qris': _qris,
        'fitur_hutang': _fiturHutang,
        'diskon_pajak': _diskonPajak,
        'watermark_struk': _watermarkStruk,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'durasi': serializeParam(
          _durasi,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'iklan': serializeParam(
          _iklan,
          ParamType.int,
        ),
        'batas_produk': serializeParam(
          _batasProduk,
          ParamType.int,
        ),
        'layanan_support': serializeParam(
          _layananSupport,
          ParamType.String,
        ),
        'qris': serializeParam(
          _qris,
          ParamType.int,
        ),
        'fitur_hutang': serializeParam(
          _fiturHutang,
          ParamType.int,
        ),
        'diskon_pajak': serializeParam(
          _diskonPajak,
          ParamType.int,
        ),
        'watermark_struk': serializeParam(
          _watermarkStruk,
          ParamType.int,
        ),
      }.withoutNulls;

  static PlansStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlansStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        durasi: deserializeParam(
          data['durasi'],
          ParamType.String,
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
        iklan: deserializeParam(
          data['iklan'],
          ParamType.int,
          false,
        ),
        batasProduk: deserializeParam(
          data['batas_produk'],
          ParamType.int,
          false,
        ),
        layananSupport: deserializeParam(
          data['layanan_support'],
          ParamType.String,
          false,
        ),
        qris: deserializeParam(
          data['qris'],
          ParamType.int,
          false,
        ),
        fiturHutang: deserializeParam(
          data['fitur_hutang'],
          ParamType.int,
          false,
        ),
        diskonPajak: deserializeParam(
          data['diskon_pajak'],
          ParamType.int,
          false,
        ),
        watermarkStruk: deserializeParam(
          data['watermark_struk'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PlansStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlansStruct &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        durasi == other.durasi &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        iklan == other.iklan &&
        batasProduk == other.batasProduk &&
        layananSupport == other.layananSupport &&
        qris == other.qris &&
        fiturHutang == other.fiturHutang &&
        diskonPajak == other.diskonPajak &&
        watermarkStruk == other.watermarkStruk;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        price,
        durasi,
        createdAt,
        updatedAt,
        iklan,
        batasProduk,
        layananSupport,
        qris,
        fiturHutang,
        diskonPajak,
        watermarkStruk
      ]);
}

PlansStruct createPlansStruct({
  int? id,
  String? name,
  int? price,
  String? durasi,
  String? createdAt,
  String? updatedAt,
  int? iklan,
  int? batasProduk,
  String? layananSupport,
  int? qris,
  int? fiturHutang,
  int? diskonPajak,
  int? watermarkStruk,
}) =>
    PlansStruct(
      id: id,
      name: name,
      price: price,
      durasi: durasi,
      createdAt: createdAt,
      updatedAt: updatedAt,
      iklan: iklan,
      batasProduk: batasProduk,
      layananSupport: layananSupport,
      qris: qris,
      fiturHutang: fiturHutang,
      diskonPajak: diskonPajak,
      watermarkStruk: watermarkStruk,
    );
