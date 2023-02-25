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
    apiKey: 'AIzaSyBiFAcjeB4SehVpOHjd44lqztCq1XGZP7c',
    appId: '1:427808479977:web:bdb90f691924da8ebbee78',
    messagingSenderId: '427808479977',
    projectId: 'citysync-72be1',
    authDomain: 'citysync-72be1.firebaseapp.com',
    storageBucket: 'citysync-72be1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBs2O6maTWYj4aH1UH78mYCClXPTQ-0QBE',
    appId: '1:427808479977:android:a0ae3f2f9ac332c5bbee78',
    messagingSenderId: '427808479977',
    projectId: 'citysync-72be1',
    storageBucket: 'citysync-72be1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDMPv2UdQ7oyu7eOC9YYK4AWKt6LePr_sA',
    appId: '1:427808479977:ios:ba12da3d5e5a5ee5bbee78',
    messagingSenderId: '427808479977',
    projectId: 'citysync-72be1',
    storageBucket: 'citysync-72be1.appspot.com',
    iosClientId: '427808479977-n12qggklj2t6jfq9bp536rgvdcugbp7n.apps.googleusercontent.com',
    iosBundleId: 'com.example.citysync',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDMPv2UdQ7oyu7eOC9YYK4AWKt6LePr_sA',
    appId: '1:427808479977:ios:ba12da3d5e5a5ee5bbee78',
    messagingSenderId: '427808479977',
    projectId: 'citysync-72be1',
    storageBucket: 'citysync-72be1.appspot.com',
    iosClientId: '427808479977-n12qggklj2t6jfq9bp536rgvdcugbp7n.apps.googleusercontent.com',
    iosBundleId: 'com.example.citysync',
  );
}
