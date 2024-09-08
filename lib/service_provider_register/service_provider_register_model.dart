import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'service_provider_register_widget.dart'
    show ServiceProviderRegisterWidget;
import 'package:flutter/material.dart';

class ServiceProviderRegisterModel
    extends FlutterFlowModel<ServiceProviderRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Email1 widget.
  FocusNode? email1FocusNode;
  TextEditingController? email1TextController;
  String? Function(BuildContext, String?)? email1TextControllerValidator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for Pass1 widget.
  FocusNode? pass1FocusNode;
  TextEditingController? pass1TextController;
  late bool pass1Visibility;
  String? Function(BuildContext, String?)? pass1TextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {
    pass1Visibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    email1FocusNode?.dispose();
    email1TextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    pass1FocusNode?.dispose();
    pass1TextController?.dispose();
  }
}
