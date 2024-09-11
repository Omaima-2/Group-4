import '/flutter_flow/flutter_flow_util.dart';
import 'signin_t_e_s_t_widget.dart' show SigninTESTWidget;
import 'package:flutter/material.dart';

class SigninTESTModel extends FlutterFlowModel<SigninTESTWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Email1 widget.
  FocusNode? email1FocusNode;
  TextEditingController? email1TextController;
  String? Function(BuildContext, String?)? email1TextControllerValidator;
  // State field(s) for Pass1 widget.
  FocusNode? pass1FocusNode;
  TextEditingController? pass1TextController;
  late bool pass1Visibility;
  String? Function(BuildContext, String?)? pass1TextControllerValidator;

  @override
  void initState(BuildContext context) {
    pass1Visibility = false;
  }

  @override
  void dispose() {
    email1FocusNode?.dispose();
    email1TextController?.dispose();

    pass1FocusNode?.dispose();
    pass1TextController?.dispose();
  }
}
