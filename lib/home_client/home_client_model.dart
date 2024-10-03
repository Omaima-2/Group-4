import '/components/nav_bar_client_widget.dart';
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
