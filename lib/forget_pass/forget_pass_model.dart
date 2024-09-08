import '/flutter_flow/flutter_flow_util.dart';
import 'forget_pass_widget.dart' show ForgetPassWidget;
import 'package:flutter/material.dart';

class ForgetPassModel extends FlutterFlowModel<ForgetPassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ForgetPassField widget.
  FocusNode? forgetPassFieldFocusNode;
  TextEditingController? forgetPassFieldTextController;
  String? Function(BuildContext, String?)?
      forgetPassFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    forgetPassFieldFocusNode?.dispose();
    forgetPassFieldTextController?.dispose();
  }
}
