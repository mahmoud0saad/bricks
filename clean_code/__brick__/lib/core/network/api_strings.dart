import 'package:{{package_name.snakeCase()}}/core/di/injection.dart';

import '../flavors/base_app_flavor.dart';

class ApiStrings {
  static String apiUrl = getIt.get<BaseAppFlavor>().baseUrl;
  static const String unitTypesUrl = "unit_types";

   
}
