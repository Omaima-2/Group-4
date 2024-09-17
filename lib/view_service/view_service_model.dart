import '/flutter_flow/flutter_flow_util.dart';
import 'view_service_widget.dart' show ViewServiceWidget;
import 'package:flutter/material.dart';

class ViewServiceModel extends FlutterFlowModel<ViewServiceWidget> {
  ///  Local state fields for this page.

  bool editMode = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for serv_Name widget.
  FocusNode? servNameFocusNode;
  TextEditingController? servNameTextController;
  String? Function(BuildContext, String?)? servNameTextControllerValidator;
  String? _servNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for serv_desc widget.
  FocusNode? servDescFocusNode;
  TextEditingController? servDescTextController;
  String? Function(BuildContext, String?)? servDescTextControllerValidator;
  String? _servDescTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for serv_price widget.
  FocusNode? servPriceFocusNode;
  TextEditingController? servPriceTextController;
  String? Function(BuildContext, String?)? servPriceTextControllerValidator;
  String? _servPriceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    servNameTextControllerValidator = _servNameTextControllerValidator;
    servDescTextControllerValidator = _servDescTextControllerValidator;
    servPriceTextControllerValidator = _servPriceTextControllerValidator;
  }

  @override
  void dispose() {
    servNameFocusNode?.dispose();
    servNameTextController?.dispose();

    servDescFocusNode?.dispose();
    servDescTextController?.dispose();

    servPriceFocusNode?.dispose();
    servPriceTextController?.dispose();
  }
}
