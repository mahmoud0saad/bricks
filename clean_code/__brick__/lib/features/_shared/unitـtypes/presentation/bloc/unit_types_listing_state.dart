part of 'unit_types_listing_bloc.dart';

@freezed
class UnitTypesListingState with _$UnitTypesListingState {
  const factory UnitTypesListingState({
    @Default(RequestState.initial) RequestState requestState,
    @Default([]) List<UnitTypeModel> unitTypesList,
    UnitTypeModel? selectedUnitType,
    String? errorMsg,
  }) = _UnitTypesListingState;
}
