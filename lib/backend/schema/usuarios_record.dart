import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "contrasena" field.
  String? _contrasena;
  String get contrasena => _contrasena ?? '';
  bool hasContrasena() => _contrasena != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _correo = snapshotData['correo'] as String?;
    _contrasena = snapshotData['contrasena'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createUsuariosRecordData({
  String? nombre,
  String? correo,
  String? contrasena,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'correo': correo,
      'contrasena': contrasena,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.correo == e2?.correo &&
        e1?.contrasena == e2?.contrasena;
  }

  @override
  int hash(UsuariosRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.correo, e?.contrasena]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
