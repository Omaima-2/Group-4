import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpRecord extends FirestoreRecord {
  SpRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "availability" field.
  bool? _availability;
  bool get availability => _availability ?? false;
  bool hasAvailability() => _availability != null;

  // "rolee" field.
  String? _rolee;
  String get rolee => _rolee ?? '';
  bool hasRolee() => _rolee != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _userName = snapshotData['user_name'] as String?;
    _location = snapshotData['location'] as String?;
    _profession = snapshotData['profession'] as String?;
    _availability = snapshotData['availability'] as bool?;
    _rolee = snapshotData['rolee'] as String?;
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
  DateTime? createdTime,
  String? userName,
  String? location,
  String? profession,
  bool? availability,
  String? rolee,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'user_name': userName,
      'location': location,
      'profession': profession,
      'availability': availability,
      'rolee': rolee,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpRecordDocumentEquality implements Equality<SpRecord> {
  const SpRecordDocumentEquality();

  @override
  bool equals(SpRecord? e1, SpRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.userName == e2?.userName &&
        e1?.location == e2?.location &&
        e1?.profession == e2?.profession &&
        e1?.availability == e2?.availability &&
        e1?.rolee == e2?.rolee;
  }

  @override
  int hash(SpRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.userName,
        e?.location,
        e?.profession,
        e?.availability,
        e?.rolee
      ]);

  @override
  bool isValidKey(Object? o) => o is SpRecord;
}
