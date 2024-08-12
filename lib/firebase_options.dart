// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA9zlUFepu1gDzWhbYApOFDhVH5RGhP5r0',
    appId: '1:601986191194:web:e5bb3d29b6dbc7736b6d63',
    messagingSenderId: '601986191194',
    projectId: 'auth-c59e4',
    authDomain: 'auth-c59e4.firebaseapp.com',
    storageBucket: 'auth-c59e4.appspot.com',
    measurementId: 'G-82M7C9L2SJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDi_CZ4qK9JLkAMzUDmQ4QejSuPx4OtJ2c',
    appId: '1:601986191194:android:83c65dce9145116b6b6d63',
    messagingSenderId: '601986191194',
    projectId: 'auth-c59e4',
    storageBucket: 'auth-c59e4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCqgrV-jTSf_XVcz3Fvz-KV6blJ7PuS-c',
    appId: '1:601986191194:ios:54a9674a31702b916b6d63',
    messagingSenderId: '601986191194',
    projectId: 'auth-c59e4',
    storageBucket: 'auth-c59e4.appspot.com',
    iosClientId: '601986191194-kteckeh4nv78sumpsg9k4gkm55u2fvno.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitHub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCCqgrV-jTSf_XVcz3Fvz-KV6blJ7PuS-c',
    appId: '1:601986191194:ios:1995813d256eff326b6d63',
    messagingSenderId: '601986191194',
    projectId: 'auth-c59e4',
    storageBucket: 'auth-c59e4.appspot.com',
    iosClientId: '601986191194-27dkeg555f1gtdeepe3ijfa6a036ej8k.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitHub.RunnerTests',
  );
}
