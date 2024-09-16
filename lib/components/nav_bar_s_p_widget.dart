import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nav_bar_s_p_model.dart';
export 'nav_bar_s_p_model.dart';

class NavBarSPWidget extends StatefulWidget {
  const NavBarSPWidget({
    super.key,
    required this.page,
  });

  final String? page;

  @override
  State<NavBarSPWidget> createState() => _NavBarSPWidgetState();
}

class _NavBarSPWidgetState extends State<NavBarSPWidget> {
  late NavBarSPModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarSPModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Stack(
          alignment: const AlignmentDirectional(-0.0, 1.0),
          children: [
            Align(
              alignment: const AlignmentDirectional(1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primaryText,
                          hoverIconColor: FlutterFlowTheme.of(context).tertiary,
                          icon: Icon(
                            Icons.person,
                            color: FlutterFlowTheme.of(context).alternate,
                            size: 20.0,
                          ),
                          onPressed: () {
                            print('profileSP pressed ...');
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primaryText,
                          hoverIconColor: FlutterFlowTheme.of(context).tertiary,
                          icon: Icon(
                            Icons.view_timeline,
                            color: FlutterFlowTheme.of(context).alternate,
                            size: 20.0,
                          ),
                          onPressed: () {
                            print('reqSP pressed ...');
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primaryText,
                          hoverIconColor: FlutterFlowTheme.of(context).tertiary,
                          icon: Icon(
                            Icons.design_services,
                            color: widget.page == 'services'
                                ? const Color(0xFF1872C4)
                                : FlutterFlowTheme.of(context)
                                    .primaryBackground,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('services');
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primaryText,
                          hoverIconColor: FlutterFlowTheme.of(context).tertiary,
                          icon: Icon(
                            Icons.home,
                            color: widget.page == 'serviceProviderHomPageCopy'
                                ? const Color(0xFF1872C4)
                                : FlutterFlowTheme.of(context)
                                    .primaryBackground,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('ServiceProviderHomePage');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
