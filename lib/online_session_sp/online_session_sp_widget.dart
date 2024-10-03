import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'online_session_sp_model.dart';
export 'online_session_sp_model.dart';

class OnlineSessionSpWidget extends StatefulWidget {
  const OnlineSessionSpWidget({
    super.key,
    required this.onlineRequest,
  });

  final OrequestRecord? onlineRequest;

  @override
  State<OnlineSessionSpWidget> createState() => _OnlineSessionSpWidgetState();
}

class _OnlineSessionSpWidgetState extends State<OnlineSessionSpWidget> {
  late OnlineSessionSpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnlineSessionSpModel());

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
        body:
            // هذي الصفحة الي بيكون فيها ال video call مع العميل
            // ماسويت فيها اي شي لحد الحين
            Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Color(0xFF14181B),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Text(
                'بدء الاستشارة مع العميل ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.black,
                      fontSize: 26.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
