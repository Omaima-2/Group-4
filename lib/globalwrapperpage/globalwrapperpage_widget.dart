import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'globalwrapperpage_model.dart';
export 'globalwrapperpage_model.dart';

class GlobalwrapperpageWidget extends StatefulWidget {
  /// root page to place the Connection State widget
  const GlobalwrapperpageWidget({super.key});

  @override
  State<GlobalwrapperpageWidget> createState() =>
      _GlobalwrapperpageWidgetState();
}

class _GlobalwrapperpageWidgetState extends State<GlobalwrapperpageWidget> {
  late GlobalwrapperpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GlobalwrapperpageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
