import '/flutter_flow/flutter_flow_util.dart';
import 'view_service_widget.dart' show ViewServiceWidget;
import 'package:flutter/material.dart';

class ViewServiceModel extends FlutterFlowModel<ViewServiceWidget> {
  ///  Local state fields for this page.

  bool editMode = false;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for serv_Name widget.
  FocusNode? servNameFocusNode;
  TextEditingController? servNameTextController;
  String? Function(BuildContext, String?)? servNameTextControllerValidator;
  // State field(s) for serv_desc widget.
  FocusNode? servDescFocusNode;
  TextEditingController? servDescTextController;
  String? Function(BuildContext, String?)? servDescTextControllerValidator;
  // State field(s) for serv_price widget.
  FocusNode? servPriceFocusNode;
  TextEditingController? servPriceTextController;
  String? Function(BuildContext, String?)? servPriceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

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
