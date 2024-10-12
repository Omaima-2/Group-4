import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesRecord extends FirestoreRecord {
  ServicesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "sp" field.
  DocumentReference? _sp;
  DocumentReference? get sp => _sp;
  bool hasSp() => _sp != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _photo = snapshotData['photo'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _price = castToType<int>(snapshotData['price']);
    _sp = snapshotData['sp'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('services');

  static Stream<ServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicesRecord.fromSnapshot(s));

  static Future<ServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicesRecord.fromSnapshot(s));

  static ServicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicesRecordData({
  DocumentReference? user,
  String? name,
  String? description,
  String? photo,
  DateTime? createdTime,
  int? price,
  DocumentReference? sp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'name': name,
      'description': description,
      'photo': photo,
      'created_time': createdTime,
      'price': price,
      'sp': sp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicesRecordDocumentEquality implements Equality<ServicesRecord> {
  const ServicesRecordDocumentEquality();

  @override
  bool equals(ServicesRecord? e1, ServicesRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.photo == e2?.photo &&
        e1?.createdTime == e2?.createdTime &&
        e1?.price == e2?.price &&
        e1?.sp == e2?.sp;
  }

  @override
  int hash(ServicesRecord? e) => const ListEquality().hash([
        e?.user,
        e?.name,
        e?.description,
        e?.photo,
        e?.createdTime,
        e?.price,
        e?.sp
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicesRecord;
}
