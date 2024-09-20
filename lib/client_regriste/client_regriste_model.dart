import '/flutter_flow/flutter_flow_util.dart';
import 'client_regriste_widget.dart' show ClientRegristeWidget;
import 'package:flutter/material.dart';

class ClientRegristeModel extends FlutterFlowModel<ClientRegristeWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Name1 widget.
  FocusNode? name1FocusNode;
  TextEditingController? name1TextController;
  String? Function(BuildContext, String?)? name1TextControllerValidator;
  String? _name1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'اسم السمتخجم خاطئ';
    }

    if (val.length < 3) {
      return 'اسم المستخدم قصير جدًا';
    }
    if (val.length > 30) {
      return 'اسم السمتخدم طويل جدًا';
    }
    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'اسم المستخدم غير صحيح(لايجب ان يبدأ بارقام او رموز)';
    }
    return null;
  }

  // State field(s) for Email1 widget.
  FocusNode? email1FocusNode;
  TextEditingController? email1TextController;
  String? Function(BuildContext, String?)? email1TextControllerValidator;
  // State field(s) for Phone1 widget.
  FocusNode? phone1FocusNode;
  TextEditingController? phone1TextController;
  String? Function(BuildContext, String?)? phone1TextControllerValidator;
  String? _phone1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'رقم الهاتف غير صحيح';
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
      return 'الرقم السري غير صحيح';
    }

    return null;
  }

  // State field(s) for conPass widget.
  FocusNode? conPassFocusNode;
  TextEditingController? conPassTextController;
  late bool conPassVisibility;
  String? Function(BuildContext, String?)? conPassTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    name1TextControllerValidator = _name1TextControllerValidator;
    phone1TextControllerValidator = _phone1TextControllerValidator;
    pass1Visibility = false;
    pass1TextControllerValidator = _pass1TextControllerValidator;
    conPassVisibility = false;
  }

  @override
  void dispose() {
    name1FocusNode?.dispose();
    name1TextController?.dispose();

    email1FocusNode?.dispose();
    email1TextController?.dispose();

    phone1FocusNode?.dispose();
    phone1TextController?.dispose();

    pass1FocusNode?.dispose();
    pass1TextController?.dispose();

    conPassFocusNode?.dispose();
    conPassTextController?.dispose();
  }
}
