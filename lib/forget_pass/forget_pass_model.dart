import '/flutter_flow/flutter_flow_util.dart';
import 'forget_pass_widget.dart' show ForgetPassWidget;
import 'package:flutter/material.dart';

class ForgetPassModel extends FlutterFlowModel<ForgetPassWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
