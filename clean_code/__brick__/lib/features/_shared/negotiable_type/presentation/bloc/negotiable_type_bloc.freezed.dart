// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'negotiable_type_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NegotiableTypeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(NegotiableSelectionEnum? negotiableSelectionEnum)
        changeUserTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(NegotiableSelectionEnum? negotiableSelectionEnum)?
        changeUserTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(NegotiableSelectionEnum? negotiableSelectionEnum)?
        changeUserTypes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeUserTypes value) changeUserTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeUserTypes value)? changeUserTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeUserTypes value)? changeUserTypes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NegotiableTypeEventCopyWith<$Res> {
  factory $NegotiableTypeEventCopyWith(
          NegotiableTypeEvent value, $Res Function(NegotiableTypeEvent) then) =
      _$NegotiableTypeEventCopyWithImpl<$Res, NegotiableTypeEvent>;
}

/// @nodoc
class _$NegotiableTypeEventCopyWithImpl<$Res, $Val extends NegotiableTypeEvent>
    implements $NegotiableTypeEventCopyWith<$Res> {
  _$NegotiableTypeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NegotiableTypeEvent
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
    extends _$NegotiableTypeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NegotiableTypeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'NegotiableTypeEvent.started()';
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
    required TResult Function(NegotiableSelectionEnum? negotiableSelectionEnum)
        changeUserTypes,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(NegotiableSelectionEnum? negotiableSelectionEnum)?
        changeUserTypes,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(NegotiableSelectionEnum? negotiableSelectionEnum)?
        changeUserTypes,
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
    required TResult Function(_ChangeUserTypes value) changeUserTypes,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeUserTypes value)? changeUserTypes,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeUserTypes value)? changeUserTypes,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NegotiableTypeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangeUserTypesImplCopyWith<$Res> {
  factory _$$ChangeUserTypesImplCopyWith(_$ChangeUserTypesImpl value,
          $Res Function(_$ChangeUserTypesImpl) then) =
      __$$ChangeUserTypesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NegotiableSelectionEnum? negotiableSelectionEnum});
}

/// @nodoc
class __$$ChangeUserTypesImplCopyWithImpl<$Res>
    extends _$NegotiableTypeEventCopyWithImpl<$Res, _$ChangeUserTypesImpl>
    implements _$$ChangeUserTypesImplCopyWith<$Res> {
  __$$ChangeUserTypesImplCopyWithImpl(
      _$ChangeUserTypesImpl _value, $Res Function(_$ChangeUserTypesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NegotiableTypeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? negotiableSelectionEnum = freezed,
  }) {
    return _then(_$ChangeUserTypesImpl(
      freezed == negotiableSelectionEnum
          ? _value.negotiableSelectionEnum
          : negotiableSelectionEnum // ignore: cast_nullable_to_non_nullable
              as NegotiableSelectionEnum?,
    ));
  }
}

/// @nodoc

class _$ChangeUserTypesImpl implements _ChangeUserTypes {
  const _$ChangeUserTypesImpl(this.negotiableSelectionEnum);

  @override
  final NegotiableSelectionEnum? negotiableSelectionEnum;

  @override
  String toString() {
    return 'NegotiableTypeEvent.changeUserTypes(negotiableSelectionEnum: $negotiableSelectionEnum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUserTypesImpl &&
            (identical(
                    other.negotiableSelectionEnum, negotiableSelectionEnum) ||
                other.negotiableSelectionEnum == negotiableSelectionEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, negotiableSelectionEnum);

  /// Create a copy of NegotiableTypeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUserTypesImplCopyWith<_$ChangeUserTypesImpl> get copyWith =>
      __$$ChangeUserTypesImplCopyWithImpl<_$ChangeUserTypesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(NegotiableSelectionEnum? negotiableSelectionEnum)
        changeUserTypes,
  }) {
    return changeUserTypes(negotiableSelectionEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(NegotiableSelectionEnum? negotiableSelectionEnum)?
        changeUserTypes,
  }) {
    return changeUserTypes?.call(negotiableSelectionEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(NegotiableSelectionEnum? negotiableSelectionEnum)?
        changeUserTypes,
    required TResult orElse(),
  }) {
    if (changeUserTypes != null) {
      return changeUserTypes(negotiableSelectionEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeUserTypes value) changeUserTypes,
  }) {
    return changeUserTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeUserTypes value)? changeUserTypes,
  }) {
    return changeUserTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeUserTypes value)? changeUserTypes,
    required TResult orElse(),
  }) {
    if (changeUserTypes != null) {
      return changeUserTypes(this);
    }
    return orElse();
  }
}

