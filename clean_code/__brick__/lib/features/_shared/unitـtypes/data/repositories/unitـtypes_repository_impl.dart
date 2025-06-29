import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/exception_extentions.dart';
import 'package:{{package_name.snakeCase()}}/features/_shared/unit%D9%80types/data/models/unit_type_model.dart'
    show UnitTypeModel;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/usecase/base_usecase.dart';
import '../../domain/repositories/base_unitـtypes_repository.dart';
import '../datasources/base_unitـtypes_datasource.dart';

@Injectable(as: BaseUnitTypesRepository)
class BaseUnitTypesRepositoryImpl implements BaseUnitTypesRepository {
  BaseUnitTypesRepositoryImpl(this._dataSource);
  final BaseUnitTypesDataSource _dataSource;
  @override
  Future<Either<Failure, List<UnitTypeModel>>> getUnitTypesList(
    NoParams params,
  ) async {
    try {
      final List<UnitTypeModel> responseModel = await _dataSource
          .getUnitTypesList(params);

      return Right(responseModel);
    } on Exception catch (e) {
      return e.handleException<List<UnitTypeModel>>();
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
