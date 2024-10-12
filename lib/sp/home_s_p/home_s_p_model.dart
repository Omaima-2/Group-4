import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/nav_bar_s_p_n_e_w/nav_bar_s_p_n_e_w_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_s_p_widget.dart' show HomeSPWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
