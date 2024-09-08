import '/flutter_flow/flutter_flow_util.dart';
import 'client_regriste_widget.dart' show ClientRegristeWidget;
import 'package:flutter/material.dart';

class ClientRegristeModel extends FlutterFlowModel<ClientRegristeWidget> {
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
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
