import '/component/nav_bar_client_n_e_w/nav_bar_client_n_e_w_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'the_profestions_widget.dart' show TheProfestionsWidget;
import 'package:flutter/material.dart';

class TheProfestionsModel extends FlutterFlowModel<TheProfestionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavBarClientNEW component.
  late NavBarClientNEWModel navBarClientNEWModel;

  @override
  void initState(BuildContext context) {
    navBarClientNEWModel = createModel(context, () => NavBarClientNEWModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navBarClientNEWModel.dispose();
  }
}
