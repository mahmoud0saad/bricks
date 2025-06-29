import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptionsStaging {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptionsStaging have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptionsStaging have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptionsStaging have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptionsStaging have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptionsStaging are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMC9BMhO6YniAlfnjBhHwtQVp5NoUx2Mo',
    appId: '1:864251116078:android:cb5f931ca63878c0273dbf',
    messagingSenderId: '864251116078',
    projectId: 'agridemo-15d2b',
    databaseURL: 'https://agridemo-15d2b-default-rtdb.firebaseio.com',
    storageBucket: 'agridemo-15d2b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCIFbtFuXf9jCqcRDNYxVahh-YSWPOWbc',
    appId: '1:564247576462:ios:22536b19facaf2cd172edf',
    messagingSenderId: '564247576462',
    projectId: '{{{{package_name.snakeCase()}}}}ver2',
    databaseURL: 'https://{{{{package_name.snakeCase()}}}}ver2-default-rtdb.firebaseio.com',
    storageBucket: '{{{{package_name.snakeCase()}}}}ver2.firebasestorage.app',
    iosBundleId: 'com.aramwest.agrihubios.production',
  );
}
