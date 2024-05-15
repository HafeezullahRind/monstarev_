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
    apiKey: 'AIzaSyBE873ifhD3j13e1MsRBFASC_WL_uNSxWU',
    appId: '1:737923656991:web:96137693a8cd52a4c1142a',
    messagingSenderId: '737923656991',
    projectId: 'monstarev-8e56b',
    authDomain: 'monstarev-8e56b.firebaseapp.com',
    storageBucket: 'monstarev-8e56b.appspot.com',
    measurementId: 'G-Z3956MPHD6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwGXVKDd8wwGFITqBY6jhjA059EHlzpmU',
    appId: '1:737923656991:android:d0b9f6aef2a5542bc1142a',
    messagingSenderId: '737923656991',
    projectId: 'monstarev-8e56b',
    storageBucket: 'monstarev-8e56b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASm0_0Luc5-weo-3YSNFOfIkDaMVMSpWg',
    appId: '1:737923656991:ios:9e6dd4c553405d2fc1142a',
    messagingSenderId: '737923656991',
    projectId: 'monstarev-8e56b',
    storageBucket: 'monstarev-8e56b.appspot.com',
    iosBundleId: 'com.example.monstarev',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyASm0_0Luc5-weo-3YSNFOfIkDaMVMSpWg',
    appId: '1:737923656991:ios:9e6dd4c553405d2fc1142a',
    messagingSenderId: '737923656991',
    projectId: 'monstarev-8e56b',
    storageBucket: 'monstarev-8e56b.appspot.com',
    iosBundleId: 'com.example.monstarev',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBE873ifhD3j13e1MsRBFASC_WL_uNSxWU',
    appId: '1:737923656991:web:2a54f6424e9efccbc1142a',
    messagingSenderId: '737923656991',
    projectId: 'monstarev-8e56b',
    authDomain: 'monstarev-8e56b.firebaseapp.com',
    storageBucket: 'monstarev-8e56b.appspot.com',
    measurementId: 'G-RCGQH36JNN',
  );
}