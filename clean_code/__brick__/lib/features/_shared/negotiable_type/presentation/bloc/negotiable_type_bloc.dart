import 'package:{{package_name.snakeCase()}}/features/_shared/negotiable_type/presentation/enums/negotiable_selection_enum.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'negotiable_type_event.dart';
part 'negotiable_type_state.dart';
part 'negotiable_type_bloc.freezed.dart';

@injectable
class NegotiableTypeBloc
    extends Bloc<NegotiableTypeEvent, NegotiableTypeState> {
  NegotiableTypeBloc()
    : super(
        const NegotiableTypeState(
          usersTypes: [
            NegotiableSelectionEnum.negotiable,
            NegotiableSelectionEnum.nonNegotiable,
          ],
        ),
      ) {
    on<NegotiableTypeEvent>((event, emit) {
      event.when(started: _onStarted, changeUserTypes: _onChangeUserTypes);
    });
  }
  void _onStarted() {}

  void _onChangeUserTypes(NegotiableSelectionEnum? userType) {
    emit(state.copyWith(selectedItem: userType));
  }
}
