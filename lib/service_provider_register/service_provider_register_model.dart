import '/flutter_flow/flutter_flow_util.dart';
import 'service_provider_register_widget.dart'
    show ServiceProviderRegisterWidget;
import 'package:flutter/material.dart';

class ServiceProviderRegisterModel
    extends FlutterFlowModel<ServiceProviderRegisterWidget> {
  ///  Local state fields for this page.

  String nameError = ' ';

  String emailError = ' ';

  String phoneError = ' ';

  String passError = ' ';

  String comfPassErrror = ' ';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for displayNameSP widget.
  FocusNode? displayNameSPFocusNode;
  TextEditingController? displayNameSPTextController;
  String? Function(BuildContext, String?)? displayNameSPTextControllerValidator;
  String? _displayNameSPTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('RegExp emptyTextRegExp = RegExp(r\'^\\s*\$\');')
        .hasMatch(val)) {
      return 'الاسم  يجب ان لا يكون فارغ ';
    }
    return null;
  }

  // State field(s) for EmailSP widget.
  FocusNode? emailSPFocusNode;
  TextEditingController? emailSPTextController;
  String? Function(BuildContext, String?)? emailSPTextControllerValidator;
  // State field(s) for PhoneNumberSP widget.
  FocusNode? phoneNumberSPFocusNode;
  TextEditingController? phoneNumberSPTextController;
  String? Function(BuildContext, String?)? phoneNumberSPTextControllerValidator;
  // State field(s) for PassSP widget.
  FocusNode? passSPFocusNode;
  TextEditingController? passSPTextController;
  late bool passSPVisibility;
  String? Function(BuildContext, String?)? passSPTextControllerValidator;
  // State field(s) for ConfirmPassSP widget.
  FocusNode? confirmPassSPFocusNode;
  TextEditingController? confirmPassSPTextController;
  late bool confirmPassSPVisibility;
  String? Function(BuildContext, String?)? confirmPassSPTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    displayNameSPTextControllerValidator =
        _displayNameSPTextControllerValidator;
    passSPVisibility = false;
    confirmPassSPVisibility = false;
  }

  @override
  void dispose() {
    displayNameSPFocusNode?.dispose();
    displayNameSPTextController?.dispose();

    emailSPFocusNode?.dispose();
    emailSPTextController?.dispose();

    phoneNumberSPFocusNode?.dispose();
    phoneNumberSPTextController?.dispose();

    passSPFocusNode?.dispose();
    passSPTextController?.dispose();

    confirmPassSPFocusNode?.dispose();
    confirmPassSPTextController?.dispose();
  }
}
