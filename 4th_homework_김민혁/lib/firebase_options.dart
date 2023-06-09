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
    apiKey: 'AIzaSyAMOFEVIp9jA0QNgYSW31BdBM9MlYddTJc',
    appId: '1:282329505089:web:25b0f4cd6f079d02e095c0',
    messagingSenderId: '282329505089',
    projectId: 'pard-5th-hw',
    authDomain: 'pard-5th-hw.firebaseapp.com',
    storageBucket: 'pard-5th-hw.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC00lksCCz1vNE6Um-7tojxnk4tnMc83SA',
    appId: '1:282329505089:android:4dacdb0507804912e095c0',
    messagingSenderId: '282329505089',
    projectId: 'pard-5th-hw',
    storageBucket: 'pard-5th-hw.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAUDwnHHp2NismOqoGT2eAYYlDFRLoYQys',
    appId: '1:282329505089:ios:c7daac4f32a30bd6e095c0',
    messagingSenderId: '282329505089',
    projectId: 'pard-5th-hw',
    storageBucket: 'pard-5th-hw.appspot.com',
    iosClientId: '282329505089-1sphmqf76q1r43s3macms7cd5hkb82jm.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAUDwnHHp2NismOqoGT2eAYYlDFRLoYQys',
    appId: '1:282329505089:ios:c7daac4f32a30bd6e095c0',
    messagingSenderId: '282329505089',
    projectId: 'pard-5th-hw',
    storageBucket: 'pard-5th-hw.appspot.com',
    iosClientId: '282329505089-1sphmqf76q1r43s3macms7cd5hkb82jm.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );
}
