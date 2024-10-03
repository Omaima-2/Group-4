import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/a_service_widget.dart';
import '/components/nav_bar_s_p_widget.dart';
import '/components/no_services_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'services_model.dart';
export 'services_model.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({super.key});

  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  late ServicesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicesModel());

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
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('home_SP');
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFF14181B),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 20.0, 0.0),
                      child: Text(
                        'خدماتي',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              color: Colors.black,
                              fontSize: 26.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 20.0, 24.0, 50.0),
                        child: StreamBuilder<List<ServicesRecord>>(
                          stream: queryServicesRecord(
                            queryBuilder: (servicesRecord) =>
                                servicesRecord.where(
                              'user',
                              isEqualTo: currentUserReference,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<ServicesRecord> gridViewServicesRecordList =
                                snapshot.data!;
                            if (gridViewServicesRecordList.isEmpty) {
                              return const Center(
                                child: NoServicesWidget(),
                              );
                            }

                            return GridView.builder(
                              padding: const EdgeInsets.fromLTRB(
                                0,
                                20.0,
                                0,
                                10.0,
                              ),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 15.0,
                                mainAxisSpacing: 15.0,
                                childAspectRatio: 1.0,
                              ),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: gridViewServicesRecordList.length,
                              itemBuilder: (context, gridViewIndex) {
                                final gridViewServicesRecord =
                                    gridViewServicesRecordList[gridViewIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'view_Service',
                                      queryParameters: {
                                        'serviceDoc': serializeParam(
                                          gridViewServicesRecord,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'serviceDoc': gridViewServicesRecord,
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                        ),
                                      },
                                    );
                                  },
                                  child: AServiceWidget(
                                    key: Key(
                                        'Keygh0_${gridViewIndex}_of_${gridViewServicesRecordList.length}'),
                                    nameService: gridViewServicesRecord.name,
                                    servicePrice: gridViewServicesRecord.price,
                                    photoService: valueOrDefault<String>(
                                      gridViewServicesRecord.photo,
                                      'https://live.staticflickr.com/5477/11771444463_b379b039bc_w.jpg',
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: const AlignmentDirectional(1.0, 1.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(1.0, 1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 10.0),
                          child: FlutterFlowIconButton(
                            borderRadius: 150.0,
                            buttonSize: 55.0,
                            fillColor:
                                FlutterFlowTheme.of(context).mitraqaOrange,
                            icon: Icon(
                              Icons.add,
                              color: FlutterFlowTheme.of(context).info,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('add_Service');
                            },
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 10.0)),
                  ),
                ),
              ),
            ),
            wrapWithModel(
              model: _model.navBarSPModel,
              updateCallback: () => safeSetState(() {}),
              child: const NavBarSPWidget(
                page: 'services',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
