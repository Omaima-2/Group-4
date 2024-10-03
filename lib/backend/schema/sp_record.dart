import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpRecord extends FirestoreRecord {
  SpRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "availability" field.
  bool? _availability;
  bool get availability => _availability ?? false;
  bool hasAvailability() => _availability != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "Speciality" field.
  String? _speciality;
  String get speciality => _speciality ?? '';
  bool hasSpeciality() => _speciality != null;

  // "rate" field.
  List<double>? _rate;
  List<double> get rate => _rate ?? const [];
  bool hasRate() => _rate != null;

  // "phone_number" field.
  DocumentReference? _phoneNumber;
  DocumentReference? get phoneNumber => _phoneNumber;
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _availability = snapshotData['availability'] as bool?;
    _user = snapshotData['user'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _photo = snapshotData['photo'] as String?;
    _speciality = snapshotData['Speciality'] as String?;
    _rate = getDataList(snapshotData['rate']);
    _phoneNumber = snapshotData['phone_number'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SP');

  static Stream<SpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpRecord.fromSnapshot(s));

  static Future<SpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpRecord.fromSnapshot(s));

  static SpRecord fromSnapshot(DocumentSnapshot snapshot) => SpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpRecordData({
  bool? availability,
  DocumentReference? user,
  String? name,
  String? photo,
  String? speciality,
  DocumentReference? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'availability': availability,
      'user': user,
      'name': name,
      'photo': photo,
      'Speciality': speciality,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpRecordDocumentEquality implements Equality<SpRecord> {
  const SpRecordDocumentEquality();

  @override
  bool equals(SpRecord? e1, SpRecord? e2) {
    const listEquality = ListEquality();
    return e1?.availability == e2?.availability &&
        e1?.user == e2?.user &&
        e1?.name == e2?.name &&
        e1?.photo == e2?.photo &&
        e1?.speciality == e2?.speciality &&
        listEquality.equals(e1?.rate, e2?.rate) &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(SpRecord? e) => const ListEquality().hash([
        e?.availability,
        e?.user,
        e?.name,
        e?.photo,
        e?.speciality,
        e?.rate,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is SpRecord;
}
