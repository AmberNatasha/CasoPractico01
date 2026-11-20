import '/components/auth_tab_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_model.dart';
export 'login_model.dart';

/// Diseña una pantalla móvil de autenticación para una tienda online de
/// productos de cuidado personal llamada “Esencia”.
///
/// Mantén un estilo elegante, cálido y contemporáneo, pensado para una
/// experiencia de compra sencilla.
///
/// Identidad visual compartida con las pantallas Categorías y Productos:
/// - Fondo marfil cálido (#F7F2ED), acentos vino suave (#8A4357), rosa
/// empolvado (#D9A8AA), salvia (#8B9A83) y texto carbón cálido (#383333).
/// - Botones principales color vino con texto claro; tarjetas en tonos marfil
/// y rosa muy pálido, esquinas redondeadas y sombras suaves.
/// - Tipografía moderna, legible y consistente. Evita el blanco puro como
/// fondo dominante.
/// - Usa únicamente fotografías estéticas de productos de cuidado personal:
/// cremas para peinar, sérums, shampoos, esmaltes, maquillaje y productos de
/// cuidado de piel. Nunca uses comida, ingredientes comestibles ni imágenes
/// de restaurantes.
///
/// Estructura:
/// 1. Encabezado superior con el nombre “Esencia”, un subtítulo breve como
/// “Tu rutina, a tu manera” y una imagen editorial delicada de productos de
/// cuidado personal. Deja suficiente espacio para que la marca destaque.
/// 2. En la parte inferior, muestra un contenedor tipo tarjeta grande,
/// redondeado y ligeramente elevado. Incluye pestañas seleccionables “Crear
/// Cuenta” e “Ingresar”.
/// 3. En “Crear Cuenta”, muestra campos para nombre, correo y contraseña. En
/// “Ingresar”, muestra correo y contraseña. Etiqueta los campos claramente y
/// usa botones para mostrar u ocultar la contraseña.
/// 4. Incluye un botón principal de ancho completo que cambie su texto según
/// la pestaña: “Crear cuenta” o “Ingresar”.
/// 5. Debajo, coloca un separador con el texto “O ingrese con” y un botón
/// secundario “Continuar con Google”, acompañado del ícono de Google.
/// 6. Incluye enlaces discretos para recuperar contraseña y una nota breve de
/// privacidad.
///
/// Preparación para Firebase:
/// - El correo y la contraseña se gestionan mediante Firebase Authentication.
/// No diseñes ni sugieras guardar contraseñas en Firestore.
/// - Al crear una cuenta, el nombre, correo, fotoUrl (opcional, especialmente
/// para Google) y creadoEn corresponden al documento de la colección
/// “Usuarios”.
/// - El ID del documento “Usuarios” debe ser el UID de Firebase Auth.
/// - La fotoUrl puede mostrarse como vista previa de perfil si está
/// disponible; si no, usa un avatar con iniciales.
/// - creadoEn es la fecha de creación del perfil. No hace falta mostrarlo
/// como campo editable.
/// - Diseña los estados visuales para carga, error de autenticación y
/// registro completado, manteniendo el estilo de la pantalla.
///
/// Prioriza una jerarquía visual clara y controles cómodos para móvil. Esta
/// pantalla debe compartir exactamente la identidad visual indicada para
/// Categorías y Productos.
class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  static String routeName = 'Login';
  static String routePath = '/login';

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());
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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: AlignmentDirectional(-1.0, -1.0),
                children: [
                  ClipRRect(
                    child: Container(
                      height: 280.0,
                      child: Opacity(
                        opacity: 0.8,
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 0),
                          fadeOutDuration: Duration(milliseconds: 0),
                          imageUrl:
                              'https://dimg.dreamflow.cloud/v1/image/aesthetic%20skincare%20serum%20bottles%20and%20face%20cream%20on%20a%20neutral%20surface',
                          fit: BoxFit.cover,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Container(
                      height: 356.7,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.transparent, Color(0xFFF7F2ED)],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.5),
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Esencia',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF383333),
                                  fontSize: 42.0,
                                  letterSpacing: 4.0,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                          Text(
                            'Tu rutina, a tu manera',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  color: Color(0xFF8A4357),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FontStyle.italic,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 40.0),
                child: Container(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 45.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFCF9F6),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 30.0,
                            color: Color(0x1A383333),
                            offset: Offset(
                              0.0,
                              10.0,
                            ),
                            spreadRadius: 0.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(32.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: wrapWithModel(
                                          model: _model.authTabModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: AuthTabWidget(
                                            label: 'Crear Cuenta',
                                            active: true,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: wrapWithModel(
                                          model: _model.authTabModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: AuthTabWidget(
                                            label: 'Ingresar',
                                            active: false,
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 0.0)),
                                  ),
                                  Text(
                                    'Al continuar, aceptas nuestra Política de Privacidad y Términos de Uso.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                          color: Color(0x99383333),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Divider(
                                          height: 16.0,
                                          thickness: 1.0,
                                          indent: 0.0,
                                          endIndent: 0.0,
                                          color: Color(0x66D9A8AA),
                                        ),
                                      ),
                                      Text(
                                        'O ingrese con',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                              ),
                                              color: Color(0x80383333),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Divider(
                                          height: 16.0,
                                          thickness: 1.0,
                                          indent: 0.0,
                                          endIndent: 0.0,
                                          color: Color(0x66D9A8AA),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Color(0xFFD9A8AA),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Container(
                                        child: Container(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.network(
                                                'https://cdn.simpleicons.org/google/383333.svg',
                                                width: 18.0,
                                                height: 18.0,
                                                fit: BoxFit.contain,
                                              ),
                                              Text(
                                                'Continuar con Google',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFF383333),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .fontStyle,
                                                      lineHeight: 1.4,
                                                    ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '¿Olvidaste tu contraseña?',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF8A4357),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                          decoration: TextDecoration.underline,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 24.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
