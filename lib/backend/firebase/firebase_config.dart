import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyABp8cu8No2NkbioTb_NtX7es6KzAUXSxk",
            authDomain: "aaaa-l7rtpe.firebaseapp.com",
            projectId: "aaaa-l7rtpe",
            storageBucket: "aaaa-l7rtpe.appspot.com",
            messagingSenderId: "419264219657",
            appId: "1:419264219657:web:388a5a308e08a6b8bb06d8"));
  } else {
    await Firebase.initializeApp();
  }
}
