import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
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

  // "precio" field.
  num? _precio;
  num get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  // "imagenUrl" field.
  String? _imagenUrl;
  String get imagenUrl => _imagenUrl ?? '';
  bool hasImagenUrl() => _imagenUrl != null;

  // "disponible" field.
  bool? _disponible;
  bool get disponible => _disponible ?? false;
  bool hasDisponible() => _disponible != null;

  // "categoriaRef" field.
  DocumentReference? _categoriaRef;
  DocumentReference? get categoriaRef => _categoriaRef;
  bool hasCategoriaRef() => _categoriaRef != null;

  // "creadoEn" field.
  DateTime? _creadoEn;
  DateTime? get creadoEn => _creadoEn;
  bool hasCreadoEn() => _creadoEn != null;

  // "creadoPorRef" field.
  DocumentReference? _creadoPorRef;
  DocumentReference? get creadoPorRef => _creadoPorRef;
  bool hasCreadoPorRef() => _creadoPorRef != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _precio = castToType<num>(snapshotData['precio']);
    _imagenUrl = snapshotData['imagenUrl'] as String?;
    _disponible = snapshotData['disponible'] as bool?;
    _categoriaRef = snapshotData['categoriaRef'] as DocumentReference?;
    _creadoEn = snapshotData['creadoEn'] as DateTime?;
    _creadoPorRef = snapshotData['creadoPorRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createProductosRecordData({
  String? nombre,
  String? descripcion,
  num? precio,
  String? imagenUrl,
  bool? disponible,
  DocumentReference? categoriaRef,
  DateTime? creadoEn,
  DocumentReference? creadoPorRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'precio': precio,
      'imagenUrl': imagenUrl,
      'disponible': disponible,
      'categoriaRef': categoriaRef,
      'creadoEn': creadoEn,
      'creadoPorRef': creadoPorRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.precio == e2?.precio &&
        e1?.imagenUrl == e2?.imagenUrl &&
        e1?.disponible == e2?.disponible &&
        e1?.categoriaRef == e2?.categoriaRef &&
        e1?.creadoEn == e2?.creadoEn &&
        e1?.creadoPorRef == e2?.creadoPorRef;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.precio,
        e?.imagenUrl,
        e?.disponible,
        e?.categoriaRef,
        e?.creadoEn,
        e?.creadoPorRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
