// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCWyGKmkzCTsRx9cZpZzrbQiVKF-jwcEic',
    appId: '1:876508160829:web:08bbb326eb50f1b5e6db54',
    messagingSenderId: '876508160829',
    projectId: 'carapp-f0675',
    authDomain: 'carapp-f0675.firebaseapp.com',
    storageBucket: 'carapp-f0675.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB6hjazVovu8dpXX7Cov57gBVuRSCtzggw',
    appId: '1:876508160829:android:4fcb2f3660ea394de6db54',
    messagingSenderId: '876508160829',
    projectId: 'carapp-f0675',
    storageBucket: 'carapp-f0675.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbPptDbftXiz_ak8HlWSiYkJxGKvVFOjk',
    appId: '1:876508160829:ios:b51e67a8124d68b3e6db54',
    messagingSenderId: '876508160829',
    projectId: 'carapp-f0675',
    storageBucket: 'carapp-f0675.appspot.com',
    iosBundleId: 'com.example.carApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbPptDbftXiz_ak8HlWSiYkJxGKvVFOjk',
    appId: '1:876508160829:ios:b51e67a8124d68b3e6db54',
    messagingSenderId: '876508160829',
    projectId: 'carapp-f0675',
    storageBucket: 'carapp-f0675.appspot.com',
    iosBundleId: 'com.example.carApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCWyGKmkzCTsRx9cZpZzrbQiVKF-jwcEic',
    appId: '1:876508160829:web:2c77136ed5ddfcabe6db54',
    messagingSenderId: '876508160829',
    projectId: 'carapp-f0675',
    authDomain: 'carapp-f0675.firebaseapp.com',
    storageBucket: 'carapp-f0675.appspot.com',
  );
}
