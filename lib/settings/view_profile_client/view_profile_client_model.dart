import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/component/upload_photo_sucsess/upload_photo_sucsess_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'view_profile_client_widget.dart' show ViewProfileClientWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ViewProfileClientModel extends FlutterFlowModel<ViewProfileClientWidget> {
  ///  Local state fields for this page.

  bool editMode = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nameFiled widget.
  FocusNode? nameFiledFocusNode;
  TextEditingController? nameFiledTextController;
  String? Function(BuildContext, String?)? nameFiledTextControllerValidator;
  String? _nameFiledTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'لايمكن للأسم ان يترك خاليًا';
    }

    if (val.length > 20) {
      return 'الأسم المعطى تجاوز الطول المحدد';
    }

    return null;
  }

  // State field(s) for emailFiled widget.
  FocusNode? emailFiledFocusNode;
  TextEditingController? emailFiledTextController;
  String? Function(BuildContext, String?)? emailFiledTextControllerValidator;
  String? _emailFiledTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'لايمكن للبريد الإلكتروني ان يترك خاليًا';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'تأكد من كتابة عنوان البريد الإلكتروني بالصيغة الصحيحة ';
    }
    return null;
  }

  // State field(s) for phoneNumberFiled widget.
  FocusNode? phoneNumberFiledFocusNode;
  TextEditingController? phoneNumberFiledTextController;
  String? Function(BuildContext, String?)?
      phoneNumberFiledTextControllerValidator;
  String? _phoneNumberFiledTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'لايمكن لرقم الجوال  ان يترك خاليًا';
    }

    return null;
  }

  // State field(s) for LocationFeld widget.
  FocusNode? locationFeldFocusNode;
  TextEditingController? locationFeldTextController;
  final locationFeldMask = MaskTextInputFormatter(mask: 'AAAA####');
  String? Function(BuildContext, String?)? locationFeldTextControllerValidator;
  String? _locationFeldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'لايمكن للعنوان الوطني  ان يترك خاليًا';
    }

    if (val.length < 8) {
      return '  صيغة العنوان الوطني خاطئة';
    }
    if (val.length > 8) {
      return '  صيغة العنوان الوطني خاطئة';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nameFiledTextControllerValidator = _nameFiledTextControllerValidator;
    emailFiledTextControllerValidator = _emailFiledTextControllerValidator;
    phoneNumberFiledTextControllerValidator =
        _phoneNumberFiledTextControllerValidator;
    locationFeldTextControllerValidator = _locationFeldTextControllerValidator;
  }

  @override
  void dispose() {
    nameFiledFocusNode?.dispose();
    nameFiledTextController?.dispose();

    emailFiledFocusNode?.dispose();
    emailFiledTextController?.dispose();

    phoneNumberFiledFocusNode?.dispose();
    phoneNumberFiledTextController?.dispose();

    locationFeldFocusNode?.dispose();
    locationFeldTextController?.dispose();
  }
}
