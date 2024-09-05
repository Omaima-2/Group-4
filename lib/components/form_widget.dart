import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'form_model.dart';

export 'form_model.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> with TickerProviderStateMixin {
  late FormModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormModel());

    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    animationsMap.addAll({
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

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Container(
                  width: 230.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Text(
                  'اهلا  بك مجددًا!',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: const Color(0xFF101213),
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 24.0),
                  child: Text(
                    'ادخل معلوماتك واستمتع بخدماتنا',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: const Color(0xFF57636C),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(16.0, 2.0, 16.0, 0.0),
                child: TextFormField(
                  controller: _model.emailTextController,
                  focusNode: _model.emailFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'الايميل',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: const Color(0xFF57636C),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF4B39EF),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFF5963),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedErrorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFF5963),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 16.0, 16.0, 8.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: const Color(0xFF101213),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        lineHeight: 1.0,
                      ),
                  maxLength: 30,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  keyboardType: TextInputType.emailAddress,
                  validator:
                      _model.emailTextControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: TextFormField(
                  controller: _model.passwordTextController,
                  focusNode: _model.passwordFocusNode,
                  autofocus: false,
                  textCapitalization: TextCapitalization.none,
                  obscureText: !_model.passwordVisibility,
                  decoration: InputDecoration(
                    labelText: 'كلمة المرور',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: const Color(0xFF57636C),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 2.0,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF4B39EF),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFF5963),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedErrorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFF5963),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 16.0, 16.0, 8.0),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => _model.passwordVisibility =
                            !_model.passwordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        _model.passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: const Color(0xFF101213),
                        size: 24.0,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: const Color(0xFF101213),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        lineHeight: 1.0,
                      ),
                  maxLength: 10,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength}) =>
                      null,
                  validator: _model.passwordTextControllerValidator
                      .asValidator(context),
                ),
              ),
              if (_model.tabBarCurrentIndex == 0)
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 30.0, 0.0, 16.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();

                        final user = await authManager.signInWithEmail(
                          context,
                          _model.emailTextController.text,
                          _model.passwordTextController.text,
                        );
                        if (user == null) {
                          return;
                        }

                        context.goNamedAuth(
                            'ServiceProviderRegister', context.mounted);
                      },
                      text: 'تسجيل دخول',
                      options: FFButtonOptions(
                        width: 230.0,
                        height: 52.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 0.0),
                        iconPadding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFFF47F2F),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('ForgetPass');
                    },
                    text: 'نسيت كلمة المرور؟',
                    options: FFButtonOptions(
                      height: 44.0,
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          32.0, 0.0, 32.0, 0.0),
                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                          0.0, 0.0, 0.0, 0.0),
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: const Color(0xFF101213),
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                      hoverColor: const Color(0xFFF1F4F8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
      ),
    );
  }
}
