import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'button2_model.dart';
export 'button2_model.dart';

class Button2Widget extends StatefulWidget {
  const Button2Widget({
    super.key,
    this.icon,
    bool? iconPresent,
    this.iconEnd,
    bool? iconEndPresent,
    String? content,
    String? variant,
    String? size,
    bool? fullWidth,
    bool? loading,
    bool? disabled,
  })  : this.iconPresent = iconPresent ?? false,
        this.iconEndPresent = iconEndPresent ?? false,
        this.content = content ?? 'Reintentar',
        this.variant = variant ?? 'outline',
        this.size = size ?? 'medium',
        this.fullWidth = fullWidth ?? false,
        this.loading = loading ?? false,
        this.disabled = disabled ?? false;

  final Widget? icon;
  final bool iconPresent;
  final Widget? iconEnd;
  final bool iconEndPresent;
  final String content;
  final String variant;
  final String size;
  final bool fullWidth;
  final bool loading;
  final bool disabled;

  @override
  State<Button2Widget> createState() => _Button2WidgetState();
}

class _Button2WidgetState extends State<Button2Widget> {
  late Button2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Button2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: valueOrDefault<double>(
        valueOrDefault<bool>(
          widget.disabled,
          false,
        )
            ? 0.55
            : 1.0,
        1.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            () {
              if (valueOrDefault<String>(
                    widget.variant,
                    'outline',
                  ) ==
                  'secondary') {
                return FlutterFlowTheme.of(context).secondary;
              } else if (valueOrDefault<String>(
                    widget.variant,
                    'outline',
                  ) ==
                  'outline') {
                return Colors.transparent;
              } else if (valueOrDefault<String>(
                    widget.variant,
                    'outline',
                  ) ==
                  'ghost') {
                return Colors.transparent;
              } else if (valueOrDefault<String>(
                    widget.variant,
                    'outline',
                  ) ==
                  'destructive') {
                return FlutterFlowTheme.of(context).error;
              } else {
                return FlutterFlowTheme.of(context).primary;
              }
            }(),
            Colors.transparent,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(valueOrDefault<double>(
              () {
                if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'small') {
                  return 8.0;
                } else if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'large') {
                  return 24.0;
                } else {
                  return 16.0;
                }
              }(),
              16.0,
            )),
            topRight: Radius.circular(valueOrDefault<double>(
              () {
                if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'small') {
                  return 8.0;
                } else if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'large') {
                  return 24.0;
                } else {
                  return 16.0;
                }
              }(),
              16.0,
            )),
            bottomLeft: Radius.circular(valueOrDefault<double>(
              () {
                if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'small') {
                  return 8.0;
                } else if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'large') {
                  return 24.0;
                } else {
                  return 16.0;
                }
              }(),
              16.0,
            )),
            bottomRight: Radius.circular(valueOrDefault<double>(
              () {
                if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'small') {
                  return 8.0;
                } else if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'large') {
                  return 24.0;
                } else {
                  return 16.0;
                }
              }(),
              16.0,
            )),
          ),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: valueOrDefault<Color>(
              valueOrDefault<String>(
                        widget.variant,
                        'outline',
                      ) ==
                      'outline'
                  ? FlutterFlowTheme.of(context).alternate
                  : Colors.transparent,
              FlutterFlowTheme.of(context).alternate,
            ),
            width: valueOrDefault<double>(
              valueOrDefault<String>(
                        widget.variant,
                        'outline',
                      ) ==
                      'outline'
                  ? 1.0
                  : 0.0,
              1.0,
            ),
          ),
        ),
      ),
    );
  }
}
