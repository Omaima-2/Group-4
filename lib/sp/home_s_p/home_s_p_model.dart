import '/component/nav_bar_s_p_n_e_w/nav_bar_s_p_n_e_w_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_s_p_widget.dart' show HomeSPWidget;
import 'package:flutter/material.dart';

class HomeSPModel extends FlutterFlowModel<HomeSPWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navBarSPNEW component.
  late NavBarSPNEWModel navBarSPNEWModel;

  @override
  void initState(BuildContext context) {
    navBarSPNEWModel = createModel(context, () => NavBarSPNEWModel());
  }

  @override
  void dispose() {
    navBarSPNEWModel.dispose();
  }
}
