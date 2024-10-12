import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/nav_bar_s_p/nav_bar_s_p_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sp/components/request/request_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
            backgroundColor: Colors.white,
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
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70.0),
              child: AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Color(0xFF14181B),
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                actions: [],
                flexibleSpace: FlexibleSpaceBar(
                  title: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 0.0),
                      child: Text(
                        'الطلبات',
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
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                ),
                elevation: 0.0,
              ),
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    StreamBuilder<List<OrequestRecord>>(
                      stream: queryOrequestRecord(
                        queryBuilder: (orequestRecord) => orequestRecord
                            .where(
                              'sp',
                              isEqualTo: myRequestsSPSpRecord?.reference,
                            )
                            .where(
                              'state',
                              isEqualTo: 'Pending ',
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
                        List<OrequestRecord> listViewOrequestRecordList =
                            snapshot.data!;

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewOrequestRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewOrequestRecord =
                                listViewOrequestRecordList[listViewIndex];
                            return RequestWidget(
                              key: Key(
                                  'Key2mk_${listViewIndex}_of_${listViewOrequestRecordList.length}'),
                              request: listViewOrequestRecord,
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
                wrapWithModel(
                  model: _model.navBarSPModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBarSPWidget(
                    page: 'My_requests_sp',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
