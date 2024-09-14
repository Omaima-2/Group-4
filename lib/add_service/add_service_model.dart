import '/flutter_flow/flutter_flow_util.dart';
import 'add_service_widget.dart' show AddServiceWidget;
import 'package:flutter/material.dart';

class AddServiceModel extends FlutterFlowModel<AddServiceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for serName widget.
  FocusNode? serNameFocusNode;
  TextEditingController? serNameTextController;
  String? Function(BuildContext, String?)? serNameTextControllerValidator;
  // State field(s) for serDes widget.
  FocusNode? serDesFocusNode;
  TextEditingController? serDesTextController;
  String? Function(BuildContext, String?)? serDesTextControllerValidator;
  // State field(s) for serPrice widget.
  FocusNode? serPriceFocusNode;
  TextEditingController? serPriceTextController;
  String? Function(BuildContext, String?)? serPriceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    serNameFocusNode?.dispose();
    serNameTextController?.dispose();

    serDesFocusNode?.dispose();
    serDesTextController?.dispose();

    serPriceFocusNode?.dispose();
    serPriceTextController?.dispose();
  }
}
