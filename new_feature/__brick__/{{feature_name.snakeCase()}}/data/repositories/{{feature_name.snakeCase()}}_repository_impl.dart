import 'package:agriunions/features/{{feature_name.snakeCase()}}/data/datasources/base_{{feature_name.snakeCase()}}_datasource.dart';
import 'package:agriunions/features/{{feature_name.snakeCase()}}/domain/repositories/base_{{feature_name.snakeCase()}}_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: Base{{feature_name.pascalCase()}}Repository)
class {{feature_name.pascalCase()}}RepositoryImpl implements Base{{feature_name.pascalCase()}}Repository {
  final Base{{feature_name.pascalCase()}}DataSource {{feature_name.camelCase()}}DataSource;

  {{feature_name.pascalCase()}}RepositoryImpl(this.{{feature_name.camelCase()}}DataSource);
 
}
