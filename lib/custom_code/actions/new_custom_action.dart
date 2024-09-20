// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

Future newCustomAction(
  BuildContext context,
  String? email,
  String? pass,
) async {
  Future signIn(
    BuildContext context,
    String email,
    String password,
  ) async {
    try {
      final user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      FFAppState().update(() {
        FFAppState().loginAttempt = 'success';
      });
      context.pushNamed(
        'homePage',
        extra: <String, dynamic>{
          'TransitionInfoKey': TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        FFAppState().update(() {
          FFAppState().loginAttempt = e.code;
        });
      } else if (e.code == 'too-many-requests') {
        FFAppState().update(() {
          FFAppState().loginAttempt = e.code;
        });
      } else {
        FFAppState().update(() {
          FFAppState().loginAttempt = 'unknown';
        });
      }
    }
  }
}
