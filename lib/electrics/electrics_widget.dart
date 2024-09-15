import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/electric_s_p_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'electrics_model.dart';
export 'electrics_model.dart';

class ElectricsWidget extends StatefulWidget {
  const ElectricsWidget({super.key});

  @override
  State<ElectricsWidget> createState() => _ElectricsWidgetState();
}

class _ElectricsWidgetState extends State<ElectricsWidget> {
  late ElectricsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ElectricsModel());

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
          backgroundColor: const Color(0xFFF68833),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('HomePageClient');
            },
          ),
          title: Text(
            'الكهربائيون',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: StreamBuilder<List<Users1Record>>(
                  stream: queryUsers1Record(
                    queryBuilder: (users1Record) => users1Record.where(
                      'role',
                      isEqualTo: Rolee.sp.serialize(),
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
                    List<Users1Record> listViewUsers1RecordList =
                        snapshot.data!;

                    return ListView.separated(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        25.0,
                        0,
                        0,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewUsers1RecordList.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 15.0),
                      itemBuilder: (context, listViewIndex) {
                        final listViewUsers1Record =
                            listViewUsers1RecordList[listViewIndex];
                        return ElectricSPWidget(
                          key: Key(
                              'Keysn7_${listViewIndex}_of_${listViewUsers1RecordList.length}'),
                          electricName: listViewUsers1Record.displayName,
                          electricPhoto: listViewUsers1Record.photoUrl,
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
    );
  }
}
