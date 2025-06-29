part of 'global_refresh_bloc.dart';

@freezed
class GlobalRefreshState with _$GlobalRefreshState {
  const factory GlobalRefreshState({
    @Default(false) bool refreshAds,
  }) = _GlobalRefreshState;
}
