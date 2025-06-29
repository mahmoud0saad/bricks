import 'package:{{package_name.snakeCase()}}/core/errors/failure.dart';
import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/exception_extentions.dart';
import 'package:{{package_name.snakeCase()}}/core/usecase/base_usecase.dart';
import 'package:{{package_name.snakeCase()}}/features/_shared/app_configurations/data/models/app-healthy-model/app_healthy_model.dart';
import 'package:{{package_name.snakeCase()}}/features/_shared/app_configurations/data/models/firebase-conf-model/firebase_conf_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/base_app_configurations_repository.dart';
import '../datasources/base_app_configurations_datasource.dart';

@Injectable(as: BaseAppConfigurationsRepository)
class AppConfigurationsRepositoryImpl
    implements BaseAppConfigurationsRepository {
  AppConfigurationsRepositoryImpl(this._dataSource);
  final BaseAppConfigurationsDataSource _dataSource;
 
}
