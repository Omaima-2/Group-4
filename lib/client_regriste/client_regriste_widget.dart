import '/auth/firebase_auth/auth_util.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'client_regriste_model.dart';
export 'client_regriste_model.dart';

class ClientRegristeWidget extends StatefulWidget {
  const ClientRegristeWidget({super.key});

  @override
  State<ClientRegristeWidget> createState() => _ClientRegristeWidgetState();
}

class _ClientRegristeWidgetState extends State<ClientRegristeWidget>
    with TickerProviderStateMixin {
  late ClientRegristeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClientRegristeModel());

    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.email1TextController ??= TextEditingController();
    _model.email1FocusNode ??= FocusNode();

    _model.phoneTextController ??= TextEditingController();
    _model.phoneFocusNode ??= FocusNode();

    _model.pass1TextController ??= TextEditingController();
    _model.pass1FocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 80.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.8, 0.8),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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
        body: Stack(
          children: [
            Stack(
              alignment: const AlignmentDirectional(0.0, -1.0),
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 2.0),
                    child: Container(
                      width: double.infinity,
                      height: 250.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F4F8),
                        borderRadius: BorderRadius.circular(22.0),
                        shape: BoxShape.rectangle,
                      ),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/__2024-08-28_201217-removebg-preview.png',
                          width: 169.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 190.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).width >= 768.0
                                ? 530.0
                                : 630.0,
                            constraints: const BoxConstraints(
                              maxWidth: 570.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    10.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: const Color(0xFFF1F4F8),
                                width: 2.0,
                              ),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 36.0, 10.0, 10.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                      ))
                                        Container(
                                          width: 230.0,
                                          height: 120.0,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'أنشئ حسابك',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF101213),
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 2.0),
                                          child: Text(
                                            'أنشى حسابك واستمتع بخدماتنا.....goo omaima',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: const Color(0xFF57636C),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: TextFormField(
                                            controller:
                                                _model.nameTextController,
                                            focusNode: _model.nameFocusNode,
                                            autofocus: false,
                                            textCapitalization:
                                                TextCapitalization.none,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'اسم المستخدم',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: const Color(0xFF57636C),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              alignLabelWithHint: false,
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 2.0,
                                                ),
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                              focusedBorder:
                                                  const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF4B39EF),
                                                  width: 2.0,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                              errorBorder: const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF5963),
                                                  width: 2.0,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                              focusedErrorBorder:
                                                  const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFFF5963),
                                                  width: 2.0,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 16.0, 8.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: const Color(0xFF101213),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  lineHeight: 1.0,
                                                ),
                                            maxLength: 15,
                                            maxLengthEnforcement:
                                                MaxLengthEnforcement.enforced,
                                            buildCounter: (context,
                                                    {required currentLength,
                                                    required isFocused,
                                                    maxLength}) =>
                                                null,
                                            validator: _model
                                                .nameTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 2.0, 16.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.email1TextController,
                                          focusNode: _model.email1FocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'الايميل',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: const Color(0xFF57636C),
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4B39EF),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 16.0, 8.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF101213),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                lineHeight: 1.0,
                                              ),
                                          maxLength: 30,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: _model
                                              .email1TextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 2.0, 16.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.phoneTextController,
                                          focusNode: _model.phoneFocusNode,
                                          autofocus: false,
                                          textCapitalization:
                                              TextCapitalization.none,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'رقم الهاتف',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: const Color(0xFF57636C),
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4B39EF),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 16.0, 8.0),
                                            prefixIcon: const Icon(
                                              Icons.phone_sharp,
                                              color: Colors.black,
                                              size: 20.0,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF101213),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                lineHeight: 1.0,
                                              ),
                                          maxLength: 10,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          buildCounter: (context,
                                                  {required currentLength,
                                                  required isFocused,
                                                  maxLength}) =>
                                              null,
                                          keyboardType: TextInputType.phone,
                                          validator: _model
                                              .phoneTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.pass1TextController,
                                          focusNode: _model.pass1FocusNode,
                                          autofocus: false,
                                          textCapitalization:
                                              TextCapitalization.characters,
                                          obscureText: !_model.pass1Visibility,
                                          decoration: InputDecoration(
                                            labelText: 'كلمة المرور',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: const Color(0xFF57636C),
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4B39EF),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 16.0, 8.0),
                                            suffixIcon: InkWell(
                                              onTap: () => safeSetState(
                                                () => _model.pass1Visibility =
                                                    !_model.pass1Visibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.pass1Visibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: const Color(0xFF101213),
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF101213),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                lineHeight: 1.0,
                                              ),
                                          maxLength: 10,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          buildCounter: (context,
                                                  {required currentLength,
                                                  required isFocused,
                                                  maxLength}) =>
                                              null,
                                          validator: _model
                                              .pass1TextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      1.0, 12.0, 1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  final selectedMedia =
                                                      await selectMedia(
                                                    mediaSource: MediaSource
                                                        .photoGallery,
                                                    multiImage: false,
                                                  );
                                                  if (selectedMedia != null &&
                                                      selectedMedia.every((m) =>
                                                          validateFileFormat(
                                                              m.storagePath,
                                                              context))) {
                                                    safeSetState(() =>
                                                        _model.isDataUploading =
                                                            true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
                                                    try {
                                                      selectedUploadedFiles =
                                                          selectedMedia
                                                              .map((m) =>
                                                                  FFUploadedFile(
                                                                    name: m
                                                                        .storagePath
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    bytes:
                                                                        m.bytes,
                                                                    height: m
                                                                        .dimensions
                                                                        ?.height,
                                                                    width: m
                                                                        .dimensions
                                                                        ?.width,
                                                                    blurHash: m
                                                                        .blurHash,
                                                                  ))
                                                              .toList();

                                                      downloadUrls =
                                                          (await Future.wait(
                                                        selectedMedia.map(
                                                          (m) async =>
                                                              await uploadData(
                                                                  m.storagePath,
                                                                  m.bytes),
                                                        ),
                                                      ))
                                                              .where((u) =>
                                                                  u != null)
                                                              .map((u) => u!)
                                                              .toList();
                                                    } finally {
                                                      _model.isDataUploading =
                                                          false;
                                                    }
                                                    if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      safeSetState(() {
                                                        _model.uploadedLocalFile =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl =
                                                            downloadUrls.first;
                                                      });
                                                    } else {
                                                      safeSetState(() {});
                                                      return;
                                                    }
                                                  }
                                                },
                                                text: 'رفع صورة',
                                                options: FFButtonOptions(
                                                  width: 175.0,
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 3.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 12.0, 16.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  context.safePop();

                                                  context.pushNamed(
                                                      'HomePageClient');
                                                },
                                                text: 'تحديد الموقع',
                                                options: FFButtonOptions(
                                                  width: 175.0,
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 3.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.13, 0.61),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 16.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              GoRouter.of(context)
                                                  .prepareAuthEvent();

                                              final user = await authManager
                                                  .createAccountWithEmail(
                                                context,
                                                _model
                                                    .email1TextController.text,
                                                _model.pass1TextController.text,
                                              );
                                              if (user == null) {
                                                return;
                                              }

                                              context.goNamedAuth(
                                                  'HomePageClient',
                                                  context.mounted);
                                            },
                                            text: 'تسجيل',
                                            options: FFButtonOptions(
                                              width: 280.0,
                                              height: 52.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFFF68833),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color: Colors.white,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'columnOnPageLoadAnimation']!),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, -1.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('signinTEST');
                },
                child: Icon(
                  Icons.arrow_back,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
