// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsStruct extends FFFirebaseStruct {
  ItemsStruct({
    String? productId,
    String? name,
    int? quantity,
    double? subtotal,
    String? brand,
    String? productImg,
    ColorsStruct? color,
    String? size,
    PriceStruct? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _name = name,
        _quantity = quantity,
        _subtotal = subtotal,
        _brand = brand,
        _productImg = productImg,
        _color = color,
        _size = size,
        _price = price,
        super(firestoreUtilData);

  // "productId" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) {
    _productId = val;
    debugLog();
  }

  bool hasProductId() => _productId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) {
    _name = val;
    debugLog();
  }

  bool hasName() => _name != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) {
    _quantity = val;
    debugLog();
  }

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  set subtotal(double? val) {
    _subtotal = val;
    debugLog();
  }

  void incrementSubtotal(double amount) => subtotal = subtotal + amount;

  bool hasSubtotal() => _subtotal != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) {
    _brand = val;
    debugLog();
  }

  bool hasBrand() => _brand != null;

  // "productImg" field.
  String? _productImg;
  String get productImg => _productImg ?? '';
  set productImg(String? val) {
    _productImg = val;
    debugLog();
  }

  bool hasProductImg() => _productImg != null;

  // "color" field.
  ColorsStruct? _color;
  ColorsStruct get color => (_color ?? ColorsStruct())..logger = logger;
  set color(ColorsStruct? val) {
    _color = val;
    debugLog();
  }

  void updateColor(Function(ColorsStruct) updateFn) {
    updateFn(_color ??= ColorsStruct());
    debugLog();
  }

  bool hasColor() => _color != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  set size(String? val) {
    _size = val;
    debugLog();
  }

  bool hasSize() => _size != null;

  // "price" field.
  PriceStruct? _price;
  PriceStruct get price => (_price ?? PriceStruct())..logger = logger;
  set price(PriceStruct? val) {
    _price = val;
    debugLog();
  }

  void updatePrice(Function(PriceStruct) updateFn) {
    updateFn(_price ??= PriceStruct());
    debugLog();
  }

  bool hasPrice() => _price != null;

  static ItemsStruct fromMap(Map<String, dynamic> data) => ItemsStruct(
        productId: data['productId'] as String?,
        name: data['name'] as String?,
        quantity: castToType<int>(data['quantity']),
        subtotal: castToType<double>(data['subtotal']),
        brand: data['brand'] as String?,
        productImg: data['productImg'] as String?,
        color: ColorsStruct.maybeFromMap(data['color']),
        size: data['size'] as String?,
        price: PriceStruct.maybeFromMap(data['price']),
      );

  static ItemsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ItemsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'productId': _productId,
        'name': _name,
        'quantity': _quantity,
        'subtotal': _subtotal,
        'brand': _brand,
        'productImg': _productImg,
        'color': _color?.toMap(),
        'size': _size,
        'price': _price?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productId': serializeParam(
          _productId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.double,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'productImg': serializeParam(
          _productImg,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.DataStruct,
        ),
        'size': serializeParam(
          _size,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ItemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemsStruct(
        productId: deserializeParam(
          data['productId'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.double,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        productImg: deserializeParam(
          data['productImg'],
          ParamType.String,
          false,
        ),
        color: deserializeStructParam(
          data['color'],
          ParamType.DataStruct,
          false,
          structBuilder: ColorsStruct.fromSerializableMap,
        ),
        size: deserializeParam(
          data['size'],
          ParamType.String,
          false,
        ),
        price: deserializeStructParam(
          data['price'],
          ParamType.DataStruct,
          false,
          structBuilder: PriceStruct.fromSerializableMap,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'productId': debugSerializeParam(
          productId,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'name': debugSerializeParam(
          name,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'quantity': debugSerializeParam(
          quantity,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'subtotal': debugSerializeParam(
          subtotal,
          ParamType.double,
          name: 'double',
          nullable: false,
        ),
        'brand': debugSerializeParam(
          brand,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'productImg': debugSerializeParam(
          productImg,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'color': debugSerializeParam(
          _color,
          ParamType.DataStruct,
          name: 'colors',
          nullable: false,
        ),
        'size': debugSerializeParam(
          size,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'price': debugSerializeParam(
          _price,
          ParamType.DataStruct,
          name: 'price',
          nullable: false,
        ),
      };

  @override
  String toString() => 'ItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemsStruct &&
        productId == other.productId &&
        name == other.name &&
        quantity == other.quantity &&
        subtotal == other.subtotal &&
        brand == other.brand &&
        productImg == other.productImg &&
        color == other.color &&
        size == other.size &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([
        productId,
        name,
        quantity,
        subtotal,
        brand,
        productImg,
        color,
        size,
        price
      ]);
}

ItemsStruct createItemsStruct({
  String? productId,
  String? name,
  int? quantity,
  double? subtotal,
  String? brand,
  String? productImg,
  ColorsStruct? color,
  String? size,
  PriceStruct? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ItemsStruct(
      productId: productId,
      name: name,
      quantity: quantity,
      subtotal: subtotal,
      brand: brand,
      productImg: productImg,
      color: color ?? (clearUnsetFields ? ColorsStruct() : null),
      size: size,
      price: price ?? (clearUnsetFields ? PriceStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ItemsStruct? updateItemsStruct(
  ItemsStruct? items, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    items
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addItemsStructData(
  Map<String, dynamic> firestoreData,
  ItemsStruct? items,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (items == null) {
    return;
  }
  if (items.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && items.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final itemsData = getItemsFirestoreData(items, forFieldValue);
  final nestedData = itemsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = items.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getItemsFirestoreData(
  ItemsStruct? items, [
  bool forFieldValue = false,
]) {
  if (items == null) {
    return {};
  }
  final firestoreData = mapToFirestore(items.toMap());

  // Handle nested data for "color" field.
  addColorsStructData(
    firestoreData,
    items.hasColor() ? items.color : null,
    'color',
    forFieldValue,
  );

  // Handle nested data for "price" field.
  addPriceStructData(
    firestoreData,
    items.hasPrice() ? items.price : null,
    'price',
    forFieldValue,
  );

  // Add any Firestore field values
  items.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getItemsListFirestoreData(
  List<ItemsStruct>? itemss,
) =>
    itemss?.map((e) => getItemsFirestoreData(e, true)).toList() ?? [];
