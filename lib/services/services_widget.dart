import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/a_service_widget.dart';
import '/components/no_services_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('ServiceProviderHomPageCopy');
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    'خدماتي',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Outfit',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    'الخدمات المقدمة للعملاء ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Expanded(
                  child: StreamBuilder<List<ServicesRecord>>(
                    stream: queryServicesRecord(
                      queryBuilder: (servicesRecord) => servicesRecord.where(
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
                        return const NoServicesWidget();
                      }

                      return GridView.builder(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          20.0,
                          0,
                          10.0,
                        ),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 15.0,
                          childAspectRatio: 1.0,
                        ),
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
                                  'serviceName': serializeParam(
                                    gridViewServicesRecord.name,
                                    ParamType.String,
                                  ),
                                  'servicePhoto': serializeParam(
                                    gridViewServicesRecord.photo,
                                    ParamType.String,
                                  ),
                                  'servicePrice': serializeParam(
                                    gridViewServicesRecord.price,
                                    ParamType.int,
                                  ),
                                  'serviceDesc': serializeParam(
                                    gridViewServicesRecord.description,
                                    ParamType.String,
                                  ),
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
                                  'Key0yl_${gridViewIndex}_of_${gridViewServicesRecordList.length}'),
                              nameService: gridViewServicesRecord.name,
                              servicePrice: gridViewServicesRecord.price,
                              photoService: gridViewServicesRecord.photo,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('addService');
                      },
                      child: Container(
                        width: 200.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('addService');
                            },
                            text: 'إضافة خدمة ',
                            icon: const Icon(
                              Icons.add,
                              size: 22.0,
                            ),
                            options: FFButtonOptions(
                              width: 200.0,
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(10.0),
                              hoverColor: FlutterFlowTheme.of(context).tertiary,
                              hoverTextColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
