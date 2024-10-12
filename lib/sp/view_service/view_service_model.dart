import '/component/nav_bar_s_p/nav_bar_s_p_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_service_widget.dart' show ViewServiceWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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
      return 'وصف  الخدمة لا يمكن ان يكون خاليًا ';
    }

    if (val.isEmpty) {
      return 'وصف  الخدمة لا يمكن ان يكون خاليًا ';
    }
    if (val.length > 25) {
      return 'عنوان الخدمة  طويل جدًا';
    }
    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'اسم الخدمة لا يمكن ان يكون خاليًا ';
    }
    return null;
  }

  // State field(s) for serv_desc widget.
  FocusNode? servDescFocusNode;
  TextEditingController? servDescTextController;
  String? Function(BuildContext, String?)? servDescTextControllerValidator;
  String? _servDescTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'وصف الخدمة لا يمكن ان يكون خاليًا ';
    }

    if (val.isEmpty) {
      return 'عنوان الخدمة  طويل جدًا';
    }
    if (val.length > 500) {
      return 'عنوان الخدمة  قصير  جدًا';
    }
    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'وصف  الخدمة لا يمكن ان يكون خاليًا ';
    }
    return null;
  }

  // State field(s) for serv_price widget.
  FocusNode? servPriceFocusNode;
  TextEditingController? servPriceTextController;
  final servPriceMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? servPriceTextControllerValidator;
  String? _servPriceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'تكلفة الخدمة لا يمكن ان تكون خالية';
    }

    if (val.isEmpty) {
      return '  تكلفة الخدمة لايجب  ان يكون خاليا';
    }
    if (val.length > 3) {
      return 'تكلفة الخدمة  طويل جدًا';
    }
    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'تكلفة الخدمة لا يمكن ان تكون خالية';
    }
    return null;
  }

  // Model for navBarSP component.
  late NavBarSPModel navBarSPModel;

  @override
  void initState(BuildContext context) {
    servNameTextControllerValidator = _servNameTextControllerValidator;
    servDescTextControllerValidator = _servDescTextControllerValidator;
    servPriceTextControllerValidator = _servPriceTextControllerValidator;
    navBarSPModel = createModel(context, () => NavBarSPModel());
  }

  @override
  void dispose() {
    servNameFocusNode?.dispose();
    servNameTextController?.dispose();

    servDescFocusNode?.dispose();
    servDescTextController?.dispose();

    servPriceFocusNode?.dispose();
    servPriceTextController?.dispose();

    navBarSPModel.dispose();
  }
}
