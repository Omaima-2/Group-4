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

Future signIn(
  BuildContext context,
  String email,
  String password,
) async {
  try {
    // Attempt to sign in the user
    final user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    // If login is successful, update the app state and navigate
    FFAppState().update(() {
      FFAppState().loginAttempt = 'success';
    });
    context.pushNamed(
      'AdminHomePage',
      extra: <String, dynamic>{
        'TransitionInfoKey': TransitionInfo(
          hasTransition: true,
          transitionType: PageTransitionType.fade,
          duration: Duration(milliseconds: 0),
        ),
      },
    );
  } on FirebaseAuthException catch (e) {
    // Handle Firebase login errors properly
    if (e.code == 'user-not-found') {
      FFAppState().update(() {
        FFAppState().loginAttempt = 'user-not-found';
      });
    } else if (e.code == 'wrong-password') {
      FFAppState().update(() {
        FFAppState().loginAttempt = 'wrong-password';
      });
    } else if (e.code == 'too-many-requests') {
      FFAppState().update(() {
        FFAppState().loginAttempt = 'too-many-requests';
      });
    } else {
      FFAppState().update(() {
        FFAppState().loginAttempt = 'unknown';
      });
    }
  } catch (e) {
    // Handle other exceptions
    FFAppState().update(() {
      FFAppState().loginAttempt = 'unknown-error';
    });
  }
}
