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
    apiKey: 'AIzaSyAjIetSN2MfUfn9gbjeKU97hoTLxFIPCTI',
    appId: '1:1032454984947:web:cbabfead05c88491ec5386',
    messagingSenderId: '1032454984947',
    projectId: 'pard-week4',
    authDomain: 'pard-week4.firebaseapp.com',
    storageBucket: 'pard-week4.appspot.com',
    measurementId: 'G-PJY1BCJTCC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUUDEUSAwTaj-SuUpEMIXaPOHXLAtxXxc',
    appId: '1:1032454984947:android:c8fa219b05b77be5ec5386',
    messagingSenderId: '1032454984947',
    projectId: 'pard-week4',
    storageBucket: 'pard-week4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBGH9KxlbAf4HrnKWiO1-JQaOgLbnqftbk',
    appId: '1:1032454984947:ios:f37cc1d55573f684ec5386',
    messagingSenderId: '1032454984947',
    projectId: 'pard-week4',
    storageBucket: 'pard-week4.appspot.com',
    iosClientId: '1032454984947-hn129rctcp0mbuekj3qs4a13s85rsg4s.apps.googleusercontent.com',
    iosBundleId: 'com.example.seminaWeek4',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBGH9KxlbAf4HrnKWiO1-JQaOgLbnqftbk',
    appId: '1:1032454984947:ios:f37cc1d55573f684ec5386',
    messagingSenderId: '1032454984947',
    projectId: 'pard-week4',
    storageBucket: 'pard-week4.appspot.com',
    iosClientId: '1032454984947-hn129rctcp0mbuekj3qs4a13s85rsg4s.apps.googleusercontent.com',
    iosBundleId: 'com.example.seminaWeek4',
  );
}