abstract class _ChangeUserTypes implements NegotiableTypeEvent {
  const factory _ChangeUserTypes(
          final NegotiableSelectionEnum? negotiableSelectionEnum) =
      _$ChangeUserTypesImpl;

  NegotiableSelectionEnum? get negotiableSelectionEnum;

  /// Create a copy of NegotiableTypeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeUserTypesImplCopyWith<_$ChangeUserTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NegotiableTypeState {
  List<NegotiableSelectionEnum> get usersTypes =>
      throw _privateConstructorUsedError;
  NegotiableSelectionEnum? get selectedItem =>
      throw _privateConstructorUsedError;

  /// Create a copy of NegotiableTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NegotiableTypeStateCopyWith<NegotiableTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NegotiableTypeStateCopyWith<$Res> {
  factory $NegotiableTypeStateCopyWith(
          NegotiableTypeState value, $Res Function(NegotiableTypeState) then) =
      _$NegotiableTypeStateCopyWithImpl<$Res, NegotiableTypeState>;
  @useResult
  $Res call(
      {List<NegotiableSelectionEnum> usersTypes,
      NegotiableSelectionEnum? selectedItem});
}

/// @nodoc
class _$NegotiableTypeStateCopyWithImpl<$Res, $Val extends NegotiableTypeState>
    implements $NegotiableTypeStateCopyWith<$Res> {
  _$NegotiableTypeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NegotiableTypeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersTypes = null,
    Object? selectedItem = freezed,
  }) {
    return _then(_value.copyWith(
      usersTypes: null == usersTypes
          ? _value.usersTypes
          : usersTypes // ignore: cast_nullable_to_non_nullable
              as List<NegotiableSelectionEnum>,
      selectedItem: freezed == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as NegotiableSelectionEnum?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NegotiableTypeStateImplCopyWith<$Res>
    implements $NegotiableTypeStateCopyWith<$Res> {
  factory _$$NegotiableTypeStateImplCopyWith(_$NegotiableTypeStateImpl value,
          $Res Function(_$NegotiableTypeStateImpl) then) =
      __$$NegotiableTypeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NegotiableSelectionEnum> usersTypes,
      NegotiableSelectionEnum? selectedItem});
}

/// @nodoc
class __$$NegotiableTypeStateImplCopyWithImpl<$Res>
    extends _$NegotiableTypeStateCopyWithImpl<$Res, _$NegotiableTypeStateImpl>
    implements _$$NegotiableTypeStateImplCopyWith<$Res> {
  __$$NegotiableTypeStateImplCopyWithImpl(_$NegotiableTypeStateImpl _value,
      $Res Function(_$NegotiableTypeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NegotiableTypeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersTypes = null,
    Object? selectedItem = freezed,
  }) {
    return _then(_$NegotiableTypeStateImpl(
      usersTypes: null == usersTypes
          ? _value._usersTypes
          : usersTypes // ignore: cast_nullable_to_non_nullable
              as List<NegotiableSelectionEnum>,
      selectedItem: freezed == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as NegotiableSelectionEnum?,
    ));
  }
}

/// @nodoc

class _$NegotiableTypeStateImpl implements _NegotiableTypeState {
  const _$NegotiableTypeStateImpl(
      {final List<NegotiableSelectionEnum> usersTypes = const [],
      this.selectedItem})
      : _usersTypes = usersTypes;

  final List<NegotiableSelectionEnum> _usersTypes;
  @override
  @JsonKey()
  List<NegotiableSelectionEnum> get usersTypes {
    if (_usersTypes is EqualUnmodifiableListView) return _usersTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersTypes);
  }

  @override
  final NegotiableSelectionEnum? selectedItem;

  @override
  String toString() {
    return 'NegotiableTypeState(usersTypes: $usersTypes, selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NegotiableTypeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._usersTypes, _usersTypes) &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_usersTypes), selectedItem);

  /// Create a copy of NegotiableTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NegotiableTypeStateImplCopyWith<_$NegotiableTypeStateImpl> get copyWith =>
      __$$NegotiableTypeStateImplCopyWithImpl<_$NegotiableTypeStateImpl>(
          this, _$identity);
}

abstract class _NegotiableTypeState implements NegotiableTypeState {
  const factory _NegotiableTypeState(
      {final List<NegotiableSelectionEnum> usersTypes,
      final NegotiableSelectionEnum? selectedItem}) = _$NegotiableTypeStateImpl;

  @override
  List<NegotiableSelectionEnum> get usersTypes;
  @override
  NegotiableSelectionEnum? get selectedItem;

  /// Create a copy of NegotiableTypeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NegotiableTypeStateImplCopyWith<_$NegotiableTypeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
