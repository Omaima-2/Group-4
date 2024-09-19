import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nav_bar_client_model.dart';
export 'nav_bar_client_model.dart';

class NavBarClientWidget extends StatefulWidget {
  const NavBarClientWidget({
    super.key,
    required this.page,
  });

  final String? page;

  @override
  State<NavBarClientWidget> createState() => _NavBarClientWidgetState();
}

class _NavBarClientWidgetState extends State<NavBarClientWidget> {
  late NavBarClientModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarClientModel());

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
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primaryText,
                          hoverColor: const Color(0xFFF68833),
                          hoverIconColor: const Color(0xFFF68833),
                          icon: Icon(
                            Icons.home,
                            color: valueOrDefault<Color>(
                              widget.page == 'HomePageClient'
                                  ? const Color(0xFFF68833)
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            size: 20.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('HomePageClient');
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primaryText,
                          hoverColor: const Color(0xFFF68833),
                          hoverIconColor: const Color(0xFFF68833),
                          icon: Icon(
                            Icons.pageview,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
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
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primaryText,
                          hoverColor: const Color(0xFFF68833),
                          hoverIconColor: const Color(0xFFF68833),
                          icon: Icon(
                            Icons.ballot_sharp,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 20.0,
                          ),
                          onPressed: () {
                            print('service pressed ...');
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primaryText,
                          hoverColor: const Color(0xFFF68833),
                          hoverIconColor: const Color(0xFFF68833),
                          icon: Icon(
                            Icons.person,
                            color: valueOrDefault<Color>(
                              widget.page == 'Setting'
                                  ? const Color(0xFFF68833)
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            size: 20.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('Setting_client');
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
