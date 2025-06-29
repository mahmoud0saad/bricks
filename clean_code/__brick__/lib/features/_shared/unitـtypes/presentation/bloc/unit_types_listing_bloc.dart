// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:{{package_name.snakeCase()}}/features/_shared/unit%D9%80types/data/models/unit_type_model.dart';
import 'package:{{package_name.snakeCase()}}/features/_shared/unit%D9%80types/domain/usecase/get_unit_types_list_uscase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/enums/request_state.dart';
import '../../../../../core/usecase/base_usecase.dart';

part 'unit_types_listing_bloc.freezed.dart';
part 'unit_types_listing_event.dart';
part 'unit_types_listing_state.dart';

@injectable
class UnitTypesListingBloc
    extends Bloc<UnitTypesListingEvent, UnitTypesListingState> {
  UnitTypesListingBloc(this.getUnitTypesList)
    : super(const UnitTypesListingState()) {
    on<UnitTypesListingEvent>((event, emit) {
      event.when(started: _started);
    });
  }
  final GetUnitTypesListUscase getUnitTypesList;
  _started() async {
    emit(state.copyWith(requestState: RequestState.loading));
    final response = await getUnitTypesList(const NoParams());
    response.fold(
      (l) {
        emit(
          state.copyWith(requestState: RequestState.error, errorMsg: l.message),
        );
      },
      (r) {
        emit(
          state.copyWith(requestState: RequestState.success, unitTypesList: r),
        );
      },
    );
  }
}
