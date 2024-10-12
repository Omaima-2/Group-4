import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrequestRecord extends FirestoreRecord {
  OrequestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "client" field.
  DocumentReference? _client;
  DocumentReference? get client => _client;
  bool hasClient() => _client != null;

  // "sp" field.
  DocumentReference? _sp;
  DocumentReference? get sp => _sp;
  bool hasSp() => _sp != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "clientName" field.
  String? _clientName;
  String get clientName => _clientName ?? '';
  bool hasClientName() => _clientName != null;

  // "clientPhoto" field.
  String? _clientPhoto;
  String get clientPhoto => _clientPhoto ?? '';
  bool hasClientPhoto() => _clientPhoto != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "chanaleID" field.
  String? _chanaleID;
  String get chanaleID => _chanaleID ?? '';
  bool hasChanaleID() => _chanaleID != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _client = snapshotData['client'] as DocumentReference?;
    _sp = snapshotData['sp'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _clientName = snapshotData['clientName'] as String?;
    _clientPhoto = snapshotData['clientPhoto'] as String?;
    _state = snapshotData['state'] as String?;
    _chanaleID = snapshotData['chanaleID'] as String?;
    _price = castToType<int>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Orequest');

  static Stream<OrequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrequestRecord.fromSnapshot(s));

  static Future<OrequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrequestRecord.fromSnapshot(s));

  static OrequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrequestRecordData({
  DocumentReference? client,
  DocumentReference? sp,
  DateTime? time,
  String? clientName,
  String? clientPhoto,
  String? state,
  String? chanaleID,
  int? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'client': client,
      'sp': sp,
      'time': time,
      'clientName': clientName,
      'clientPhoto': clientPhoto,
      'state': state,
      'chanaleID': chanaleID,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrequestRecordDocumentEquality implements Equality<OrequestRecord> {
  const OrequestRecordDocumentEquality();

  @override
  bool equals(OrequestRecord? e1, OrequestRecord? e2) {
    return e1?.client == e2?.client &&
        e1?.sp == e2?.sp &&
        e1?.time == e2?.time &&
        e1?.clientName == e2?.clientName &&
        e1?.clientPhoto == e2?.clientPhoto &&
        e1?.state == e2?.state &&
        e1?.chanaleID == e2?.chanaleID &&
        e1?.price == e2?.price;
  }

  @override
  int hash(OrequestRecord? e) => const ListEquality().hash([
        e?.client,
        e?.sp,
        e?.time,
        e?.clientName,
        e?.clientPhoto,
        e?.state,
        e?.chanaleID,
        e?.price
      ]);

  @override
  bool isValidKey(Object? o) => o is OrequestRecord;
}
