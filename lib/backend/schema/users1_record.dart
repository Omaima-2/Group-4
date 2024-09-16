import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Users1Record extends FirestoreRecord {
  Users1Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "clientId" field.
  DocumentReference? _clientId;
  DocumentReference? get clientId => _clientId;
  bool hasClientId() => _clientId != null;

  // "SPid" field.
  DocumentReference? _sPid;
  DocumentReference? get sPid => _sPid;
  bool hasSPid() => _sPid != null;

  // "role" field.
  Rolee? _role;
  Rolee? get role => _role;
  bool hasRole() => _role != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _uid = snapshotData['uid'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _clientId = snapshotData['clientId'] as DocumentReference?;
    _sPid = snapshotData['SPid'] as DocumentReference?;
    _role = deserializeEnum<Rolee>(snapshotData['role']);
    _displayName = snapshotData['display_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users1');

  static Stream<Users1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Users1Record.fromSnapshot(s));

  static Future<Users1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Users1Record.fromSnapshot(s));

  static Users1Record fromSnapshot(DocumentSnapshot snapshot) => Users1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Users1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Users1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Users1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Users1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsers1RecordData({
  String? email,
  String? password,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? uid,
  LatLng? location,
  DocumentReference? clientId,
  DocumentReference? sPid,
  Rolee? role,
  String? displayName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'password': password,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'uid': uid,
      'location': location,
      'clientId': clientId,
      'SPid': sPid,
      'role': role,
      'display_name': displayName,
    }.withoutNulls,
  );

  return firestoreData;
}

class Users1RecordDocumentEquality implements Equality<Users1Record> {
  const Users1RecordDocumentEquality();

  @override
  bool equals(Users1Record? e1, Users1Record? e2) {
    return e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.uid == e2?.uid &&
        e1?.location == e2?.location &&
        e1?.clientId == e2?.clientId &&
        e1?.sPid == e2?.sPid &&
        e1?.role == e2?.role &&
        e1?.displayName == e2?.displayName;
  }

  @override
  int hash(Users1Record? e) => const ListEquality().hash([
        e?.email,
        e?.password,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.uid,
        e?.location,
        e?.clientId,
        e?.sPid,
        e?.role,
        e?.displayName
      ]);

  @override
  bool isValidKey(Object? o) => o is Users1Record;
}
