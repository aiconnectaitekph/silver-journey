import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonaRecord extends FirestoreRecord {
  PersonaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "system_prompt" field.
  String? _systemPrompt;
  String get systemPrompt => _systemPrompt ?? '';
  bool hasSystemPrompt() => _systemPrompt != null;

  // "avatarphoto" field.
  String? _avatarphoto;
  String get avatarphoto => _avatarphoto ?? '';
  bool hasAvatarphoto() => _avatarphoto != null;

  // "voice" field.
  String? _voice;
  String get voice => _voice ?? '';
  bool hasVoice() => _voice != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "who_created" field.
  DocumentReference? _whoCreated;
  DocumentReference? get whoCreated => _whoCreated;
  bool hasWhoCreated() => _whoCreated != null;

  // "created_on" field.
  DateTime? _createdOn;
  DateTime? get createdOn => _createdOn;
  bool hasCreatedOn() => _createdOn != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _systemPrompt = snapshotData['system_prompt'] as String?;
    _avatarphoto = snapshotData['avatarphoto'] as String?;
    _voice = snapshotData['voice'] as String?;
    _language = snapshotData['language'] as String?;
    _whoCreated = snapshotData['who_created'] as DocumentReference?;
    _createdOn = snapshotData['created_on'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('persona');

  static Stream<PersonaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PersonaRecord.fromSnapshot(s));

  static Future<PersonaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PersonaRecord.fromSnapshot(s));

  static PersonaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PersonaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PersonaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PersonaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PersonaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PersonaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPersonaRecordData({
  String? name,
  String? description,
  String? systemPrompt,
  String? avatarphoto,
  String? voice,
  String? language,
  DocumentReference? whoCreated,
  DateTime? createdOn,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'system_prompt': systemPrompt,
      'avatarphoto': avatarphoto,
      'voice': voice,
      'language': language,
      'who_created': whoCreated,
      'created_on': createdOn,
    }.withoutNulls,
  );

  return firestoreData;
}

class PersonaRecordDocumentEquality implements Equality<PersonaRecord> {
  const PersonaRecordDocumentEquality();

  @override
  bool equals(PersonaRecord? e1, PersonaRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.systemPrompt == e2?.systemPrompt &&
        e1?.avatarphoto == e2?.avatarphoto &&
        e1?.voice == e2?.voice &&
        e1?.language == e2?.language &&
        e1?.whoCreated == e2?.whoCreated &&
        e1?.createdOn == e2?.createdOn;
  }

  @override
  int hash(PersonaRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.systemPrompt,
        e?.avatarphoto,
        e?.voice,
        e?.language,
        e?.whoCreated,
        e?.createdOn
      ]);

  @override
  bool isValidKey(Object? o) => o is PersonaRecord;
}
