import '/component/nav_bar_admin/nav_bar_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'setting_admin_widget.dart' show SettingAdminWidget;
import 'package:flutter/material.dart';

class SettingAdminModel extends FlutterFlowModel<SettingAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'السعر غير صحيح';
    }

    if (val.isEmpty) {
      return 'يجب ادخال السعر';
    }
    if (val.length > 3) {
      return 'السعر  المعطى تجاوز الطول المحدد';
    }

    return null;
  }

  // Model for navBarAdmin component.
  late NavBarAdminModel navBarAdminModel;

  @override
  void initState(BuildContext context) {
    priceTextControllerValidator = _priceTextControllerValidator;
    navBarAdminModel = createModel(context, () => NavBarAdminModel());
  }

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();

    navBarAdminModel.dispose();
  }
}
