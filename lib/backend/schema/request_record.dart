import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestRecord extends FirestoreRecord {
  RequestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "client" field.
  DocumentReference? _client;
  DocumentReference? get client => _client;
  bool hasClient() => _client != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "State" field.
  bool? _state;
  bool get state => _state ?? false;
  bool hasState() => _state != null;

  // "online" field.
  bool? _online;
  bool get online => _online ?? false;
  bool hasOnline() => _online != null;

  // "service" field.
  DocumentReference? _service;
  DocumentReference? get service => _service;
  bool hasService() => _service != null;

  // "service_provider" field.
  DocumentReference? _serviceProvider;
  DocumentReference? get serviceProvider => _serviceProvider;
  bool hasServiceProvider() => _serviceProvider != null;

  void _initializeFields() {
    _client = snapshotData['client'] as DocumentReference?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _state = snapshotData['State'] as bool?;
    _online = snapshotData['online'] as bool?;
    _service = snapshotData['service'] as DocumentReference?;
    _serviceProvider = snapshotData['service_provider'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Request');

  static Stream<RequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestRecord.fromSnapshot(s));

  static Future<RequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestRecord.fromSnapshot(s));

  static RequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestRecordData({
  DocumentReference? client,
  DateTime? timeCreated,
  bool? state,
  bool? online,
  DocumentReference? service,
  DocumentReference? serviceProvider,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'client': client,
      'time_created': timeCreated,
      'State': state,
      'online': online,
      'service': service,
      'service_provider': serviceProvider,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestRecordDocumentEquality implements Equality<RequestRecord> {
  const RequestRecordDocumentEquality();

  @override
  bool equals(RequestRecord? e1, RequestRecord? e2) {
    return e1?.client == e2?.client &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.state == e2?.state &&
        e1?.online == e2?.online &&
        e1?.service == e2?.service &&
        e1?.serviceProvider == e2?.serviceProvider;
  }

  @override
  int hash(RequestRecord? e) => const ListEquality().hash([
        e?.client,
        e?.timeCreated,
        e?.state,
        e?.online,
        e?.service,
        e?.serviceProvider
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestRecord;
}
