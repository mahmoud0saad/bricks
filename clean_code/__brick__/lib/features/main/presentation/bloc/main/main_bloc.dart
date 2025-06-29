import 'package:{{package_name.snakeCase()}}/core/enums/request_state.dart';
import 'package:{{package_name.snakeCase()}}/features/main/domain/enums/app_nav_item_enum.dart';
import 'package:{{package_name.snakeCase()}}/features/main/presentation/models/bottom_tab_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState(routes: [], tabs: [])) {
    on<MainEvent>((event, emit) {
      event.when(started: _started, updateIndexEvent: _updateIndexEvent);
    });
  }
  _updateIndexEvent(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  _started( ) {
    List<PageRouteInfo> routes;
    List<BottomTabModel> tabs;

   
   
      routes = AppNavItem.getGuestScreen;
      tabs = AppNavItem.getGeustTaps;
    
    emit(
      state.copyWith(
        routes: routes,
        tabs: tabs,
        showAddIcon: false,
      ),
    );
  }
}
