import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'map_model.dart';
export 'map_model.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late MapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapModel());

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
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.search_sharp,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await _model.googleMapsController.future.then(
                          (c) => c.animateCamera(
                            CameraUpdate.newLatLng(
                                _model.googleMapsCenter!.toGoogleMaps()),
                          ),
                        );
                      },
                    ),
                    Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: FlutterFlowPlacePicker(
                          iOSGoogleMapsApiKey:
                              'AIzaSyDDuK3Sll_2vPLS2FJCGescGlf6oV2QV5E',
                          androidGoogleMapsApiKey:
                              'AIzaSyDDuK3Sll_2vPLS2FJCGescGlf6oV2QV5E',
                          webGoogleMapsApiKey:
                              'AIzaSyDDuK3Sll_2vPLS2FJCGescGlf6oV2QV5E',
                          onSelect: (place) async {
                            safeSetState(() => _model.placePickerValue = place);
                            (await _model.googleMapsController.future)
                                .animateCamera(CameraUpdate.newLatLng(
                                    place.latLng.toGoogleMaps()));
                          },
                          defaultText: 'أدخل موقعك',
                          icon: Icon(
                            Icons.place,
                            color: FlutterFlowTheme.of(context).info,
                            size: 16.0,
                          ),
                          buttonOptions: FFButtonOptions(
                            width: 300.0,
                            height: 40.0,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Builder(builder: (context) {
                  final googleMapMarker = _model.placePickerValue.latLng;
                  return FlutterFlowGoogleMap(
                    controller: _model.googleMapsController,
                    onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
                    initialLocation: _model.googleMapsCenter ??=
                        const LatLng(24.7136, 46.6753),
                    markers: [
                      FlutterFlowMarker(
                        googleMapMarker.serialize(),
                        googleMapMarker,
                        () async {
                          currentUserLocationValue =
                              await getCurrentUserLocation(
                                  defaultLocation: const LatLng(0.0, 0.0));
                          await _model.googleMapsController.future.then(
                            (c) => c.animateCamera(
                              CameraUpdate.newLatLng(
                                  currentUserLocationValue!.toGoogleMaps()),
                            ),
                          );
                        },
                      ),
                    ],
                    markerColor: GoogleMarkerColor.red,
                    mapType: MapType.normal,
                    style: GoogleMapStyle.standard,
                    initialZoom: 13.0,
                    allowInteraction: true,
                    allowZoom: true,
                    showZoomControls: true,
                    showLocation: true,
                    showCompass: false,
                    showMapToolbar: false,
                    showTraffic: false,
                    centerMapOnMarkerTap: true,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
