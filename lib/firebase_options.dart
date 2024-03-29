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
    apiKey: 'AIzaSyDyO_uLrQQfbiHA2MIL286stsBGK92pGQU',
    appId: '1:219420508449:web:be1c7ac985a58a08fbbe60',
    messagingSenderId: '219420508449',
    projectId: 'ecellhackathon-9c72a',
    authDomain: 'ecellhackathon-9c72a.firebaseapp.com',
    storageBucket: 'ecellhackathon-9c72a.appspot.com',
    measurementId: 'G-NG017Y5QMR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAoUDrWFaJ5ERpZ5PzSR_hEDBKcjj0UUlo',
    appId: '1:219420508449:android:49c7880ccf248264fbbe60',
    messagingSenderId: '219420508449',
    projectId: 'ecellhackathon-9c72a',
    storageBucket: 'ecellhackathon-9c72a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnL_MCPP6T7wQTPlL1LsYDAhT9aBzctUg',
    appId: '1:219420508449:ios:a3dd183ccf8b315afbbe60',
    messagingSenderId: '219420508449',
    projectId: 'ecellhackathon-9c72a',
    storageBucket: 'ecellhackathon-9c72a.appspot.com',
    iosBundleId: 'com.example.ecellhacks.ecellhackathonapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDnL_MCPP6T7wQTPlL1LsYDAhT9aBzctUg',
    appId: '1:219420508449:ios:2542071a7da86d9efbbe60',
    messagingSenderId: '219420508449',
    projectId: 'ecellhackathon-9c72a',
    storageBucket: 'ecellhackathon-9c72a.appspot.com',
    iosBundleId: 'com.example.ecellhacks.ecellhackathonapp.RunnerTests',
  );
}
