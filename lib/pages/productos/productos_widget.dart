import '/components/product_card3_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'productos_model.dart';
export 'productos_model.dart';

/// Diseña una pantalla móvil llamada “Productos” para una tienda online de
/// productos de cuidado personal llamada “Esencia”.
///
/// Usa una cuadrícula GridView de dos columnas, con tarjetas de producto
/// claras y fáciles de recorrer. La pantalla debe recibir la categoría
/// seleccionada desde la pantalla “Categorías” y consultar Firestore.
///
/// Mantén la misma identidad visual que Login y Categorías:
/// - Fondo marfil cálido (#F7F2ED), acentos vino suave (#8A4357), rosa
/// empolvado (#D9A8AA), salvia (#8B9A83) y texto carbón cálido (#383333).
/// - Tarjetas en tonos claros, esquinas redondeadas, sombras suaves y botones
/// principales color vino.
/// - Tipografía moderna, legible y consistente. Evita el blanco puro como
/// fondo dominante.
/// - Todas las fotos deben mostrar exclusivamente productos de cuidado
/// personal, como cremas para peinar, sérums, shampoos, esmaltes, maquillaje
/// y cuidado de piel. Nunca uses comida ni imágenes de alimentos.
///
/// Estructura:
/// 1. Barra superior con botón de retroceso “←” a la izquierda y título
/// “Productos”.
/// 2. Muestra debajo el nombre de la categoría recibida como contexto, por
/// ejemplo “Cabello”. Puedes añadir un campo de búsqueda si cabe sin saturar
/// el diseño.
/// 3. Presenta los productos en GridView de dos columnas. Usa como ejemplo
/// visual un producto llamado “WakeUp” y su descripción “Crema para peinar”.
/// 4. Cada tarjeta de producto debe mostrar de forma ordenada:
///    - imagenUrl como foto principal del producto.
///    - nombre como título.
///    - descripcion como texto secundario, sin desbordarse.
///    - precio con formato monetario legible.
///    - disponible con un indicador claro, por ejemplo “Disponible” o
/// “Agotado”.
///    - creadoEn en texto pequeño y discreto.
///    - El nombre de la categoría asociada a categoriaRef.
///    - El usuario que registró el producto a través de creadoPorRef, cuando
/// exista. Si la referencia o su nombre no está disponible, omite este dato
/// en vez de mostrar un valor técnico.
///    - Botón “Comprar”, destacado y accesible. Si disponible es false,
/// desactívalo y muestra “Agotado”.
/// 5. Mantén las tarjetas suficientemente espaciosas para que el precio y el
/// botón no compitan con el nombre y la foto.
///
/// Conexión de datos Firestore:
/// - Consulta la colección “Productos” y filtra por categoriaRef igual a la
/// referencia de la categoría recibida.
/// - Usa los campos nombre (String), descripcion (String), precio (Double),
/// imagenUrl (String, opcional), disponible (Boolean), creadoEn (DateTime),
/// categoriaRef (Document Reference a “Categorías”) y creadoPorRef (Document
/// Reference opcional a “Usuarios”).
/// - Para la referencia categoriaRef, muestra el nombre legible de la
/// categoría, no la ruta técnica del documento.
/// - Para creadoPorRef, muestra el nombre del usuario si la relación está
/// disponible.
/// - Si imagenUrl está vacío, usa un placeholder de cuidado personal; nunca
/// uses comida.
/// - Incluye estados visuales de carga, error y lista vacía con la misma
/// identidad visual.
///
/// El diseño debe priorizar las fotografías, el nombre y el precio,
/// conservando el resto de campos en una jerarquía secundaria legible. Mantén
/// coherencia visual completa con las pantallas Login y Categorías.
class ProductosWidget extends StatefulWidget {
  const ProductosWidget({super.key});

  static String routeName = 'Productos';
  static String routePath = '/productos';

  @override
  State<ProductosWidget> createState() => _ProductosWidgetState();
}

class _ProductosWidgetState extends State<ProductosWidget> {
  late ProductosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF7F2ED),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 16.0, 24.0, 16.0),
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Color(0xFF383333),
                                  size: 20.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Productos',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF383333),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    Text(
                                      'Categoría: Cabello',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF8A4357),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.shopping_basket_rounded,
                                  color: Color(0xFF8A4357),
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                        ),
                      ),
                      Container(
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                child: Container(
                  child: Container(
                    width: 0.0,
                    height: 0.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              GridView(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 16.0,
                                  mainAxisSpacing: 16.0,
                                  childAspectRatio: 0.62,
                                ),
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  wrapWithModel(
                                    model: _model.productCardModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ProductCard3Widget(
                                      imagen:
                                          'https://dimg.dreamflow.cloud/v1/image/hair%20styling%20cream%20bottle%20minimalist',
                                      disponible: true,
                                      categoria: 'Cabello',
                                      nombre: 'WakeUp',
                                      descripcion:
                                          'Crema para peinar hidratante',
                                      precio: '8500',
                                      fecha: '12 Oct',
                                      usuario: 'Admin',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.productCardModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ProductCard3Widget(
                                      imagen:
                                          'https://dimg.dreamflow.cloud/v1/image/cosmetic%20serum%20dropper%20bottle',
                                      disponible: true,
                                      categoria: 'Cabello',
                                      nombre: 'Sérum Vital',
                                      descripcion:
                                          'Reparación intensiva de puntas',
                                      precio: '12000',
                                      fecha: '10 Oct',
                                      usuario: 'Elena B.',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.productCardModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ProductCard3Widget(
                                      imagen:
                                          'https://dimg.dreamflow.cloud/v1/image/organic%20solid%20shampoo%20bar',
                                      disponible: false,
                                      categoria: 'Cabello',
                                      nombre: 'Shampoo Sólido',
                                      descripcion:
                                          'Extracto de lavanda y romero',
                                      precio: '6500',
                                      fecha: '05 Oct',
                                      usuario: '',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.productCardModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ProductCard3Widget(
                                      imagen:
                                          'https://dimg.dreamflow.cloud/v1/image/argan%20oil%20hair%20product',
                                      disponible: true,
                                      categoria: 'Cabello',
                                      nombre: 'Óleo de Argán',
                                      descripcion: 'Brillo natural y sedosidad',
                                      precio: '9800',
                                      fecha: '01 Oct',
                                      usuario: 'Admin',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.productCardModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ProductCard3Widget(
                                      imagen:
                                          'https://dimg.dreamflow.cloud/v1/image/hair%20mask%20jar%20white%20cream',
                                      disponible: true,
                                      categoria: 'Cabello',
                                      nombre: 'Mascarilla Karité',
                                      descripcion:
                                          'Nutrición profunda para rizos',
                                      precio: '7200',
                                      fecha: '28 Sep',
                                      usuario: '',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.productCardModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ProductCard3Widget(
                                      imagen:
                                          'https://dimg.dreamflow.cloud/v1/image/hair%20tonic%20spray%20bottle',
                                      disponible: true,
                                      categoria: 'Cabello',
                                      nombre: 'Tónico Capilar',
                                      descripcion:
                                          'Fortalecimiento desde la raíz',
                                      precio: '11000',
                                      fecha: '25 Sep',
                                      usuario: 'Elena B.',
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
