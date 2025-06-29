// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_types_listing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UnitTypesListingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitTypesListingEventCopyWith<$Res> {
  factory $UnitTypesListingEventCopyWith(UnitTypesListingEvent value,
          $Res Function(UnitTypesListingEvent) then) =
      _$UnitTypesListingEventCopyWithImpl<$Res, UnitTypesListingEvent>;
}

/// @nodoc
class _$UnitTypesListingEventCopyWithImpl<$Res,
        $Val extends UnitTypesListingEvent>
    implements $UnitTypesListingEventCopyWith<$Res> {
  _$UnitTypesListingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitTypesListingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UnitTypesListingEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitTypesListingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UnitTypesListingEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UnitTypesListingEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$UnitTypesListingState {
  RequestState get requestState => throw _privateConstructorUsedError;
  List<UnitTypeModel> get unitTypesList => throw _privateConstructorUsedError;
  UnitTypeModel? get selectedUnitType => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  /// Create a copy of UnitTypesListingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnitTypesListingStateCopyWith<UnitTypesListingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitTypesListingStateCopyWith<$Res> {
  factory $UnitTypesListingStateCopyWith(UnitTypesListingState value,
          $Res Function(UnitTypesListingState) then) =
      _$UnitTypesListingStateCopyWithImpl<$Res, UnitTypesListingState>;
  @useResult
  $Res call(
      {RequestState requestState,
      List<UnitTypeModel> unitTypesList,
      UnitTypeModel? selectedUnitType,
      String? errorMsg});

  $UnitTypeModelCopyWith<$Res>? get selectedUnitType;
}

/// @nodoc
class _$UnitTypesListingStateCopyWithImpl<$Res,
        $Val extends UnitTypesListingState>
    implements $UnitTypesListingStateCopyWith<$Res> {
  _$UnitTypesListingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitTypesListingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestState = null,
    Object? unitTypesList = null,
    Object? selectedUnitType = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      unitTypesList: null == unitTypesList
          ? _value.unitTypesList
          : unitTypesList // ignore: cast_nullable_to_non_nullable
              as List<UnitTypeModel>,
      selectedUnitType: freezed == selectedUnitType
          ? _value.selectedUnitType
          : selectedUnitType // ignore: cast_nullable_to_non_nullable
              as UnitTypeModel?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UnitTypesListingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnitTypeModelCopyWith<$Res>? get selectedUnitType {
    if (_value.selectedUnitType == null) {
      return null;
    }

    return $UnitTypeModelCopyWith<$Res>(_value.selectedUnitType!, (value) {
      return _then(_value.copyWith(selectedUnitType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnitTypesListingStateImplCopyWith<$Res>
    implements $UnitTypesListingStateCopyWith<$Res> {
  factory _$$UnitTypesListingStateImplCopyWith(
          _$UnitTypesListingStateImpl value,
          $Res Function(_$UnitTypesListingStateImpl) then) =
      __$$UnitTypesListingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState requestState,
      List<UnitTypeModel> unitTypesList,
      UnitTypeModel? selectedUnitType,
      String? errorMsg});

  @override
  $UnitTypeModelCopyWith<$Res>? get selectedUnitType;
}

/// @nodoc
class __$$UnitTypesListingStateImplCopyWithImpl<$Res>
    extends _$UnitTypesListingStateCopyWithImpl<$Res,
        _$UnitTypesListingStateImpl>
    implements _$$UnitTypesListingStateImplCopyWith<$Res> {
  __$$UnitTypesListingStateImplCopyWithImpl(_$UnitTypesListingStateImpl _value,
      $Res Function(_$UnitTypesListingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitTypesListingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestState = null,
    Object? unitTypesList = null,
    Object? selectedUnitType = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(_$UnitTypesListingStateImpl(
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      unitTypesList: null == unitTypesList
          ? _value._unitTypesList
          : unitTypesList // ignore: cast_nullable_to_non_nullable
              as List<UnitTypeModel>,
      selectedUnitType: freezed == selectedUnitType
          ? _value.selectedUnitType
          : selectedUnitType // ignore: cast_nullable_to_non_nullable
              as UnitTypeModel?,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnitTypesListingStateImpl implements _UnitTypesListingState {
  const _$UnitTypesListingStateImpl(
      {this.requestState = RequestState.initial,
      final List<UnitTypeModel> unitTypesList = const [],
      this.selectedUnitType,
      this.errorMsg})
      : _unitTypesList = unitTypesList;

  @override
  @JsonKey()
  final RequestState requestState;
  final List<UnitTypeModel> _unitTypesList;
  @override
  @JsonKey()
  List<UnitTypeModel> get unitTypesList {
    if (_unitTypesList is EqualUnmodifiableListView) return _unitTypesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unitTypesList);
  }

  @override
  final UnitTypeModel? selectedUnitType;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'UnitTypesListingState(requestState: $requestState, unitTypesList: $unitTypesList, selectedUnitType: $selectedUnitType, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitTypesListingStateImpl &&
            (identical(other.requestState, requestState) ||
                other.requestState == requestState) &&
            const DeepCollectionEquality()
                .equals(other._unitTypesList, _unitTypesList) &&
            (identical(other.selectedUnitType, selectedUnitType) ||
                other.selectedUnitType == selectedUnitType) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestState,
      const DeepCollectionEquality().hash(_unitTypesList),
      selectedUnitType,
      errorMsg);

  /// Create a copy of UnitTypesListingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitTypesListingStateImplCopyWith<_$UnitTypesListingStateImpl>
      get copyWith => __$$UnitTypesListingStateImplCopyWithImpl<
          _$UnitTypesListingStateImpl>(this, _$identity);
}

abstract class _UnitTypesListingState implements UnitTypesListingState {
  const factory _UnitTypesListingState(
      {final RequestState requestState,
      final List<UnitTypeModel> unitTypesList,
      final UnitTypeModel? selectedUnitType,
      final String? errorMsg}) = _$UnitTypesListingStateImpl;

  @override
  RequestState get requestState;
  @override
  List<UnitTypeModel> get unitTypesList;
  @override
  UnitTypeModel? get selectedUnitType;
  @override
  String? get errorMsg;

  /// Create a copy of UnitTypesListingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitTypesListingStateImplCopyWith<_$UnitTypesListingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
