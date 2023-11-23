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
    apiKey: 'AIzaSyALOR5BHUnAgDm8jXK80oKQTgrIGWGlZrY',
    appId: '1:292647150372:web:76d972e7b9c6b840fe89b1',
    messagingSenderId: '292647150372',
    projectId: 'qate3-6ca6c',
    authDomain: 'qate3-6ca6c.firebaseapp.com',
    storageBucket: 'qate3-6ca6c.appspot.com',
    measurementId: 'G-ZSCBHDJ70T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDf3PtCn7oueZ5K2d3TtBY8EXDurdI-8D8',
    appId: '1:292647150372:android:4d57fa20824f2067fe89b1',
    messagingSenderId: '292647150372',
    projectId: 'qate3-6ca6c',
    storageBucket: 'qate3-6ca6c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDU2kYHaRn1GKtRrz_ze7kYml3pCqkDXz8',
    appId: '1:292647150372:ios:76b69d3d975e81f8fe89b1',
    messagingSenderId: '292647150372',
    projectId: 'qate3-6ca6c',
    storageBucket: 'qate3-6ca6c.appspot.com',
    iosBundleId: 'com.qate3.app.qate3App',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDU2kYHaRn1GKtRrz_ze7kYml3pCqkDXz8',
    appId: '1:292647150372:ios:9d472b5eb8fa8f01fe89b1',
    messagingSenderId: '292647150372',
    projectId: 'qate3-6ca6c',
    storageBucket: 'qate3-6ca6c.appspot.com',
    iosBundleId: 'com.qate3.app.qate3App.RunnerTests',
  );
}
