import '/flutter_flow/flutter_flow_icon_button.dart';
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
          color: Colors.white,
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
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          hoverColor: const Color(0xFFF68833),
                          hoverIconColor: const Color(0xFFF68833),
                          icon: Icon(
                            Icons.home,
                            color: valueOrDefault<Color>(
                              widget.page == 'HomePageClient'
                                  ? const Color(0xFFFFB67D)
                                  : Colors.black,
                              const Color(0xFF14181B),
                            ),
                            size: 25.0,
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
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          hoverColor: const Color(0xFFF68833),
                          hoverIconColor: const Color(0xFFF68833),
                          icon: const Icon(
                            Icons.pageview,
                            color: Color(0xFF14181B),
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
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          hoverColor: const Color(0xFFF68833),
                          hoverIconColor: const Color(0xFFF68833),
                          icon: const Icon(
                            Icons.ballot_sharp,
                            color: Color(0xFF14181B),
                            size: 25.0,
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
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          hoverColor: const Color(0xFFF68833),
                          hoverIconColor: const Color(0xFFF68833),
                          icon: Icon(
                            Icons.person,
                            color: valueOrDefault<Color>(
                              widget.page == 'Setting_client'
                                  ? const Color(0xFFFFB67D)
                                  : Colors.black,
                              const Color(0xFF14181B),
                            ),
                            size: 25.0,
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
