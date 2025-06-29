import 'package:injectable/injectable.dart';

import 'base_app_flavor.dart';

@singleton
class ProductionAppFlavor extends BaseAppFlavor {
  @override
  String get baseUrl => _url;

  @override
  String get title => "{{app_name}}-production";

  String _url = "https://{{base_url}}/";
  @override
  void updateUrl(String updatedUrl) {
    _url = updatedUrl;
    super.updateUrl(updatedUrl);
  }
}
