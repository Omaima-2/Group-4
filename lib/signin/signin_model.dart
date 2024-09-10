import '/flutter_flow/flutter_flow_util.dart';
import 'signin_widget.dart' show SigninWidget;
import 'package:flutter/material.dart';

class SigninModel extends FlutterFlowModel<SigninWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Email1 widget.
  FocusNode? email1FocusNode;
  TextEditingController? email1TextController;
  String? Function(BuildContext, String?)? email1TextControllerValidator;
  String? _email1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'الايميل ضروري';
    }

    if (val.length < 11) {
      return 'Requires at least 11 characters.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for Pass1 widget.
  FocusNode? pass1FocusNode;
  TextEditingController? pass1TextController;
  late bool pass1Visibility;
  String? Function(BuildContext, String?)? pass1TextControllerValidator;
  String? _pass1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'كلمة المرور إلزامية';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    email1TextControllerValidator = _email1TextControllerValidator;
    pass1Visibility = false;
    pass1TextControllerValidator = _pass1TextControllerValidator;
  }

  @override
  void dispose() {
    email1FocusNode?.dispose();
    email1TextController?.dispose();

    pass1FocusNode?.dispose();
    pass1TextController?.dispose();
  }
}
