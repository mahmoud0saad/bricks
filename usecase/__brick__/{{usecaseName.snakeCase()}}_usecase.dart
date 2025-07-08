import 'package:agriunions/core/errors/failure.dart';
import 'package:agriunions/core/usecase/base_usecase.dart';
import 'package:agriunions/features/{{feature.snakeCase()}}/domain/repositories/base_{{feature.snakeCase()}}_repository.dart';
import 'package:agriunions/features/{{feature.snakeCase()}}/domain/usecase/params/{{paramsName.snakeCase()}}/{{paramsName.snakeCase()}}.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
 
@injectable
class {{usecaseName.pascalCase()}}Usecase extends BaseUseCase<{{#isList}}List<{{/isList}}{{modelName.pascalCase()}}{{#isList}}>{{/isList}}, {{paramsName.pascalCase()}}>  {
  {{usecaseName.pascalCase()}}Usecase(this.{{feature.camelCase()}}Repository);
  Base{{feature.pascalCase()}}Repository {{feature.camelCase()}}Repository;

  @override
  Future<Either<Failure, {{#isList}}List<{{/isList}}{{modelName.pascalCase()}}{{#isList}}>{{/isList}}>> call({{paramsName.pascalCase()}} params) {
    return {{feature.camelCase()}}Repository.{{usecaseName.camelCase()}}(params);
  }
}
