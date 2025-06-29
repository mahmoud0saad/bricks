import 'package:{{package_name.snakeCase()}}/core/errors/failure.dart';
import 'package:{{package_name.snakeCase()}}/core/usecase/base_usecase.dart';
import 'package:{{package_name.snakeCase()}}/features/_shared/unit%D9%80types/data/models/unit_type_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../repositories/base_unitـtypes_repository.dart';

@injectable
class GetUnitTypesListUscase
    extends BaseUseCase<List<UnitTypeModel>, NoParams> {
  GetUnitTypesListUscase(this._repository);
  final BaseUnitTypesRepository _repository;
  @override
  Future<Either<Failure, List<UnitTypeModel>>> call(NoParams params) async {
    return _repository.getUnitTypesList(params);
  }
}
