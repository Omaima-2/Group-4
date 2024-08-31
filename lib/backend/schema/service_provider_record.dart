import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceProviderRecord extends FirestoreRecord {
  ServiceProviderRecord._(
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
  List<String>? _profession;
  List<String> get profession => _profession ?? const [];
  bool hasProfession() => _profession != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _password = snapshotData['password'] as String?;
    _location = snapshotData['location'] as String?;
    _profession = getDataList(snapshotData['profession']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ServiceProvider');

  static Stream<ServiceProviderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiceProviderRecord.fromSnapshot(s));

  static Future<ServiceProviderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiceProviderRecord.fromSnapshot(s));

  static ServiceProviderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiceProviderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiceProviderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiceProviderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiceProviderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiceProviderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiceProviderRecordData({
  String? email,
  String? photoUrl,
  String? phoneNumber,
  String? userName,
  String? password,
  String? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'user_name': userName,
      'password': password,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiceProviderRecordDocumentEquality
    implements Equality<ServiceProviderRecord> {
  const ServiceProviderRecordDocumentEquality();

  @override
  bool equals(ServiceProviderRecord? e1, ServiceProviderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userName == e2?.userName &&
        e1?.password == e2?.password &&
        e1?.location == e2?.location &&
        listEquality.equals(e1?.profession, e2?.profession);
  }

  @override
  int hash(ServiceProviderRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.phoneNumber,
        e?.userName,
        e?.password,
        e?.location,
        e?.profession
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiceProviderRecord;
}
