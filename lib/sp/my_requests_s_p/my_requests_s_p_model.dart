import '/component/nav_bar_s_p/nav_bar_s_p_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sp/components/request/request_widget.dart';
import 'my_requests_s_p_widget.dart' show MyRequestsSPWidget;
import 'package:flutter/material.dart';

class MyRequestsSPModel extends FlutterFlowModel<MyRequestsSPWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for request dynamic component.
  late FlutterFlowDynamicModels<RequestModel> requestModels;
  // Model for navBarSP component.
  late NavBarSPModel navBarSPModel;

  @override
  void initState(BuildContext context) {
    requestModels = FlutterFlowDynamicModels(() => RequestModel());
    navBarSPModel = createModel(context, () => NavBarSPModel());
  }

  @override
  void dispose() {
    requestModels.dispose();
    navBarSPModel.dispose();
  }
}
