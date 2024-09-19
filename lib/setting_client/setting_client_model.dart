import '/components/nav_bar_client_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'setting_client_widget.dart' show SettingClientWidget;
import 'package:flutter/material.dart';

class SettingClientModel extends FlutterFlowModel<SettingClientWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBarClient component.
  late NavBarClientModel navBarClientModel;

  @override
  void initState(BuildContext context) {
    navBarClientModel = createModel(context, () => NavBarClientModel());
  }

  @override
  void dispose() {
    navBarClientModel.dispose();
  }
}
