import '/component/nav_bar_s_p_n_e_w/nav_bar_s_p_n_e_w_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'setting_s_p_widget.dart' show SettingSPWidget;
import 'package:flutter/material.dart';

class SettingSPModel extends FlutterFlowModel<SettingSPWidget> {
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

  // Model for navBarSPNEW component.
  late NavBarSPNEWModel navBarSPNEWModel;

  @override
  void initState(BuildContext context) {
    priceTextControllerValidator = _priceTextControllerValidator;
    navBarSPNEWModel = createModel(context, () => NavBarSPNEWModel());
  }

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();

    navBarSPNEWModel.dispose();
  }
}
