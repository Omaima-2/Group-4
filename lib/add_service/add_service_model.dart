import '/flutter_flow/flutter_flow_util.dart';
import 'add_service_widget.dart' show AddServiceWidget;
import 'package:flutter/material.dart';

class AddServiceModel extends FlutterFlowModel<AddServiceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for serviceName widget.
  FocusNode? serviceNameFocusNode;
  TextEditingController? serviceNameTextController;
  String? Function(BuildContext, String?)? serviceNameTextControllerValidator;
  // State field(s) for ServicePrice widget.
  FocusNode? servicePriceFocusNode;
  TextEditingController? servicePriceTextController;
  String? Function(BuildContext, String?)? servicePriceTextControllerValidator;
  // State field(s) for ServiceDescription widget.
  FocusNode? serviceDescriptionFocusNode;
  TextEditingController? serviceDescriptionTextController;
  String? Function(BuildContext, String?)?
      serviceDescriptionTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    serviceNameFocusNode?.dispose();
    serviceNameTextController?.dispose();

    servicePriceFocusNode?.dispose();
    servicePriceTextController?.dispose();

    serviceDescriptionFocusNode?.dispose();
    serviceDescriptionTextController?.dispose();
  }
}
