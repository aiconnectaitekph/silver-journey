import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBRQOvzFXc1hpDe2DpyVyYhmkSUuDvdGnI",
            authDomain: "potent-bulwark-434423-t6.firebaseapp.com",
            projectId: "potent-bulwark-434423-t6",
            storageBucket: "potent-bulwark-434423-t6.appspot.com",
            messagingSenderId: "882839078564",
            appId: "1:882839078564:web:e1ffb18d7eae806704c831",
            measurementId: "G-13N144RKKJ"));
  } else {
    await Firebase.initializeApp();
  }
}
