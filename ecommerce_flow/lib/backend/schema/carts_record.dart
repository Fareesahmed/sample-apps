import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartsRecord extends FirestoreRecord {
  CartsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cart" field.
  CartStruct? _cart;
  CartStruct get cart => _cart ?? CartStruct();
  bool hasCart() => _cart != null;

  void _initializeFields() {
    _cart = CartStruct.maybeFromMap(snapshotData['cart']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carts');

  static Stream<CartsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartsRecord.fromSnapshot(s));

  static Future<CartsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartsRecord.fromSnapshot(s));

  static CartsRecord fromSnapshot(DocumentSnapshot snapshot) => CartsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;

  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'reference': debugSerializeParam(
          reference,
          ParamType.DocumentReference,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=database',
          name: '',
          nullable: false,
        ),
        'cart': debugSerializeParam(
          cart,
          ParamType.DataStruct,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=database',
          name: 'Cart',
          nullable: false,
        )
      };
}

Map<String, dynamic> createCartsRecordData({
  CartStruct? cart,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cart': CartStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "cart" field.
  addCartStructData(firestoreData, cart, 'cart');

  return firestoreData;
}

class CartsRecordDocumentEquality implements Equality<CartsRecord> {
  const CartsRecordDocumentEquality();

  @override
  bool equals(CartsRecord? e1, CartsRecord? e2) {
    return e1?.cart == e2?.cart;
  }

  @override
  int hash(CartsRecord? e) => const ListEquality().hash([e?.cart]);

  @override
  bool isValidKey(Object? o) => o is CartsRecord;
}
