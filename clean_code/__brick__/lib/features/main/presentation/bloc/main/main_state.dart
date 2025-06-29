part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState(
      {@Default(RequestState.initial) RequestState requestState,
      @Default(0) int currentIndex,
      @Default([]) List<PageRouteInfo> routes,
      @Default([]) List<BottomTabModel> tabs,
      @Default(false) bool showAddIcon}) = _MainState;
}
