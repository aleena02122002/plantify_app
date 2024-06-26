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
    apiKey: 'AIzaSyBc61DiqeA-pFvTrwXdLxMQ_uRYg_19xZ0',
    appId: '1:221640876641:web:90814afc54da43f0780020',
    messagingSenderId: '221640876641',
    projectId: 'plant-9b773',
    authDomain: 'plant-9b773.firebaseapp.com',
    storageBucket: 'plant-9b773.appspot.com',
    measurementId: 'G-CBX87TWGMK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBaHc36zH8lON2SQsuihqF1seNaqSvyA-8',
    appId: '1:221640876641:android:f92ee09503643c12780020',
    messagingSenderId: '221640876641',
    projectId: 'plant-9b773',
    storageBucket: 'plant-9b773.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAPEuDuWNPeg53HdU9pEaU0w13Uo8BRDU',
    appId: '1:221640876641:ios:e4c525d2315b7f0d780020',
    messagingSenderId: '221640876641',
    projectId: 'plant-9b773',
    storageBucket: 'plant-9b773.appspot.com',
    iosBundleId: 'com.example.plants',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAAPEuDuWNPeg53HdU9pEaU0w13Uo8BRDU',
    appId: '1:221640876641:ios:1d496bf411c2bdff780020',
    messagingSenderId: '221640876641',
    projectId: 'plant-9b773',
    storageBucket: 'plant-9b773.appspot.com',
    iosBundleId: 'com.example.plants.RunnerTests',
  );
}
