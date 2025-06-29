part of 'negotiable_type_bloc.dart';

@freezed
class NegotiableTypeEvent with _$NegotiableTypeEvent {
  const factory NegotiableTypeEvent.started() = _Started;
  const factory NegotiableTypeEvent.changeUserTypes(NegotiableSelectionEnum? negotiableSelectionEnum)= _ChangeUserTypes;
}