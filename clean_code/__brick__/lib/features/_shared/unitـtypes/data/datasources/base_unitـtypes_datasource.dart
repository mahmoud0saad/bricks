import 'package:{{package_name.snakeCase()}}/core/usecase/base_usecase.dart';
import 'package:{{package_name.snakeCase()}}/features/_shared/unit%D9%80types/data/models/unit_type_model.dart'
    show UnitTypeModel;

abstract class BaseUnitTypesDataSource {
  Future<List<UnitTypeModel>> getUnitTypesList(NoParams params);
  // Define the abstract methods here for your data source.
}
