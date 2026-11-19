import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'product_card_model.dart';
export 'product_card_model.dart';

class ProductCardWidget extends StatefulWidget {
  const ProductCardWidget({
    super.key,
    bool? available,
    String? imageDesc,
    String? name,
    String? price,
  })  : this.available = available ?? true,
        this.imageDesc = imageDesc ??
            'https://dimg.dreamflow.cloud/v1/image/professional%20dslr%20camera',
        this.name = name ?? 'Cámara Reflex Pro',
        this.price = price ?? '\$850.00';

  final bool available;
  final String imageDesc;
  final String name;
  final String price;

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  late ProductCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: valueOrDefault<bool>(
        widget.available,
        true,
      ),
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
                height: 160.0,
                child: Stack(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  children: [
                    CachedNetworkImage(
                      fadeInDuration: Duration(milliseconds: 0),
                      fadeOutDuration: Duration(milliseconds: 0),
                      imageUrl: valueOrDefault<String>(
                        widget.imageDesc,
                        'https://dimg.dreamflow.cloud/v1/image/professional%20dslr%20camera',
                      ),
                      fit: BoxFit.cover,
                      alignment: Alignment(0.0, 0.0),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            child: FlutterFlowIconButton(
                              borderRadius: 9999.0,
                              buttonSize: 40.0,
                              fillColor: Color(0xCCFFFFFF),
                              icon: Icon(
                                Icons.favorite_border_rounded,
                                size: 20.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
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
                            'Cámara Reflex Pro',
                          ),
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.price,
                            '\$850.00',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Container(
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
      ),
    );
  }
}
