import 'package:{{package_name.snakeCase()}}/core/network/network_interface.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/network/api_strings.dart';
import '../../../../../core/usecase/base_usecase.dart';
import '../models/unit_type_model.dart';
import 'base_unitـtypes_datasource.dart';

@Injectable(as: BaseUnitTypesDataSource)
class BaseUnitTypesDataSourceImpl implements BaseUnitTypesDataSource {
  BaseUnitTypesDataSourceImpl(this._network);
  final BaseNetwork _network;
  @override
  Future<List<UnitTypeModel>> getUnitTypesList(NoParams params) async {
    try {
      final response = await _network.get(
        ApiStrings.unitTypesUrl,
        queryParameters: {},
      );

      return response
          .map<UnitTypeModel>((e) => UnitTypeModel.fromJson(e))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
