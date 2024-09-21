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
          color: const Color(0xFFFFFAFA),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
          border: Border.all(
            color: Colors.black,
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
                      child: FlutterFlowIconButton(
                        borderRadius: 0.0,
                        buttonSize: 40.0,
                        hoverColor: const Color(0xFFF68833),
                        hoverIconColor: const Color(0xFFF68833),
                        icon: Icon(
                          Icons.home_sharp,
                          color: valueOrDefault<Color>(
                            widget.page == 'ServiceProviderHomePage'
                                ? const Color(0xFFFFB67D)
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          size: 25.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('ServiceProviderHomePage');
                        },
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          hoverColor: const Color(0xFFF68833),
                          hoverIconColor: const Color(0xFFF68833),
                          icon: Icon(
                            Icons.view_timeline,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 25.0,
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
                          hoverColor: const Color(0xFFF68833),
                          hoverIconColor: const Color(0xFFF68833),
                          icon: Icon(
                            Icons.design_services,
                            color: valueOrDefault<Color>(
                              widget.page == 'services'
                                  ? const Color(0xFFFFB67D)
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            size: 25.0,
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
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          hoverColor: const Color(0xFFF68833),
                          hoverIconColor: const Color(0xFFF68833),
                          icon: Icon(
                            Icons.person,
                            color: valueOrDefault<Color>(
                              widget.page == 'Setting_ServiceProvider'
                                  ? const Color(0xFFFFB67D)
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            size: 25.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('Setting_ServiceProvider');
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
