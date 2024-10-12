import '/component/nav_bar_client_n_e_w/nav_bar_client_n_e_w_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'setting_client_widget.dart' show SettingClientWidget;
import 'package:flutter/material.dart';

class SettingClientModel extends FlutterFlowModel<SettingClientWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBarClientNEW component.
  late NavBarClientNEWModel navBarClientNEWModel;

  @override
  void initState(BuildContext context) {
    navBarClientNEWModel = createModel(context, () => NavBarClientNEWModel());
  }

  @override
  void dispose() {
    navBarClientNEWModel.dispose();
  }
}
