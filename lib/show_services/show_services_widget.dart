import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/a_service_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'show_services_model.dart';
export 'show_services_model.dart';

class ShowServicesWidget extends StatefulWidget {
  const ShowServicesWidget({
    super.key,
    required this.sp,
  });

  final SpRecord? sp;

  @override
  State<ShowServicesWidget> createState() => _ShowServicesWidgetState();
}

class _ShowServicesWidgetState extends State<ShowServicesWidget> {
  late ShowServicesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowServicesModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'طلب خدمة من${widget.sp?.name}',
            style: FlutterFlowTheme.of(context).headlineLarge.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: StreamBuilder<List<ServicesRecord>>(
                    stream: queryServicesRecord(
                      queryBuilder: (servicesRecord) => servicesRecord.where(
                        'user',
                        isEqualTo: widget.sp?.user,
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

                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15.0,
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
                              _model.addToServi6(gridViewServicesRecord);
                              _model.price =
                                  _model.price! + gridViewServicesRecord.price;
                              safeSetState(() {});
                            },
                            child: AServiceWidget(
                              key: Key(
                                  'Keynva_${gridViewIndex}_of_${gridViewServicesRecordList.length}'),
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
              ),
              Text(
                'السعر:${valueOrDefault<String>(
                  _model.price?.toString(),
                  '0',
                )}رس',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await RequestRecord.collection.doc().set({
                    ...createRequestRecordData(
                      client: currentUserReference,
                      state: false,
                      serviceProvider: widget.sp?.reference,
                      price: _model.price,
                    ),
                    ...mapToFirestore(
                      {
                        'time_created': FieldValue.serverTimestamp(),
                        'services':
                            _model.servi6.map((e) => e.reference).toList(),
                      },
                    ),
                  });
                },
                text: 'طلب الخدمات ',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
