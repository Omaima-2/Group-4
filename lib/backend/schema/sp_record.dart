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

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "availability" field.
  bool? _availability;
  bool get availability => _availability ?? false;
  bool hasAvailability() => _availability != null;

  // "isClint" field.
  bool? _isClint;
  bool get isClint => _isClint ?? false;
  bool hasIsClint() => _isClint != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _password = snapshotData['password'] as String?;
    _location = snapshotData['location'] as String?;
    _profession = snapshotData['profession'] as String?;
    _availability = snapshotData['availability'] as bool?;
    _isClint = snapshotData['isClint'] as bool?;
    _displayName = snapshotData['display_name'] as String?;
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
  String? email,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? userName,
  String? password,
  String? location,
  String? profession,
  bool? availability,
  bool? isClint,
  String? displayName,
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
      'profession': profession,
      'availability': availability,
      'isClint': isClint,
      'display_name': displayName,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpRecordDocumentEquality implements Equality<SpRecord> {
  const SpRecordDocumentEquality();

  @override
  bool equals(SpRecord? e1, SpRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userName == e2?.userName &&
        e1?.password == e2?.password &&
        e1?.location == e2?.location &&
        e1?.profession == e2?.profession &&
        e1?.availability == e2?.availability &&
        e1?.isClint == e2?.isClint &&
        e1?.displayName == e2?.displayName;
  }

  @override
  int hash(SpRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.userName,
        e?.password,
        e?.location,
        e?.profession,
        e?.availability,
        e?.isClint,
        e?.displayName
      ]);

  @override
  bool isValidKey(Object? o) => o is SpRecord;
}
