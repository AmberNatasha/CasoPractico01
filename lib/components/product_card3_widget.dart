import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'product_card3_model.dart';
export 'product_card3_model.dart';

class ProductCard3Widget extends StatefulWidget {
  const ProductCard3Widget({
    super.key,
    String? imagen,
    bool? disponible,
    String? categoria,
    String? nombre,
    String? descripcion,
    String? precio,
    String? fecha,
    String? usuario,
  })  : this.imagen = imagen ??
            'https://dimg.dreamflow.cloud/v1/image/hair%20styling%20cream%20bottle%20minimalist',
        this.disponible = disponible ?? true,
        this.categoria = categoria ?? 'Cabello',
        this.nombre = nombre ?? 'WakeUp',
        this.descripcion = descripcion ?? 'Crema para peinar hidratante',
        this.precio = precio ?? '8500',
        this.fecha = fecha ?? '12 Oct',
        this.usuario = usuario ?? 'Admin';

  final String imagen;
  final bool disponible;
  final String categoria;
  final String nombre;
  final String descripcion;
  final String precio;
  final String fecha;
  final String usuario;

  @override
  State<ProductCard3Widget> createState() => _ProductCard3WidgetState();
}

class _ProductCard3WidgetState extends State<ProductCard3Widget> {
  late ProductCard3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCard3Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(24.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              child: Container(
                height: 140.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CachedNetworkImage(
                      fadeInDuration: Duration(milliseconds: 0),
                      fadeOutDuration: Duration(milliseconds: 0),
                      imageUrl: valueOrDefault<String>(
                        widget.imagen,
                        'https://dimg.dreamflow.cloud/v1/image/hair%20styling%20cream%20bottle%20minimalist',
                      ),
                      fit: BoxFit.cover,
                      alignment: Alignment(0.0, 0.0),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Container(
                            child: Container(
                              decoration: BoxDecoration(
                                color: valueOrDefault<Color>(
                                  valueOrDefault<bool>(
                                    widget.disponible,
                                    true,
                                  )
                                      ? FlutterFlowTheme.of(context).success
                                      : FlutterFlowTheme.of(context).error,
                                  FlutterFlowTheme.of(context).success,
                                ),
                                borderRadius: BorderRadius.circular(9999.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                child: Container(
                                  child: Text(
                                    valueOrDefault<String>(
                                      valueOrDefault<bool>(
                                        widget.disponible,
                                        true,
                                      )
                                          ? 'Disponible'
                                          : 'Agotado',
                                      'Disponible',
                                    ),
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
                                          color: Colors.white,
                                          fontSize: 10.0,
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
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.categoria,
                          'Cabello',
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              color: Color(0xFF8B9A83),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.nombre,
                          'WakeUp',
                        ),
                        maxLines: 1,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF383333),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.descripcion,
                          'Crema para peinar hidratante',
                        ),
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                '₡${widget.precio}',
                                '₡8500',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF8A4357),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              'Agregado: ${widget.fecha}',
                              'Agregado: 12 Oct',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).accent3,
                                  fontSize: 9.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                          if (valueOrDefault<bool>(
                            valueOrDefault<String>(
                                      widget.usuario,
                                      'Admin',
                                    ) !=
                                    ''
                                ? true
                                : false,
                            true,
                          ))
                            Text(
                              valueOrDefault<String>(
                                valueOrDefault<String>(
                                          widget.usuario,
                                          'Admin',
                                        ) !=
                                        ''
                                    ? 'Por: \$usuario'
                                    : '',
                                'Por: \$usuario',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).accent3,
                                    fontSize: 9.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                        ].divide(SizedBox(height: 0.0)),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Container(
                            child: Container(
                              width: 0.0,
                              height: 0.0,
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
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
