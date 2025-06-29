part of 'global_refresh_bloc.dart';

@freezed
class GlobalRefreshEvent with _$GlobalRefreshEvent {
  const factory GlobalRefreshEvent.clearRefreshFlags() = _ClearRefreshFlags;
  const factory GlobalRefreshEvent.refreshAds() = _RefreshAdsEvent;
 
}