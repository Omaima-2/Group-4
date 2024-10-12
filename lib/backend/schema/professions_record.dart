import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfessionsRecord extends FirestoreRecord {
  ProfessionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Professions');

  static Stream<ProfessionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfessionsRecord.fromSnapshot(s));

  static Future<ProfessionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfessionsRecord.fromSnapshot(s));

  static ProfessionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfessionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfessionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfessionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfessionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfessionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfessionsRecordData({
  String? name,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfessionsRecordDocumentEquality implements Equality<ProfessionsRecord> {
  const ProfessionsRecordDocumentEquality();

  @override
  bool equals(ProfessionsRecord? e1, ProfessionsRecord? e2) {
    return e1?.name == e2?.name && e1?.photo == e2?.photo;
  }

  @override
  int hash(ProfessionsRecord? e) =>
      const ListEquality().hash([e?.name, e?.photo]);

  @override
  bool isValidKey(Object? o) => o is ProfessionsRecord;
}
