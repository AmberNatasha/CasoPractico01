import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAUYBOwkl5M2_PJ1o4wrWfeo7ghnUE3zAQ",
            authDomain: "amberbustosaraya-66851.firebaseapp.com",
            projectId: "amberbustosaraya-66851",
            storageBucket: "amberbustosaraya-66851.firebasestorage.app",
            messagingSenderId: "400441711622",
            appId: "1:400441711622:web:968e87d8252cb28498b787",
            measurementId: "G-N7S9L2RG5C"));
  } else {
    await Firebase.initializeApp();
  }
}
