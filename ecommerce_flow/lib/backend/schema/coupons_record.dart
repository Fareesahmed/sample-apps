import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CouponsRecord extends FirestoreRecord {
  CouponsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "used_by" field.
  List<DocumentReference>? _usedBy;
  List<DocumentReference> get usedBy => _usedBy ?? const [];
  bool hasUsedBy() => _usedBy != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  bool hasValue() => _value != null;

  // "expirationDate" field.
  DateTime? _expirationDate;
  DateTime? get expirationDate => _expirationDate;
  bool hasExpirationDate() => _expirationDate != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "applicableCategories" field.
  List<String>? _applicableCategories;
  List<String> get applicableCategories => _applicableCategories ?? const [];
  bool hasApplicableCategories() => _applicableCategories != null;

  // "discount_type" field.
  DiscountType? _discountType;
  DiscountType? get discountType => _discountType;
  bool hasDiscountType() => _discountType != null;

  void _initializeFields() {
    _code = snapshotData['code'] as String?;
    _usedBy = getDataList(snapshotData['used_by']);
    _value = castToType<double>(snapshotData['value']);
    _expirationDate = snapshotData['expirationDate'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _applicableCategories = getDataList(snapshotData['applicableCategories']);
    _discountType =
        deserializeEnum<DiscountType>(snapshotData['discount_type']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coupons');

  static Stream<CouponsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CouponsRecord.fromSnapshot(s));

  static Future<CouponsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CouponsRecord.fromSnapshot(s));

  static CouponsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CouponsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CouponsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CouponsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CouponsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CouponsRecord &&
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
        'code': debugSerializeParam(
          code,
          ParamType.String,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=database',
          name: 'String',
          nullable: false,
        ),
        'used_by': debugSerializeParam(
          usedBy,
          ParamType.DocumentReference,
          isList: true,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=database',
          name: 'users',
          nullable: false,
        ),
        'value': debugSerializeParam(
          value,
          ParamType.double,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=database',
          name: 'double',
          nullable: false,
        ),
        'expirationDate': debugSerializeParam(
          expirationDate,
          ParamType.DateTime,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=database',
          name: 'DateTime',
          nullable: true,
        ),
        'description': debugSerializeParam(
          description,
          ParamType.String,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=database',
          name: 'String',
          nullable: false,
        ),
        'applicableCategories': debugSerializeParam(
          applicableCategories,
          ParamType.String,
          isList: true,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=database',
          name: 'String',
          nullable: false,
        ),
        'discount_type': debugSerializeParam(
          discountType,
          ParamType.Enum,
          link:
              'https://beta.flutterflow.io/project/ecommerce-flow-32g10t?tab=database',
          name: 'discountType',
          nullable: true,
        )
      };
}

Map<String, dynamic> createCouponsRecordData({
  String? code,
  double? value,
  DateTime? expirationDate,
  String? description,
  DiscountType? discountType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
      'value': value,
      'expirationDate': expirationDate,
      'description': description,
      'discount_type': discountType,
    }.withoutNulls,
  );

  return firestoreData;
}

class CouponsRecordDocumentEquality implements Equality<CouponsRecord> {
  const CouponsRecordDocumentEquality();

  @override
  bool equals(CouponsRecord? e1, CouponsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.code == e2?.code &&
        listEquality.equals(e1?.usedBy, e2?.usedBy) &&
        e1?.value == e2?.value &&
        e1?.expirationDate == e2?.expirationDate &&
        e1?.description == e2?.description &&
        listEquality.equals(
            e1?.applicableCategories, e2?.applicableCategories) &&
        e1?.discountType == e2?.discountType;
  }

  @override
  int hash(CouponsRecord? e) => const ListEquality().hash([
        e?.code,
        e?.usedBy,
        e?.value,
        e?.expirationDate,
        e?.description,
        e?.applicableCategories,
        e?.discountType
      ]);

  @override
  bool isValidKey(Object? o) => o is CouponsRecord;
}
