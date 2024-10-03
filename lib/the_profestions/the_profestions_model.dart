import '/components/nav_bar_client_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'the_profestions_widget.dart' show TheProfestionsWidget;
import 'package:flutter/material.dart';

class TheProfestionsModel extends FlutterFlowModel<TheProfestionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavBarClient component.
  late NavBarClientModel navBarClientModel;

  @override
  void initState(BuildContext context) {
    navBarClientModel = createModel(context, () => NavBarClientModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navBarClientModel.dispose();
  }
}
