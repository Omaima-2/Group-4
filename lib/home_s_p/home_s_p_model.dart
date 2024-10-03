import '/components/nav_bar_s_p_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_s_p_widget.dart' show HomeSPWidget;
import 'package:flutter/material.dart';

class HomeSPModel extends FlutterFlowModel<HomeSPWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navBarSP component.
  late NavBarSPModel navBarSPModel;

  @override
  void initState(BuildContext context) {
    navBarSPModel = createModel(context, () => NavBarSPModel());
  }

  @override
  void dispose() {
    navBarSPModel.dispose();
  }
}
