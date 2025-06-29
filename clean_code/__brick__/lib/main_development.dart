import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/flavors/development_app_flavor.dart';
import 'firebase_options/firebase_options_dev.dart';
import 'main.dart' as app;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptionsDev.currentPlatform);

  app.main(flavor: DevelopmentAppFlavor());
}
