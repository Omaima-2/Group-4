import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/nav_bar_s_p/nav_bar_s_p_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sp/components/request/request_widget.dart';
import 'my_requests_s_p_widget.dart' show MyRequestsSPWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
