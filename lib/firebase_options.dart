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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCl0CDwn7LQ-KWm2ri4K7SVRnNgsxB30w4',
    appId: '1:23315825526:web:bb74bb94bb2d00e14d7057',
    messagingSenderId: '23315825526',
    projectId: 'my-coach-93c56',
    authDomain: 'my-coach-93c56.firebaseapp.com',
    databaseURL: 'https://my-coach-93c56-default-rtdb.firebaseio.com',
    storageBucket: 'my-coach-93c56.appspot.com',
    measurementId: 'G-NVYYLDPSGB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDzAPnCV8KADCfftS0Xm9dFdW7mR07Ly74',
    appId: '1:23315825526:android:b41a91308e81a5f14d7057',
    messagingSenderId: '23315825526',
    projectId: 'my-coach-93c56',
    databaseURL: 'https://my-coach-93c56-default-rtdb.firebaseio.com',
    storageBucket: 'my-coach-93c56.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDos1XydJF1Rb2BlcdRMIRIKY-vp3Iw7ss',
    appId: '1:23315825526:ios:7dfed35c191b0d9d4d7057',
    messagingSenderId: '23315825526',
    projectId: 'my-coach-93c56',
    databaseURL: 'https://my-coach-93c56-default-rtdb.firebaseio.com',
    storageBucket: 'my-coach-93c56.appspot.com',
    iosClientId: '23315825526-rkonf5br2ev4242t72ntaj57d3u9u4kr.apps.googleusercontent.com',
    iosBundleId: 'com.example.myCoachApp',
  );
}
