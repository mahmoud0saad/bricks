part of 'negotiable_type_bloc.dart';

@freezed
class NegotiableTypeState with _$NegotiableTypeState {
  const factory NegotiableTypeState({
    @Default([]) List<NegotiableSelectionEnum> usersTypes,
    NegotiableSelectionEnum? selectedItem,
  }) = _NegotiableTypeState;
}
