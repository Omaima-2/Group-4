import '/auth/firebase_auth/auth_util.dart';
import '/component/nav_bar_client/nav_bar_client_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'setting_client_widget.dart' show SettingClientWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
