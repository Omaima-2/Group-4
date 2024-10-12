import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/nav_bar_s_p/nav_bar_s_p_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'setting_s_p_widget.dart' show SettingSPWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

    if (val.length < 1) {
      return 'يجب ادخال السعر';
    }
    if (val.length > 3) {
      return 'السعر  المعطى تجاوز الطول المحدد';
    }

    return null;
  }

  // Model for navBarSP component.
  late NavBarSPModel navBarSPModel;

  @override
  void initState(BuildContext context) {
    priceTextControllerValidator = _priceTextControllerValidator;
    navBarSPModel = createModel(context, () => NavBarSPModel());
  }

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();

    navBarSPModel.dispose();
  }
}
