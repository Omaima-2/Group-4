import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'a_service_model.dart';
export 'a_service_model.dart';

class AServiceWidget extends StatefulWidget {
  const AServiceWidget({
    super.key,
    required this.nameService,
    required this.servicePrice,
    required this.photoService,
  });

  final String? nameService;
  final int? servicePrice;
  final String? photoService;

  @override
  State<AServiceWidget> createState() => _AServiceWidgetState();
}

class _AServiceWidgetState extends State<AServiceWidget> {
  late AServiceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AServiceModel());

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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 204.0,
        height: 205.0,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 3.0,
              color: Color(0x84262D34),
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
          gradient: LinearGradient(
            colors: [
              const Color(0xFFA8C2E0),
              FlutterFlowTheme.of(context).primaryText
            ],
            stops: const [0.0, 1.0],
            begin: const AlignmentDirectional(1.0, -0.34),
            end: const AlignmentDirectional(-1.0, 0.34),
          ),
          borderRadius: BorderRadius.circular(18.0),
          shape: BoxShape.rectangle,
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(2.0, 6.0, 2.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      widget.photoService,
                      'https://live.staticflickr.com/5477/11771444463_b379b039bc_w.jpg',
                    ),
                    width: 254.0,
                    height: 99.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.nameService,
                            'عنوان الخدمة',
                          ),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: valueOrDefault<String>(
                                  widget.servicePrice?.toString(),
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              TextSpan(
                                text: ' رس',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ]
                        .divide(const SizedBox(height: 5.0))
                        .addToStart(const SizedBox(height: 5.0)),
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
