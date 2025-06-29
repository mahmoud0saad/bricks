import 'package:injectable/injectable.dart';

import 'base_app_flavor.dart';

@singleton
class StagingAppFlavor extends BaseAppFlavor {
  @override
  String get baseUrl => _url;

  @override
  String get title => "{{app_name}}-staging";

  String _url = "https://{{base_url}}/";
  @override
  void updateUrl(String updatedUrl) {
    _url = updatedUrl;
    super.updateUrl(updatedUrl);
  }
}
