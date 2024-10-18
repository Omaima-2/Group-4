import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnlineRequestRecord extends FirestoreRecord {
  OnlineRequestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "client" field.
  DocumentReference? _client;
  DocumentReference? get client => _client;
  bool hasClient() => _client != null;

  // "state" field.
  bool? _state;
  bool get state => _state ?? false;
  bool hasState() => _state != null;

  // "service_provider" field.
  DocumentReference? _serviceProvider;
  DocumentReference? get serviceProvider => _serviceProvider;
  bool hasServiceProvider() => _serviceProvider != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "client_name" field.
  String? _clientName;
  String get clientName => _clientName ?? '';
  bool hasClientName() => _clientName != null;

  void _initializeFields() {
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _client = snapshotData['client'] as DocumentReference?;
    _state = snapshotData['state'] as bool?;
    _serviceProvider = snapshotData['service_provider'] as DocumentReference?;
    _price = castToType<int>(snapshotData['price']);
    _clientName = snapshotData['client_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('OnlineRequest');

  static Stream<OnlineRequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OnlineRequestRecord.fromSnapshot(s));

  static Future<OnlineRequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OnlineRequestRecord.fromSnapshot(s));

  static OnlineRequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OnlineRequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OnlineRequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OnlineRequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OnlineRequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OnlineRequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOnlineRequestRecordData({
  DateTime? timeCreated,
  DocumentReference? client,
  bool? state,
  DocumentReference? serviceProvider,
  int? price,
  String? clientName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time_created': timeCreated,
      'client': client,
      'state': state,
      'service_provider': serviceProvider,
      'price': price,
      'client_name': clientName,
    }.withoutNulls,
  );

  return firestoreData;
}

class OnlineRequestRecordDocumentEquality
    implements Equality<OnlineRequestRecord> {
  const OnlineRequestRecordDocumentEquality();

  @override
  bool equals(OnlineRequestRecord? e1, OnlineRequestRecord? e2) {
    return e1?.timeCreated == e2?.timeCreated &&
        e1?.client == e2?.client &&
        e1?.state == e2?.state &&
        e1?.serviceProvider == e2?.serviceProvider &&
        e1?.price == e2?.price &&
        e1?.clientName == e2?.clientName;
  }

  @override
  int hash(OnlineRequestRecord? e) => const ListEquality().hash([
        e?.timeCreated,
        e?.client,
        e?.state,
        e?.serviceProvider,
        e?.price,
        e?.clientName
      ]);

  @override
  bool isValidKey(Object? o) => o is OnlineRequestRecord;
}
