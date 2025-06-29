// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_success_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseSuccessResponseModel<T> _$BaseSuccessResponseModelFromJson<T>(
    Map<String, dynamic> json) {
  return _BaseSuccessResponseModel<T>.fromJson(json);
}

/// @nodoc
mixin _$BaseSuccessResponseModel<T> {
  String? get message => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseSuccessResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseSuccessResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseSuccessResponseModelCopyWith<T, BaseSuccessResponseModel<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseSuccessResponseModelCopyWith<T, $Res> {
  factory $BaseSuccessResponseModelCopyWith(BaseSuccessResponseModel<T> value,
          $Res Function(BaseSuccessResponseModel<T>) then) =
      _$BaseSuccessResponseModelCopyWithImpl<T, $Res,
          BaseSuccessResponseModel<T>>;
  @useResult
  $Res call({String? message, dynamic data});
}

/// @nodoc
class _$BaseSuccessResponseModelCopyWithImpl<T, $Res,
        $Val extends BaseSuccessResponseModel<T>>
    implements $BaseSuccessResponseModelCopyWith<T, $Res> {
  _$BaseSuccessResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseSuccessResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseSuccessResponseModelImplCopyWith<T, $Res>
    implements $BaseSuccessResponseModelCopyWith<T, $Res> {
  factory _$$BaseSuccessResponseModelImplCopyWith(
          _$BaseSuccessResponseModelImpl<T> value,
          $Res Function(_$BaseSuccessResponseModelImpl<T>) then) =
      __$$BaseSuccessResponseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String? message, dynamic data});
}

/// @nodoc
class __$$BaseSuccessResponseModelImplCopyWithImpl<T, $Res>
    extends _$BaseSuccessResponseModelCopyWithImpl<T, $Res,
        _$BaseSuccessResponseModelImpl<T>>
    implements _$$BaseSuccessResponseModelImplCopyWith<T, $Res> {
  __$$BaseSuccessResponseModelImplCopyWithImpl(
      _$BaseSuccessResponseModelImpl<T> _value,
      $Res Function(_$BaseSuccessResponseModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseSuccessResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseSuccessResponseModelImpl<T>(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseSuccessResponseModelImpl<T> extends _BaseSuccessResponseModel<T> {
  const _$BaseSuccessResponseModelImpl({this.message, this.data}) : super._();

  factory _$BaseSuccessResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseSuccessResponseModelImplFromJson(json);

  @override
  final String? message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'BaseSuccessResponseModel<$T>(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseSuccessResponseModelImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(data));

  /// Create a copy of BaseSuccessResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseSuccessResponseModelImplCopyWith<T, _$BaseSuccessResponseModelImpl<T>>
      get copyWith => __$$BaseSuccessResponseModelImplCopyWithImpl<T,
          _$BaseSuccessResponseModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseSuccessResponseModelImplToJson<T>(
      this,
    );
  }
}

abstract class _BaseSuccessResponseModel<T>
    extends BaseSuccessResponseModel<T> {
  const factory _BaseSuccessResponseModel(
      {final String? message,
      final dynamic data}) = _$BaseSuccessResponseModelImpl<T>;
  const _BaseSuccessResponseModel._() : super._();

  factory _BaseSuccessResponseModel.fromJson(Map<String, dynamic> json) =
      _$BaseSuccessResponseModelImpl<T>.fromJson;

  @override
  String? get message;
  @override
  dynamic get data;

  /// Create a copy of BaseSuccessResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseSuccessResponseModelImplCopyWith<T, _$BaseSuccessResponseModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
