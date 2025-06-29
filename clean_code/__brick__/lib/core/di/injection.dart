import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../flavors/base_app_flavor.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies({BaseAppFlavor? flavor}) async {
 
  if (flavor != null) {
    getIt.registerSingleton<BaseAppFlavor>(flavor);
  }

  getIt.init();
}
