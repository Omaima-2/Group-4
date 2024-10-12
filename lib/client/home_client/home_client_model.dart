import '/component/nav_bar_client_n_e_w/nav_bar_client_n_e_w_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_client_widget.dart' show HomeClientWidget;
import 'package:flutter/material.dart';

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
