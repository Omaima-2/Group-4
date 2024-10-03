import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sp_nav_model.dart';
export 'sp_nav_model.dart';

class SpNavWidget extends StatefulWidget {
  const SpNavWidget({
    super.key,
    required this.page,
  });

  final String? page;

  @override
  State<SpNavWidget> createState() => _SpNavWidgetState();
}

class _SpNavWidgetState extends State<SpNavWidget> {
  late SpNavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpNavModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 455.0,
      height: 43.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('home_SP');
            },
            child: Icon(
              Icons.house,
              color: widget.page == 'sp_home'
                  ? const Color(0xFFED7D41)
                  : FlutterFlowTheme.of(context).secondaryBackground,
              size: 24.0,
            ),
          ),
          Icon(
            Icons.date_range_rounded,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            size: 24.0,
          ),
          Icon(
            Icons.backup_table_outlined,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            size: 24.0,
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('setting_SP');
            },
            child: Icon(
              Icons.person,
              color: widget.page == 'sp_setting'
                  ? const Color(0xFFED7D41)
                  : FlutterFlowTheme.of(context).secondaryBackground,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
