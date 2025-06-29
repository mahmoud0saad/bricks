import 'package:{{package_name.snakeCase()}}/core/di/injection.dart';
import 'package:{{package_name.snakeCase()}}/core/network/network_interface.dart';

abstract class BaseAppFlavor {
  String get baseUrl;
  String get title;

  void updateUrl(String updatedUrl) {
    getIt.get<BaseNetwork>().updateBaseUrl(updatedUrl);
  }
}
