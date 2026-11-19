import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'product_card2_model.dart';
export 'product_card2_model.dart';

class ProductCard2Widget extends StatefulWidget {
  const ProductCard2Widget({
    super.key,
    String? imageDesc,
    String? name,
    String? price,
  })  : this.imageDesc = imageDesc ??
            'https://dimg.dreamflow.cloud/v1/image/bolsa%20de%20caf%C3%A9%20artesanal',
        this.name = name ?? 'Café de Altura',
        this.price = price ?? '\$12.50';

  final String imageDesc;
  final String name;
  final String price;

  @override
  State<ProductCard2Widget> createState() => _ProductCard2WidgetState();
}

class _ProductCard2WidgetState extends State<ProductCard2Widget> {
  late ProductCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCard2Model());
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
            Container(
              height: 140.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: CachedNetworkImage(
                fadeInDuration: Duration(milliseconds: 0),
                fadeOutDuration: Duration(milliseconds: 0),
                imageUrl: valueOrDefault<String>(
                  widget.imageDesc,
                  'https://dimg.dreamflow.cloud/v1/image/bolsa%20de%20caf%C3%A9%20artesanal',
                ),
                fit: BoxFit.cover,
                alignment: Alignment(0.0, 0.0),
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
                          widget.name,
                          'Café de Altura',
                        ),
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              font: GoogleFonts.interTight(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.price,
                          '\$12.50',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                      Container(
                        height: 4.0,
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
