import '/component/nav_bar_s_p/nav_bar_s_p_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_service_widget.dart' show AddServiceWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddServiceModel extends FlutterFlowModel<AddServiceWidget> {
  ///  Local state fields for this page.

  String errorMessage = 'error';

  bool isErrorVisible = false;

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
      return 'عنوان الخدمة لا يمكن ان يكون خاليًا ';
    }

    if (val.isEmpty) {
      return 'عنوان الخدمة لا يمكن ان يكون خاليًا ';
    }
    if (val.length > 25) {
      return 'اسم الخدمة لايجب ان يتعدى الكلمتين';
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
      return 'وصف  الخدمة لا يمكن ان يكون خاليًا ';
    }
    if (val.length > 500) {
      return 'لقد تعديت الحد المسموح به لوصف خدمتك';
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
      return 'تكلفة الخدمة لا يمكن ان تكون خالية ';
    }

    if (val.isEmpty) {
      return 'كلفة الخدمة لا يمكن ان تكون خالية';
    }
    if (val.length > 3) {
      return 'كلفة الخدمة لا يمكن ان تتجاوز السعر';
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
