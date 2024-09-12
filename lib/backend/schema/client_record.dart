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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

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

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "isClient" field.
  bool? _isClient;
  bool get isClient => _isClient ?? false;
  bool hasIsClient() => _isClient != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _password = snapshotData['password'] as String?;
    _location = snapshotData['location'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _isClient = snapshotData['isClient'] as bool?;
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
  String? email,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? userName,
  String? password,
  String? location,
  String? displayName,
  String? uid,
  bool? isClient,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'user_name': userName,
      'password': password,
      'location': location,
      'display_name': displayName,
      'uid': uid,
      'isClient': isClient,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientRecordDocumentEquality implements Equality<ClientRecord> {
  const ClientRecordDocumentEquality();

  @override
  bool equals(ClientRecord? e1, ClientRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userName == e2?.userName &&
        e1?.password == e2?.password &&
        e1?.location == e2?.location &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.isClient == e2?.isClient;
  }

  @override
  int hash(ClientRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.userName,
        e?.password,
        e?.location,
        e?.displayName,
        e?.uid,
        e?.isClient
      ]);

  @override
  bool isValidKey(Object? o) => o is ClientRecord;
}
