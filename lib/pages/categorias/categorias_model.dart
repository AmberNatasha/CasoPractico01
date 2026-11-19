import '/components/button2_widget.dart';
import '/components/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'categorias_widget.dart' show CategoriasWidget;
import 'package:flutter/material.dart';

class CategoriasModel extends FlutterFlowModel<CategoriasWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for Button.
  late Button2Model buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    buttonModel = createModel(context, () => Button2Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    buttonModel.dispose();
  }
}
