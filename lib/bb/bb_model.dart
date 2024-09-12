import '/flutter_flow/flutter_flow_util.dart';
import 'bb_widget.dart' show BbWidget;
import 'package:flutter/material.dart';

class BbModel extends FlutterFlowModel<BbWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Email1 widget.
  FocusNode? email1FocusNode;
  TextEditingController? email1TextController;
  String? Function(BuildContext, String?)? email1TextControllerValidator;
  // State field(s) for Pass1 widget.
  FocusNode? pass1FocusNode1;
  TextEditingController? pass1TextController1;
  late bool pass1Visibility1;
  String? Function(BuildContext, String?)? pass1TextController1Validator;
  // State field(s) for Pass1 widget.
  FocusNode? pass1FocusNode2;
  TextEditingController? pass1TextController2;
  late bool pass1Visibility2;
  String? Function(BuildContext, String?)? pass1TextController2Validator;

  @override
  void initState(BuildContext context) {
    pass1Visibility1 = false;
    pass1Visibility2 = false;
  }

  @override
  void dispose() {
    email1FocusNode?.dispose();
    email1TextController?.dispose();

    pass1FocusNode1?.dispose();
    pass1TextController1?.dispose();

    pass1FocusNode2?.dispose();
    pass1TextController2?.dispose();
  }
}
