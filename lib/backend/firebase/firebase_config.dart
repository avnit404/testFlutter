import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDbiKlyN1Ee6LN2Lxa7N_bHkIB5aPhw8tE",
            authDomain: "test-f52a8.firebaseapp.com",
            projectId: "test-f52a8",
            storageBucket: "test-f52a8.appspot.com",
            messagingSenderId: "983626844546",
            appId: "1:983626844546:web:caae90c2de9670e33ba79b"));
  } else {
    await Firebase.initializeApp();
  }
}
