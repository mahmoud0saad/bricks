import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/usecase/base_usecase.dart';
import '../../data/models/unit_type_model.dart';

abstract class BaseUnitTypesRepository {
  Future<Either<Failure, List<UnitTypeModel>>> getUnitTypesList(
      NoParams params);
}
