import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/new_requst_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'my_requests_s_p_model.dart';
export 'my_requests_s_p_model.dart';

class MyRequestsSPWidget extends StatefulWidget {
  const MyRequestsSPWidget({super.key});

  @override
  State<MyRequestsSPWidget> createState() => _MyRequestsSPWidgetState();
}

class _MyRequestsSPWidgetState extends State<MyRequestsSPWidget> {
  late MyRequestsSPModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyRequestsSPModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<SpRecord>>(
      stream: querySpRecord(
        queryBuilder: (spRecord) => spRecord.where(
          'user',
          isEqualTo: currentUserReference,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<SpRecord> myRequestsSPSpRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final myRequestsSPSpRecord = myRequestsSPSpRecordList.isNotEmpty
            ? myRequestsSPSpRecordList.first
            : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryText,
              automaticallyImplyLeading: false,
              title: Text(
                'الطلبات',
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
                children: [
                  StreamBuilder<List<OnlineRequestRecord>>(
                    stream: queryOnlineRequestRecord(
                      queryBuilder: (onlineRequestRecord) =>
                          onlineRequestRecord.where(
                        'service_provider',
                        isEqualTo: myRequestsSPSpRecord?.reference,
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
                      List<OnlineRequestRecord>
                          listViewOnlineRequestRecordList = snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewOnlineRequestRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewOnlineRequestRecord =
                              listViewOnlineRequestRecordList[listViewIndex];
                          return SizedBox(
                            height: 200.0,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                final colorPickedColor =
                                    await showFFColorPicker(
                                  context,
                                  currentColor: _model.colorPicked ??=
                                      FlutterFlowTheme.of(context).primary,
                                  showRecentColors: true,
                                  allowOpacity: true,
                                  textColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  secondaryTextColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  primaryButtonBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  primaryButtonTextColor: Colors.white,
                                  primaryButtonBorderColor: Colors.transparent,
                                  displayAsBottomSheet: isMobileWidth(context),
                                );

                                if (colorPickedColor != null) {
                                  safeSetState(() =>
                                      _model.colorPicked = colorPickedColor);
                                }
                              },
                              child: NewRequstWidget(
                                key: Key(
                                    'Keyqle_${listViewIndex}_of_${listViewOnlineRequestRecordList.length}'),
                                clientname:
                                    listViewOnlineRequestRecord.clientName,
                                clientphoto: myRequestsSPSpRecord!.photo,
                                clientstate: true,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
