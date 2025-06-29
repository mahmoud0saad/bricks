part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
   @Default(AgriEnglishTheme())  AgriTypographyTheme currentTheme,
  }) = _ThemeState;
}
