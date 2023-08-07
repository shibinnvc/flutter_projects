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
    apiKey: 'AIzaSyDVqbhclaOtLE_vvEUqGLZqBI9v02AaqZ0',
    appId: '1:317378977823:web:3061c69b66c0293f09352a',
    messagingSenderId: '317378977823',
    projectId: 'flutterprojects-e49f2',
    authDomain: 'flutterprojects-e49f2.firebaseapp.com',
    storageBucket: 'flutterprojects-e49f2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCcLoaFmLGHvGzjkcFfC1cUemFcWIZdwQA',
    appId: '1:317378977823:android:9ef475504d93aaeb09352a',
    messagingSenderId: '317378977823',
    projectId: 'flutterprojects-e49f2',
    storageBucket: 'flutterprojects-e49f2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5b_KJThDhohYH0jyO_zqYfwJjHTOoIzs',
    appId: '1:317378977823:ios:24c9ef970903137a09352a',
    messagingSenderId: '317378977823',
    projectId: 'flutterprojects-e49f2',
    storageBucket: 'flutterprojects-e49f2.appspot.com',
    iosClientId:
        '317378977823-8t522e8irqisel91jl97om2urrbjfegp.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterProjects',
  );
}
