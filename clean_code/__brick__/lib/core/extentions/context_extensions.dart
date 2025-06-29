 
import 'package:{{package_name.snakeCase()}}/features/_shared/app_configurations/presentation/bloc/app_configuration_bloc.dart';
import 'package:{{package_name.snakeCase()}}/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension ContextExtensions on BuildContext {
  bool get isArabicLocale {
    return Localizations.localeOf(navKey.currentState?.context ?? this) ==
        const Locale('ar');
  }

  bool get isEnglishLocale {
    return Localizations.localeOf(navKey.currentState?.context ?? this) ==
        const Locale('en');
  }

  String get langCode {
    return Localizations.localeOf(
      navKey.currentState?.context ?? this,
    ).languageCode;
  }

  changeLocale() {
    final appConfigBloc = read<AppConfigurationBloc>();

    if (Localizations.localeOf(this).languageCode == 'ar') {
      appConfigBloc
          .add(const AppConfigurationEvent.changeLocale(locale: Locale('en')));
    } else {
      appConfigBloc
          .add(const AppConfigurationEvent.changeLocale(locale: Locale('ar')));
    }
  }

 
}
