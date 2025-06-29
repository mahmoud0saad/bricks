import '../di/injection.dart';
import '../flavors/base_app_flavor.dart';

String? imageUrlFomrJson(String? url) {
  if (url != null) {
    return getIt.get<BaseAppFlavor>().baseUrl + url;
  }
  return null;
}
