import '/flutter_flow/flutter_flow_util.dart';
import 'add_service_widget.dart' show AddServiceWidget;
import 'package:flutter/material.dart';

class AddServiceModel extends FlutterFlowModel<AddServiceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Name2 widget.
  FocusNode? name2FocusNode1;
  TextEditingController? name2TextController1;
  String? Function(BuildContext, String?)? name2TextController1Validator;
  // State field(s) for Name2 widget.
  FocusNode? name2FocusNode2;
  TextEditingController? name2TextController2;
  String? Function(BuildContext, String?)? name2TextController2Validator;
  // State field(s) for Name2 widget.
  FocusNode? name2FocusNode3;
  TextEditingController? name2TextController3;
  String? Function(BuildContext, String?)? name2TextController3Validator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue1 = const FFPlace();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue2 = const FFPlace();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    name2FocusNode1?.dispose();
    name2TextController1?.dispose();

    name2FocusNode2?.dispose();
    name2TextController2?.dispose();

    name2FocusNode3?.dispose();
    name2TextController3?.dispose();
  }
}
