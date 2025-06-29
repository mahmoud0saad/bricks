part of 'app_configuration_bloc.dart';

@freezed
class AppConfigurationState with _$AppConfigurationState {
  const factory AppConfigurationState({
    @Default(RequestState.initial) RequestState firebaseRequestState,
    @Default(RequestState.initial) RequestState appConfigurationRequestState,
    FirebaseConfModel? firebaseConfig,
    AppHealthyModel? appHealthyConfig,
    @Default(Locale("en")) Locale locale,
  }) = _AppConfigurationState;
}
