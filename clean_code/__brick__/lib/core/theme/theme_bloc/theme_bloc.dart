import 'package:{{package_name.snakeCase()}}/core/di/injection.dart';
import 'package:{{package_name.snakeCase()}}/core/storage/secure_storage.dart';
import 'package:{{package_name.snakeCase()}}/core/storage/storage_keys.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/arabic_theme.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/english_theme.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/typography_base.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const _ThemeState()) {
    on<ThemeEvent>((event, emit) async {
      await event.when(initValuUiKitEvent: initTextThemeEvent);
    });
  }

  initTextThemeEvent() async {
    final String? lang = await getIt.get<SecureStorage>().getValue(
      StorageKeys.activeLocale,
    );
    emit(state.copyWith(currentTheme: getThemeOfLang(lang)));
  }

  AgriTypographyTheme getThemeOfLang(String? lang) {
    switch (lang) {
      case "ar":
        return const AgriArabicTheme();
      default:
        return const AgriEnglishTheme();
    }
  }
}
