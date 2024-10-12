import '/backend/backend.dart';
import '/component/nav_bar_client_n_e_w/nav_bar_client_n_e_w_widget.dart';
import '/component/profestion/profestion_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_client_widget.dart' show HomeClientWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeClientModel extends FlutterFlowModel<HomeClientWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
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
