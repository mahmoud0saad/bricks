import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'global_refresh_bloc.freezed.dart';
part 'global_refresh_event.dart';
part 'global_refresh_state.dart';

@injectable
class GlobalRefreshBloc extends Bloc<GlobalRefreshEvent, GlobalRefreshState> {
  GlobalRefreshBloc() : super(const GlobalRefreshState()) {
    on<GlobalRefreshEvent>((event, emit) {
      event.when(clearRefreshFlags: clearRefreshFlags, refreshAds: refreshAds);
    });
  }
  void refreshAds() {
    emit(state.copyWith(refreshAds: true));
  }

  void clearRefreshFlags() {
    emit(state.copyWith(refreshAds: false));
  }
}
