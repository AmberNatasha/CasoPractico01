import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Categorias
class CategoriasRecord extends FirestoreRecord {
  CategoriasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "imagenUrl" field.
  String? _imagenUrl;
  String get imagenUrl => _imagenUrl ?? '';
  bool hasImagenUrl() => _imagenUrl != null;

  // "activa" field.
  bool? _activa;
  bool get activa => _activa ?? false;
  bool hasActiva() => _activa != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _imagenUrl = snapshotData['imagenUrl'] as String?;
    _activa = snapshotData['activa'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Categorias');

  static Stream<CategoriasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriasRecord.fromSnapshot(s));

  static Future<CategoriasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoriasRecord.fromSnapshot(s));

  static CategoriasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriasRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createCategoriasRecordData({
  String? nombre,
  String? descripcion,
  String? imagenUrl,
  bool? activa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'imagenUrl': imagenUrl,
      'activa': activa,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriasRecordDocumentEquality implements Equality<CategoriasRecord> {
  const CategoriasRecordDocumentEquality();

  @override
  bool equals(CategoriasRecord? e1, CategoriasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagenUrl == e2?.imagenUrl &&
        e1?.activa == e2?.activa;
  }

  @override
  int hash(CategoriasRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.descripcion, e?.imagenUrl, e?.activa]);

  @override
  bool isValidKey(Object? o) => o is CategoriasRecord;
}
