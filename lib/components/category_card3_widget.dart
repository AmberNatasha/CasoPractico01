import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'category_card3_model.dart';
export 'category_card3_model.dart';

class CategoryCard3Widget extends StatefulWidget {
  const CategoryCard3Widget({
    super.key,
    String? imagenUrl,
    String? nombre,
    String? descripcion,
  })  : this.imagenUrl = imagenUrl ??
            'https://images.unsplash.com/photo-1620916566398-39f1143ab7be?q=80&w=400',
        this.nombre = nombre ?? 'Cuidado Facial',
        this.descripcion =
            descripcion ?? 'Sérums y cremas hidratantes para tu rostro';

  final String imagenUrl;
  final String nombre;
  final String descripcion;

  @override
  State<CategoryCard3Widget> createState() => _CategoryCard3WidgetState();
}

class _CategoryCard3WidgetState extends State<CategoryCard3Widget> {
  late CategoryCard3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryCard3Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(20.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Color(0xFFE6DFD5),
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 140.0,
              decoration: BoxDecoration(
                color: Color(0xFFE6DFD5),
                shape: BoxShape.rectangle,
              ),
              child: CachedNetworkImage(
                fadeInDuration: Duration(milliseconds: 0),
                fadeOutDuration: Duration(milliseconds: 0),
                imageUrl: valueOrDefault<String>(
                  widget.imagenUrl,
                  'https://images.unsplash.com/photo-1620916566398-39f1143ab7be?q=80&w=400',
                ),
                fit: BoxFit.cover,
                alignment: Alignment(0.0, 0.0),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  child: Container(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.nombre,
                            'Cuidado Facial',
                          ),
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF2C2C2C),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.descripcion,
                            'Sérums y cremas hidratantes para tu rostro',
                          ),
                          maxLines: 2,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF6B8E78),
                                    fontSize: 12.0,
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
                      ].divide(SizedBox(height: 4.0)),
                    ),
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
