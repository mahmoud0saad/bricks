// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_healthy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppHealthyModel _$AppHealthyModelFromJson(Map<String, dynamic> json) {
  return _AppHealthyModel.fromJson(json);
}

/// @nodoc
mixin _$AppHealthyModel {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "server_address", fromJson: serverAddressFromJson)
  String? get serverAddress => throw _privateConstructorUsedError;
  String? get environment => throw _privateConstructorUsedError;

  /// Serializes this AppHealthyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppHealthyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppHealthyModelCopyWith<AppHealthyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppHealthyModelCopyWith<$Res> {
  factory $AppHealthyModelCopyWith(
          AppHealthyModel value, $Res Function(AppHealthyModel) then) =
      _$AppHealthyModelCopyWithImpl<$Res, AppHealthyModel>;
  @useResult
  $Res call(
      {String? status,
      @JsonKey(name: "server_address", fromJson: serverAddressFromJson)
      String? serverAddress,
      String? environment});
}

/// @nodoc
class _$AppHealthyModelCopyWithImpl<$Res, $Val extends AppHealthyModel>
    implements $AppHealthyModelCopyWith<$Res> {
  _$AppHealthyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppHealthyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? serverAddress = freezed,
    Object? environment = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      serverAddress: freezed == serverAddress
          ? _value.serverAddress
          : serverAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppHealthyModelImplCopyWith<$Res>
    implements $AppHealthyModelCopyWith<$Res> {
  factory _$$AppHealthyModelImplCopyWith(_$AppHealthyModelImpl value,
          $Res Function(_$AppHealthyModelImpl) then) =
      __$$AppHealthyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      @JsonKey(name: "server_address", fromJson: serverAddressFromJson)
      String? serverAddress,
      String? environment});
}

/// @nodoc
class __$$AppHealthyModelImplCopyWithImpl<$Res>
    extends _$AppHealthyModelCopyWithImpl<$Res, _$AppHealthyModelImpl>
    implements _$$AppHealthyModelImplCopyWith<$Res> {
  __$$AppHealthyModelImplCopyWithImpl(
      _$AppHealthyModelImpl _value, $Res Function(_$AppHealthyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppHealthyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? serverAddress = freezed,
    Object? environment = freezed,
  }) {
    return _then(_$AppHealthyModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      serverAddress: freezed == serverAddress
          ? _value.serverAddress
          : serverAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppHealthyModelImpl implements _AppHealthyModel {
  const _$AppHealthyModelImpl(
      {this.status,
      @JsonKey(name: "server_address", fromJson: serverAddressFromJson)
      this.serverAddress,
      this.environment});

  factory _$AppHealthyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppHealthyModelImplFromJson(json);

  @override
  final String? status;
  @override
  @JsonKey(name: "server_address", fromJson: serverAddressFromJson)
  final String? serverAddress;
  @override
  final String? environment;

  @override
  String toString() {
    return 'AppHealthyModel(status: $status, serverAddress: $serverAddress, environment: $environment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppHealthyModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.serverAddress, serverAddress) ||
                other.serverAddress == serverAddress) &&
            (identical(other.environment, environment) ||
                other.environment == environment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, serverAddress, environment);

  /// Create a copy of AppHealthyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppHealthyModelImplCopyWith<_$AppHealthyModelImpl> get copyWith =>
      __$$AppHealthyModelImplCopyWithImpl<_$AppHealthyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppHealthyModelImplToJson(
      this,
    );
  }
}

abstract class _AppHealthyModel implements AppHealthyModel {
  const factory _AppHealthyModel(
      {final String? status,
      @JsonKey(name: "server_address", fromJson: serverAddressFromJson)
      final String? serverAddress,
      final String? environment}) = _$AppHealthyModelImpl;

  factory _AppHealthyModel.fromJson(Map<String, dynamic> json) =
      _$AppHealthyModelImpl.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(name: "server_address", fromJson: serverAddressFromJson)
  String? get serverAddress;
  @override
  String? get environment;

  /// Create a copy of AppHealthyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppHealthyModelImplCopyWith<_$AppHealthyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
