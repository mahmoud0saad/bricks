import 'dart:developer';
import 'dart:io';

import 'package:{{package_name.snakeCase()}}/core/enums/request_state.dart';
import 'package:{{package_name.snakeCase()}}/core/global_refresh_bloc/global_refresh_bloc.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/agri_ui_init.dart'; 
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/di/injection.dart';
import 'core/flavors/base_app_flavor.dart';
import 'core/helpers/notification_helper.dart';
import 'core/router/router.dart';
import 'core/theme/app_themes.dart';
import 'features/_shared/app_configurations/presentation/bloc/app_configuration_bloc.dart'; 

void main({BaseAppFlavor? flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies(flavor: flavor);
  try {
    await NotificationHelper.init();
  } catch (e) {
    log("message $e");
  }

  runApp(const MyApp());
}

GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return AgriUiInitializer(
      designSize: const Size(360, 694),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (ctx) => getIt.get<AppConfigurationBloc>()
              ..add(const AppConfigurationEvent.started()),
          ),
          BlocProvider(create: (context) => getIt.get<GlobalRefreshBloc>()),
        
        ],
        child: BlocListener<AppConfigurationBloc, AppConfigurationState>(
          listener: (context, state) {
            if (state.firebaseRequestState.isSuccess) {
              if (state.firebaseConfig?.enable ?? false) {
                if (Platform.isAndroid &&
                    (state.firebaseConfig?.androidUrl?.trim().isNotEmpty ??
                        false)) {
                  getIt.get<BaseAppFlavor>().updateUrl(
                        state.firebaseConfig!.androidUrl!,
                      );
                } else if (Platform.isIOS &&
                    (state.firebaseConfig?.iosUrl?.trim().isNotEmpty ??
                        false)) {
                  getIt.get<BaseAppFlavor>().updateUrl(
                        state.firebaseConfig!.iosUrl!,
                      );
                }
              }
            }
          },
          child:
              BlocSelector<AppConfigurationBloc, AppConfigurationState, Locale>(
            selector: (state) {
              return state.locale;
            },
            builder: (context, state) {
              return MaterialApp.router(
                title: getIt.get<BaseAppFlavor>().title,
                supportedLocales: S.delegate.supportedLocales,
                locale: state,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                debugShowCheckedModeBanner: false,
                theme: AppThemes.lightTheme,
                routerConfig: getIt.get<AppRouter>().config(),
              );
            },
          ),
        ),
      ),
    );
  }
}
