// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_configuration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppConfigurationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Locale locale) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Locale locale)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigurationEventCopyWith<$Res> {
  factory $AppConfigurationEventCopyWith(AppConfigurationEvent value,
          $Res Function(AppConfigurationEvent) then) =
      _$AppConfigurationEventCopyWithImpl<$Res, AppConfigurationEvent>;
}

/// @nodoc
class _$AppConfigurationEventCopyWithImpl<$Res,
        $Val extends AppConfigurationEvent>
    implements $AppConfigurationEventCopyWith<$Res> {
  _$AppConfigurationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppConfigurationEvent
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
    extends _$AppConfigurationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigurationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AppConfigurationEvent.started()';
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
    required TResult Function(Locale locale) changeLocale,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Locale locale)? changeLocale,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Locale locale)? changeLocale,
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
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppConfigurationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangeLocaleImplCopyWith<$Res> {
  factory _$$ChangeLocaleImplCopyWith(
          _$ChangeLocaleImpl value, $Res Function(_$ChangeLocaleImpl) then) =
      __$$ChangeLocaleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$ChangeLocaleImplCopyWithImpl<$Res>
    extends _$AppConfigurationEventCopyWithImpl<$Res, _$ChangeLocaleImpl>
    implements _$$ChangeLocaleImplCopyWith<$Res> {
  __$$ChangeLocaleImplCopyWithImpl(
      _$ChangeLocaleImpl _value, $Res Function(_$ChangeLocaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigurationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$ChangeLocaleImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$ChangeLocaleImpl implements _ChangeLocale {
  const _$ChangeLocaleImpl({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'AppConfigurationEvent.changeLocale(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLocaleImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  /// Create a copy of AppConfigurationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      __$$ChangeLocaleImplCopyWithImpl<_$ChangeLocaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Locale locale) changeLocale,
  }) {
    return changeLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Locale locale)? changeLocale,
  }) {
    return changeLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Locale locale)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeLocale value) changeLocale,
  }) {
    return changeLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeLocale value)? changeLocale,
  }) {
    return changeLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeLocale value)? changeLocale,
    required TResult orElse(),
  }) {
    if (changeLocale != null) {
      return changeLocale(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocale implements AppConfigurationEvent {
  const factory _ChangeLocale({required final Locale locale}) =
      _$ChangeLocaleImpl;

  Locale get locale;

  /// Create a copy of AppConfigurationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLocaleImplCopyWith<_$ChangeLocaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppConfigurationState {
  RequestState get firebaseRequestState => throw _privateConstructorUsedError;
  RequestState get appConfigurationRequestState =>
      throw _privateConstructorUsedError;
  FirebaseConfModel? get firebaseConfig => throw _privateConstructorUsedError;
  AppHealthyModel? get appHealthyConfig => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;

  /// Create a copy of AppConfigurationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppConfigurationStateCopyWith<AppConfigurationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigurationStateCopyWith<$Res> {
  factory $AppConfigurationStateCopyWith(AppConfigurationState value,
          $Res Function(AppConfigurationState) then) =
      _$AppConfigurationStateCopyWithImpl<$Res, AppConfigurationState>;
  @useResult
  $Res call(
      {RequestState firebaseRequestState,
      RequestState appConfigurationRequestState,
      FirebaseConfModel? firebaseConfig,
      AppHealthyModel? appHealthyConfig,
      Locale locale});

  $FirebaseConfModelCopyWith<$Res>? get firebaseConfig;
  $AppHealthyModelCopyWith<$Res>? get appHealthyConfig;
}

/// @nodoc
class _$AppConfigurationStateCopyWithImpl<$Res,
        $Val extends AppConfigurationState>
    implements $AppConfigurationStateCopyWith<$Res> {
  _$AppConfigurationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppConfigurationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseRequestState = null,
    Object? appConfigurationRequestState = null,
    Object? firebaseConfig = freezed,
    Object? appHealthyConfig = freezed,
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      firebaseRequestState: null == firebaseRequestState
          ? _value.firebaseRequestState
          : firebaseRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      appConfigurationRequestState: null == appConfigurationRequestState
          ? _value.appConfigurationRequestState
          : appConfigurationRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      firebaseConfig: freezed == firebaseConfig
          ? _value.firebaseConfig
          : firebaseConfig // ignore: cast_nullable_to_non_nullable
              as FirebaseConfModel?,
      appHealthyConfig: freezed == appHealthyConfig
          ? _value.appHealthyConfig
          : appHealthyConfig // ignore: cast_nullable_to_non_nullable
              as AppHealthyModel?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }

  /// Create a copy of AppConfigurationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FirebaseConfModelCopyWith<$Res>? get firebaseConfig {
    if (_value.firebaseConfig == null) {
      return null;
    }

    return $FirebaseConfModelCopyWith<$Res>(_value.firebaseConfig!, (value) {
      return _then(_value.copyWith(firebaseConfig: value) as $Val);
    });
  }

  /// Create a copy of AppConfigurationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppHealthyModelCopyWith<$Res>? get appHealthyConfig {
    if (_value.appHealthyConfig == null) {
      return null;
    }

    return $AppHealthyModelCopyWith<$Res>(_value.appHealthyConfig!, (value) {
      return _then(_value.copyWith(appHealthyConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppConfigurationStateImplCopyWith<$Res>
    implements $AppConfigurationStateCopyWith<$Res> {
  factory _$$AppConfigurationStateImplCopyWith(
          _$AppConfigurationStateImpl value,
          $Res Function(_$AppConfigurationStateImpl) then) =
      __$$AppConfigurationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState firebaseRequestState,
      RequestState appConfigurationRequestState,
      FirebaseConfModel? firebaseConfig,
      AppHealthyModel? appHealthyConfig,
      Locale locale});

  @override
  $FirebaseConfModelCopyWith<$Res>? get firebaseConfig;
  @override
  $AppHealthyModelCopyWith<$Res>? get appHealthyConfig;
}

/// @nodoc
class __$$AppConfigurationStateImplCopyWithImpl<$Res>
    extends _$AppConfigurationStateCopyWithImpl<$Res,
        _$AppConfigurationStateImpl>
    implements _$$AppConfigurationStateImplCopyWith<$Res> {
  __$$AppConfigurationStateImplCopyWithImpl(_$AppConfigurationStateImpl _value,
      $Res Function(_$AppConfigurationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigurationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseRequestState = null,
    Object? appConfigurationRequestState = null,
    Object? firebaseConfig = freezed,
    Object? appHealthyConfig = freezed,
    Object? locale = null,
  }) {
    return _then(_$AppConfigurationStateImpl(
      firebaseRequestState: null == firebaseRequestState
          ? _value.firebaseRequestState
          : firebaseRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      appConfigurationRequestState: null == appConfigurationRequestState
          ? _value.appConfigurationRequestState
          : appConfigurationRequestState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      firebaseConfig: freezed == firebaseConfig
          ? _value.firebaseConfig
          : firebaseConfig // ignore: cast_nullable_to_non_nullable
              as FirebaseConfModel?,
      appHealthyConfig: freezed == appHealthyConfig
          ? _value.appHealthyConfig
          : appHealthyConfig // ignore: cast_nullable_to_non_nullable
              as AppHealthyModel?,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$AppConfigurationStateImpl implements _AppConfigurationState {
  const _$AppConfigurationStateImpl(
      {this.firebaseRequestState = RequestState.initial,
      this.appConfigurationRequestState = RequestState.initial,
      this.firebaseConfig,
      this.appHealthyConfig,
      this.locale = const Locale("en")});

  @override
  @JsonKey()
  final RequestState firebaseRequestState;
  @override
  @JsonKey()
  final RequestState appConfigurationRequestState;
  @override
  final FirebaseConfModel? firebaseConfig;
  @override
  final AppHealthyModel? appHealthyConfig;
  @override
  @JsonKey()
  final Locale locale;

  @override
  String toString() {
    return 'AppConfigurationState(firebaseRequestState: $firebaseRequestState, appConfigurationRequestState: $appConfigurationRequestState, firebaseConfig: $firebaseConfig, appHealthyConfig: $appHealthyConfig, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigurationStateImpl &&
            (identical(other.firebaseRequestState, firebaseRequestState) ||
                other.firebaseRequestState == firebaseRequestState) &&
            (identical(other.appConfigurationRequestState,
                    appConfigurationRequestState) ||
                other.appConfigurationRequestState ==
                    appConfigurationRequestState) &&
            (identical(other.firebaseConfig, firebaseConfig) ||
                other.firebaseConfig == firebaseConfig) &&
            (identical(other.appHealthyConfig, appHealthyConfig) ||
                other.appHealthyConfig == appHealthyConfig) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firebaseRequestState,
      appConfigurationRequestState, firebaseConfig, appHealthyConfig, locale);

  /// Create a copy of AppConfigurationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigurationStateImplCopyWith<_$AppConfigurationStateImpl>
      get copyWith => __$$AppConfigurationStateImplCopyWithImpl<
          _$AppConfigurationStateImpl>(this, _$identity);
}

abstract class _AppConfigurationState implements AppConfigurationState {
  const factory _AppConfigurationState(
      {final RequestState firebaseRequestState,
      final RequestState appConfigurationRequestState,
      final FirebaseConfModel? firebaseConfig,
      final AppHealthyModel? appHealthyConfig,
      final Locale locale}) = _$AppConfigurationStateImpl;

  @override
  RequestState get firebaseRequestState;
  @override
  RequestState get appConfigurationRequestState;
  @override
  FirebaseConfModel? get firebaseConfig;
  @override
  AppHealthyModel? get appHealthyConfig;
  @override
  Locale get locale;

  /// Create a copy of AppConfigurationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppConfigurationStateImplCopyWith<_$AppConfigurationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
