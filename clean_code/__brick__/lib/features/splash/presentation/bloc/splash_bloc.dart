import 'package:{{package_name.snakeCase()}}/core/enums/request_state.dart';
import 'package:{{package_name.snakeCase()}}/core/network/token_handler.dart';
import 'package:{{package_name.snakeCase()}}/core/storage/secure_storage.dart';
import 'package:{{package_name.snakeCase()}}/core/storage/storage_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(this.tokenHandler, this.secureStorage )
      : super(const SplashState()) {
    on<SplashEvent>((event, emit) {
      event.when(started: started);
    });
  }


  SecureStorage secureStorage;
  final TokenHandler tokenHandler;
  Future<void> started() async {
    if (await _checkIfFirstOpen()) {
      emit(state.copyWith(request: RequestState.success, isAppFirstOpen: true));
    }
    final token = await tokenHandler.getUserToken();
    if (token?.isEmpty ?? true) {
      emit(state.copyWith(request: RequestState.success));
    } else {
      emit(state.copyWith(
          request: RequestState.success, isUserNeedLogin: false));
    }
  }

  Future<bool> _checkIfFirstOpen() async {
    final String? isFirstOpen = await secureStorage.getValue(
      StorageKeys.isAppFirstOpen,
    );

    if (isFirstOpen == null) {
      // First time opening, set it to "false"
      await secureStorage.setValue(StorageKeys.isAppFirstOpen, "false");
      return true;
    }
    return false;
  }
}
