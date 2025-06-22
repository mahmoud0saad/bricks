import 'package:agriunions/core/network/api_strings.dart';
import 'package:agriunions/core/network/network_interface.dart';
import 'package:agriunions/features/{{feature_name.snakeCase()}}/data/datasources/base_{{feature_name.snakeCase()}}_datasource.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: Base{{feature_name.pascalCase()}}DataSource)
class {{feature_name.pascalCase()}}DataSourceImpl implements Base{{feature_name.pascalCase()}}DataSource {
  final BaseNetwork _baseNetwork;

  {{feature_name.pascalCase()}}DataSourceImpl(this._baseNetwork);
 
}
