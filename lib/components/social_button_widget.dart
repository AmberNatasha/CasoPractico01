import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'social_button_model.dart';
export 'social_button_model.dart';

class SocialButtonWidget extends StatefulWidget {
  const SocialButtonWidget({
    super.key,
    String? iconSlug,
    String? label,
    Color? textColor,
  })  : this.iconSlug = iconSlug ?? 'https://cdn.simpleicons.org/google.svg',
        this.label = label ?? 'Continuar con Google',
        this.textColor = textColor ?? const Color(0x00000000);

  final String iconSlug;
  final String label;
  final Color textColor;

  @override
  State<SocialButtonWidget> createState() => _SocialButtonWidgetState();
}

class _SocialButtonWidgetState extends State<SocialButtonWidget> {
  late SocialButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.network(
                valueOrDefault<String>(
                  widget.iconSlug,
                  'https://cdn.simpleicons.org/google.svg',
                ),
                width: 20.0,
                height: 20.0,
                fit: BoxFit.contain,
              ),
              Text(
                valueOrDefault<String>(
                  widget.label,
                  'Continuar con Google',
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      font: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      ),
                      color: widget.textColor,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
