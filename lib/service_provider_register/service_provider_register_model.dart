import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'service_provider_register_widget.dart'
    show ServiceProviderRegisterWidget;
import 'package:flutter/material.dart';

class ServiceProviderRegisterModel
    extends FlutterFlowModel<ServiceProviderRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Name2 widget.
  FocusNode? name2FocusNode;
  TextEditingController? name2TextController;
  String? Function(BuildContext, String?)? name2TextControllerValidator;
  String? _name2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'اسم المستخدم غير صحيح ';
    }

    if (val.length < 3) {
      return 'اسم السمتخدم يجب ان يتكون على الاقل من 3 ';
    }
    if (val.length > 30) {
      return 'اسم السمتخدم طويل جدا';
    }
    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'اسم المستخد غير صحيح ';
    }
    return null;
  }

  // State field(s) for Email2 widget.
  FocusNode? email2FocusNode;
  TextEditingController? email2TextController;
  String? Function(BuildContext, String?)? email2TextControllerValidator;
  String? _email2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'اللإيميل غير صحيح';
    }

    if (val.length < 12) {
      return 'الإيميل يجب ان يتكون من 12 ';
    }
    if (val.length > 40) {
      return 'الإيميل طويل جدا';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'اللإيميل غير صحيح';
    }
    return null;
  }

  // State field(s) for Phone2 widget.
  FocusNode? phone2FocusNode;
  TextEditingController? phone2TextController;
  String? Function(BuildContext, String?)? phone2TextControllerValidator;
  String? _phone2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'رقم الهاتف غير صحيح';
    }

    if (val.length < 10) {
      return 'يجب ان يتكون من 10 ارقام';
    }
    if (val.length > 10) {
      return 'يجب ان يتكون من 10 ارقام';
    }
    if (!RegExp('^05[0-9]{8}\$').hasMatch(val)) {
      return 'رقم الهاتف غير صحيح';
    }
    return null;
  }

  // State field(s) for Pass2 widget.
  FocusNode? pass2FocusNode;
  TextEditingController? pass2TextController;
  late bool pass2Visibility;
  String? Function(BuildContext, String?)? pass2TextControllerValidator;
  String? _pass2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'كلمة مرور خاطئة';
    }

    if (val.length < 10) {
      return 'يجب  ان  تتكون على الاقل من 10 ';
    }
    if (val.length > 30) {
      return 'كلمة المرور طويلة جدا';
    }
    if (!RegExp(
            '^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@\$!%*?&])[A-Za-z\\d@\$!%*?&]{8,}\$')
        .hasMatch(val)) {
      return 'كلمة المرور غير صحيحة';
    }
    return null;
  }

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
    name2TextControllerValidator = _name2TextControllerValidator;
    email2TextControllerValidator = _email2TextControllerValidator;
    phone2TextControllerValidator = _phone2TextControllerValidator;
    pass2Visibility = false;
    pass2TextControllerValidator = _pass2TextControllerValidator;
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
