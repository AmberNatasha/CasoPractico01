import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'producto_card_model.dart';
export 'producto_card_model.dart';

class ProductoCardWidget extends StatefulWidget {
  const ProductoCardWidget({
    super.key,
    String? nombre,
    String? imagenUrl,
    String? precio,
    String? descripcion,
  })  : this.nombre = nombre ??
            'https://dimg.dreamflow.cloud/v1/image/Vestido%20de%20Gala%20Amber',
        this.imagenUrl = imagenUrl ??
            'https://images.unsplash.com/photo-1566174053879-31528523f8ae',
        this.precio = precio ?? '125',
        this.descripcion = descripcion ??
            'Elegante vestido largo con acabados en seda y detalles bordados a mano.';

  final String nombre;
  final String imagenUrl;
  final String precio;
  final String descripcion;

  @override
  State<ProductoCardWidget> createState() => _ProductoCardWidgetState();
}

class _ProductoCardWidgetState extends State<ProductoCardWidget> {
  late ProductoCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductoCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        child: ClipRRect(
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
                Container(
                  height: 180.0,
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (valueOrDefault<bool>(
                        valueOrDefault<String>(
                                  widget.imagenUrl,
                                  'https://images.unsplash.com/photo-1566174053879-31528523f8ae',
                                ) !=
                                ''
                            ? true
                            : false,
                        true,
                      ))
                        CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 0),
                          fadeOutDuration: Duration(milliseconds: 0),
                          imageUrl: valueOrDefault<String>(
                            widget.nombre,
                            'https://dimg.dreamflow.cloud/v1/image/Vestido%20de%20Gala%20Amber',
                          ),
                          fit: BoxFit.cover,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      if (valueOrDefault<bool>(
                        valueOrDefault<String>(
                                  widget.imagenUrl,
                                  'https://images.unsplash.com/photo-1566174053879-31528523f8ae',
                                ) ==
                                ''
                            ? true
                            : false,
                        false,
                      ))
                        Icon(
                          Icons.image_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 48.0,
                        ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.nombre,
                                    'https://dimg.dreamflow.cloud/v1/image/Vestido%20de%20Gala%20Amber',
                                  ),
                                  maxLines: 2,
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
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  '\$${widget.precio}',
                                  '\$125',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ],
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.descripcion,
                              'Elegante vestido largo con acabados en seda y detalles bordados a mano.',
                            ),
                            maxLines: 3,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Container(
                                child: Container(
                                  width: 0.0,
                                  height: 0.0,
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
