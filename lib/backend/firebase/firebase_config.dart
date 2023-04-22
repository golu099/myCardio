import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyABf_6O8Oo8LAYnGLDsEGnGX0QfJzF8t-I",
            authDomain: "mycardio-34acd.firebaseapp.com",
            projectId: "mycardio-34acd",
            storageBucket: "mycardio-34acd.appspot.com",
            messagingSenderId: "179142105511",
            appId: "1:179142105511:web:ada8c399179749be547e82",
            measurementId: "G-X83MBDVNSR"));
  } else {
    await Firebase.initializeApp();
  }
}
