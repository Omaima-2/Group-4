import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Container(
          height: 60.0,
          child: Stack(
            alignment: AlignmentDirectional(-0.0, 1.0),
            children: [
              Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 3.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 30.0, 20.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 0.0,
                                  buttonSize: 40.0,
                                  hoverColor: Color(0xFFF68833),
                                  hoverIconColor: Color(0xFFF68833),
                                  icon: Icon(
                                    Icons.home_sharp,
                                    color: valueOrDefault<Color>(
                                      widget!.page == 'ServiceProviderHomePage'
                                          ? Color(0xFFFFB67D)
                                          : Colors.black,
                                      Colors.black,
                                    ),
                                    size: 25.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('home_SP');
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 30.0, 15.0),
                                child: Text(
                                  'الرئيسية',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: valueOrDefault<Color>(
                                          widget!.page ==
                                                  'ServiceProviderHomePage'
                                              ? Color(0xFFFFB67D)
                                              : Colors.black,
                                          Colors.black,
                                        ),
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  hoverColor: Color(0xFFF68833),
                                  hoverIconColor: Color(0xFFF68833),
                                  icon: Icon(
                                    Icons.view_timeline,
                                    color: valueOrDefault<Color>(
                                      widget!.page == 'My_requests_sp'
                                          ? Color(0xFFFFB67D)
                                          : Colors.black,
                                      Colors.black,
                                    ),
                                    size: 25.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('My_Requests_SP');
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    3.0, 0.0, 0.0, 15.0),
                                child: Text(
                                  'الطلبات',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 20.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  hoverColor: Color(0xFFF68833),
                                  hoverIconColor: Color(0xFFF68833),
                                  icon: Icon(
                                    Icons.design_services,
                                    color: valueOrDefault<Color>(
                                      widget!.page == 'services'
                                          ? Color(0xFFFFB67D)
                                          : Colors.black,
                                      Colors.black,
                                    ),
                                    size: 25.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('services');
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    1.0, 0.0, 10.0, 15.0),
                                child: Text(
                                  'الخدمات',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: valueOrDefault<Color>(
                                          widget!.page == 'services'
                                              ? Color(0xFFFFB67D)
                                              : Colors.black,
                                          Colors.black,
                                        ),
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('setting_SP');
                            },
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 20.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 8.0,
                                      buttonSize: 40.0,
                                      hoverColor: Color(0xFFF68833),
                                      hoverIconColor: Color(0xFFF68833),
                                      icon: Icon(
                                        Icons.settings_sharp,
                                        color: valueOrDefault<Color>(
                                          widget!.page ==
                                                  'Setting_ServiceProvider'
                                              ? Color(0xFFFFB67D)
                                              : Colors.black,
                                          Colors.black,
                                        ),
                                        size: 25.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('setting_SP');
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 15.0),
                                    child: Text(
                                      'الإعدادات',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: valueOrDefault<Color>(
                                              widget!.page ==
                                                      'Setting_ServiceProvider'
                                                  ? Color(0xFFFFB67D)
                                                  : Colors.black,
                                              Colors.black,
                                            ),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
