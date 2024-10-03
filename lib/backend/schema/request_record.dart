import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

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

  // "service_provider" field.
  DocumentReference? _serviceProvider;
  DocumentReference? get serviceProvider => _serviceProvider;
  bool hasServiceProvider() => _serviceProvider != null;

  // "services" field.
  List<DocumentReference>? _services;
  List<DocumentReference> get services => _services ?? const [];
  bool hasServices() => _services != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "clientName" field.
  String? _clientName;
  String get clientName => _clientName ?? '';
  bool hasClientName() => _clientName != null;

  // "clientPhoto" field.
  String? _clientPhoto;
  String get clientPhoto => _clientPhoto ?? '';
  bool hasClientPhoto() => _clientPhoto != null;

  void _initializeFields() {
    _client = snapshotData['client'] as DocumentReference?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _state = snapshotData['State'] as bool?;
    _serviceProvider = snapshotData['service_provider'] as DocumentReference?;
    _services = getDataList(snapshotData['services']);
    _price = castToType<int>(snapshotData['price']);
    _clientName = snapshotData['clientName'] as String?;
    _clientPhoto = snapshotData['clientPhoto'] as String?;
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
  DocumentReference? serviceProvider,
  int? price,
  String? clientName,
  String? clientPhoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'client': client,
      'time_created': timeCreated,
      'State': state,
      'service_provider': serviceProvider,
      'price': price,
      'clientName': clientName,
      'clientPhoto': clientPhoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestRecordDocumentEquality implements Equality<RequestRecord> {
  const RequestRecordDocumentEquality();

  @override
  bool equals(RequestRecord? e1, RequestRecord? e2) {
    const listEquality = ListEquality();
    return e1?.client == e2?.client &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.state == e2?.state &&
        e1?.serviceProvider == e2?.serviceProvider &&
        listEquality.equals(e1?.services, e2?.services) &&
        e1?.price == e2?.price &&
        e1?.clientName == e2?.clientName &&
        e1?.clientPhoto == e2?.clientPhoto;
  }

  @override
  int hash(RequestRecord? e) => const ListEquality().hash([
        e?.client,
        e?.timeCreated,
        e?.state,
        e?.serviceProvider,
        e?.services,
        e?.price,
        e?.clientName,
        e?.clientPhoto
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestRecord;
}
