import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/flavors/production_app_flavor.dart';
import 'firebase_options/firebase_options_prduction.dart';
import 'main.dart' as app;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  app.main(flavor: ProductionAppFlavor());
}
