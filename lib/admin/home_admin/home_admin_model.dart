import '/component/nav_bar_admin/nav_bar_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_admin_widget.dart' show HomeAdminWidget;
import 'package:flutter/material.dart';

class HomeAdminModel extends FlutterFlowModel<HomeAdminWidget> {
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
