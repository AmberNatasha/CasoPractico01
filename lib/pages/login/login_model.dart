import '/components/auth_tab_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AuthTab.
  late AuthTabModel authTabModel1;
  // Model for AuthTab.
  late AuthTabModel authTabModel2;

  @override
  void initState(BuildContext context) {
    authTabModel1 = createModel(context, () => AuthTabModel());
    authTabModel2 = createModel(context, () => AuthTabModel());
  }

  @override
  void dispose() {
    authTabModel1.dispose();
    authTabModel2.dispose();
  }
}
