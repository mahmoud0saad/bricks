import 'package:{{package_name.snakeCase()}}/core/network/network_interface.dart';
import 'package:injectable/injectable.dart';

import 'base_app_configurations_datasource.dart';

@Injectable(as: BaseAppConfigurationsDataSource)
class AppConfigurationsDataSourceImpl
    implements BaseAppConfigurationsDataSource {
  AppConfigurationsDataSourceImpl(this._network);
  final BaseNetwork _network;
 
}
