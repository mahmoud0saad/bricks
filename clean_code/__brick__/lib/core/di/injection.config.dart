// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/_shared/app_configurations/data/datasources/app_configurations_datasource_impl.dart'
    as _i816;
import '../../features/_shared/app_configurations/data/datasources/base_app_configurations_datasource.dart'
    as _i994;
import '../../features/_shared/app_configurations/data/repositories/app_configurations_repository_impl.dart'
    as _i533;
import '../../features/_shared/app_configurations/domain/repositories/base_app_configurations_repository.dart'
    as _i868;
import '../../features/_shared/app_configurations/presentation/bloc/app_configuration_bloc.dart'
    as _i154;
import '../../features/_shared/negotiable_type/data/datasources/base_user_type_datasource.dart'
    as _i210;
import '../../features/_shared/negotiable_type/data/datasources/user_type_datasource_impl.dart'
    as _i521;
import '../../features/_shared/negotiable_type/data/repositories/user_type_repository_impl.dart'
    as _i971;
import '../../features/_shared/negotiable_type/domain/repositories/base_user_type_repository.dart'
    as _i499;
import '../../features/_shared/negotiable_type/presentation/bloc/negotiable_type_bloc.dart'
    as _i21;
import '../../features/_shared/unit%D9%80types/data/datasources/base_unit%D9%80types_datasource.dart'
    as _i996;
import '../../features/_shared/unit%D9%80types/data/datasources/unit%D9%80types_datasource_impl.dart'
    as _i211;
import '../../features/_shared/unit%D9%80types/data/repositories/unit%D9%80types_repository_impl.dart'
    as _i436;
import '../../features/_shared/unit%D9%80types/domain/repositories/base_unit%D9%80types_repository.dart'
    as _i220;
import '../../features/_shared/unit%D9%80types/domain/usecase/get_unit_types_list_uscase.dart'
    as _i657;
import '../../features/_shared/unit%D9%80types/presentation/bloc/unit_types_listing_bloc.dart'
    as _i1067;
import '../../features/main/data/datasources/base_navigation_datasource.dart'
    as _i245;
import '../../features/main/data/datasources/navigation_datasource_impl.dart'
    as _i676;
import '../../features/main/data/repositories/navigation_repository_impl.dart'
    as _i78;
import '../../features/main/domain/repositories/base_navigation_repository.dart'
    as _i290;
import '../../features/main/presentation/bloc/main/main_bloc.dart' as _i817;
import '../../features/splash/data/datasources/base_splash_datasource.dart'
    as _i269;
import '../../features/splash/data/datasources/splash_datasource_impl.dart'
    as _i718;
import '../../features/splash/data/repositories/splash_repository_impl.dart'
    as _i554;
import '../../features/splash/domain/repositories/base_splash_repository.dart'
    as _i117;
import '../../features/splash/presentation/bloc/splash_bloc.dart' as _i442;
import '../flavors/development_app_flavor.dart' as _i663;
import '../flavors/production_app_flavor.dart' as _i165;
import '../flavors/staging_app_flavor.dart' as _i621;
import '../global_refresh_bloc/global_refresh_bloc.dart' as _i363;
import '../helpers/app_debuger.dart' as _i132;
import '../network/dio_helper.dart' as _i172;
import '../network/network_interface.dart' as _i490;
import '../network/token_handler.dart' as _i496;
import '../router/router.dart' as _i285;
import '../storage/secure_storage.dart' as _i619;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i363.GlobalRefreshBloc>(() => _i363.GlobalRefreshBloc());
    gh.factory<_i817.MainBloc>(() => _i817.MainBloc());
    gh.factory<_i21.NegotiableTypeBloc>(() => _i21.NegotiableTypeBloc());
    gh.singleton<_i663.DevelopmentAppFlavor>(
        () => _i663.DevelopmentAppFlavor());
    gh.singleton<_i165.ProductionAppFlavor>(() => _i165.ProductionAppFlavor());
    gh.singleton<_i621.StagingAppFlavor>(() => _i621.StagingAppFlavor());
    gh.singleton<_i132.AppDebuger>(() => _i132.AppDebuger());
    gh.singleton<_i285.AppRouter>(() => _i285.AppRouter());
    gh.singleton<_i619.SecureStorage>(() => _i619.SecureStorage());
    gh.factory<_i117.BaseSplashRepository>(() => _i554.SplashRepositoryImpl());
    gh.factory<_i154.AppConfigurationBloc>(
        () => _i154.AppConfigurationBloc(gh<_i619.SecureStorage>()));
    gh.factory<_i245.BaseNavigationDataSource>(
        () => _i676.NavigationDataSourceImpl());
    gh.singleton<_i496.TokenHandler>(
        () => _i496.TokenHandler(gh<_i619.SecureStorage>()));
    gh.factory<_i290.BaseNavigationRepository>(
        () => _i78.NavigationRepositoryImpl());
    gh.factory<_i210.BaseUserTypeDataSource>(
        () => _i521.UserTypeDataSourceImpl());
    gh.factory<_i499.BaseUserTypeRepository>(
        () => _i971.UserTypeRepositoryImpl());
    gh.factory<_i269.BaseSplashDataSource>(() => _i718.SplashDataSourceImpl());
    gh.lazySingleton<_i490.BaseNetwork>(() => _i172.DioHelper());
    gh.factory<_i996.BaseUnitTypesDataSource>(
        () => _i211.BaseUnitTypesDataSourceImpl(gh<_i490.BaseNetwork>()));
    gh.factory<_i994.BaseAppConfigurationsDataSource>(
        () => _i816.AppConfigurationsDataSourceImpl(gh<_i490.BaseNetwork>()));
    gh.factory<_i220.BaseUnitTypesRepository>(() =>
        _i436.BaseUnitTypesRepositoryImpl(gh<_i996.BaseUnitTypesDataSource>()));
    gh.factory<_i442.SplashBloc>(() => _i442.SplashBloc(
          gh<_i496.TokenHandler>(),
          gh<_i619.SecureStorage>(),
        ));
    gh.factory<_i868.BaseAppConfigurationsRepository>(() =>
        _i533.AppConfigurationsRepositoryImpl(
            gh<_i994.BaseAppConfigurationsDataSource>()));
    gh.factory<_i657.GetUnitTypesListUscase>(() =>
        _i657.GetUnitTypesListUscase(gh<_i220.BaseUnitTypesRepository>()));
    gh.factory<_i1067.UnitTypesListingBloc>(
        () => _i1067.UnitTypesListingBloc(gh<_i657.GetUnitTypesListUscase>()));
    return this;
  }
}
