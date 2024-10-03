import '/components/nav_bar_s_p_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_requests_s_p_widget.dart' show MyRequestsSPWidget;
import 'package:flutter/material.dart';

class MyRequestsSPModel extends FlutterFlowModel<MyRequestsSPWidget> {
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
