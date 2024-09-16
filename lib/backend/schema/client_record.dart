import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientRecord extends FirestoreRecord {
  ClientRecord._(
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

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "rolee" field.
  String? _rolee;
  String get rolee => _rolee ?? '';
  bool hasRolee() => _rolee != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _userName = snapshotData['user_name'] as String?;
    _location = snapshotData['location'] as String?;
    _uid = snapshotData['uid'] as String?;
    _rolee = snapshotData['rolee'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Client');

  static Stream<ClientRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientRecord.fromSnapshot(s));

  static Future<ClientRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientRecord.fromSnapshot(s));

  static ClientRecord fromSnapshot(DocumentSnapshot snapshot) => ClientRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientRecordData({
  DateTime? createdTime,
  String? userName,
  String? location,
  String? uid,
  String? rolee,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'user_name': userName,
      'location': location,
      'uid': uid,
      'rolee': rolee,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientRecordDocumentEquality implements Equality<ClientRecord> {
  const ClientRecordDocumentEquality();

  @override
  bool equals(ClientRecord? e1, ClientRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.userName == e2?.userName &&
        e1?.location == e2?.location &&
        e1?.uid == e2?.uid &&
        e1?.rolee == e2?.rolee;
  }

  @override
  int hash(ClientRecord? e) => const ListEquality()
      .hash([e?.createdTime, e?.userName, e?.location, e?.uid, e?.rolee]);

  @override
  bool isValidKey(Object? o) => o is ClientRecord;
}
