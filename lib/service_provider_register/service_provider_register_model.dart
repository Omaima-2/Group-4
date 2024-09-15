import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Name2 widget.
  FocusNode? name2FocusNode;
  TextEditingController? name2TextController;
  String? Function(BuildContext, String?)? name2TextControllerValidator;
  // State field(s) for Email2 widget.
  FocusNode? email2FocusNode;
  TextEditingController? email2TextController;
  String? Function(BuildContext, String?)? email2TextControllerValidator;
  // State field(s) for Phone2 widget.
  FocusNode? phone2FocusNode;
  TextEditingController? phone2TextController;
  String? Function(BuildContext, String?)? phone2TextControllerValidator;
  // State field(s) for Pass2 widget.
  FocusNode? pass2FocusNode;
  TextEditingController? pass2TextController;
  late bool pass2Visibility;
  String? Function(BuildContext, String?)? pass2TextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();

  @override
  void initState(BuildContext context) {
    pass2Visibility = false;
  }

  @override
  void dispose() {
    name2FocusNode?.dispose();
    name2TextController?.dispose();

    email2FocusNode?.dispose();
    email2TextController?.dispose();

    phone2FocusNode?.dispose();
    phone2TextController?.dispose();

    pass2FocusNode?.dispose();
    pass2TextController?.dispose();
  }
}
