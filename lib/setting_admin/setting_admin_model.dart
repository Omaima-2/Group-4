import '/components/nav_bar_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'setting_admin_widget.dart' show SettingAdminWidget;
import 'package:flutter/material.dart';

class SettingAdminModel extends FlutterFlowModel<SettingAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navBarAdmin component.
  late NavBarAdminModel navBarAdminModel;

  @override
  void initState(BuildContext context) {
    navBarAdminModel = createModel(context, () => NavBarAdminModel());
  }

  @override
  void dispose() {
    navBarAdminModel.dispose();
  }
}
