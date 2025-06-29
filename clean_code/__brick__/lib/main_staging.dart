import 'package:{{package_name.snakeCase()}}/core/flavors/staging_app_flavor.dart';
import 'package:{{package_name.snakeCase()}}/firebase_options/firebase_options_staging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'main.dart' as app;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptionsStaging.currentPlatform,
  );

  app.main(flavor: StagingAppFlavor());
}
