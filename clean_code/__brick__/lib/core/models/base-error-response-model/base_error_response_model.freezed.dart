// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_error_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseErrorResponseModel _$BaseErrorResponseModelFromJson(
    Map<String, dynamic> json) {
  return _BaseErrorResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BaseErrorResponseModel {
  /// Serializes this BaseErrorResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseErrorResponseModelCopyWith<$Res> {
  factory $BaseErrorResponseModelCopyWith(BaseErrorResponseModel value,
          $Res Function(BaseErrorResponseModel) then) =
      _$BaseErrorResponseModelCopyWithImpl<$Res, BaseErrorResponseModel>;
}

/// @nodoc
class _$BaseErrorResponseModelCopyWithImpl<$Res,
        $Val extends BaseErrorResponseModel>
    implements $BaseErrorResponseModelCopyWith<$Res> {
  _$BaseErrorResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseErrorResponseModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BaseErrorResponseModelImplCopyWith<$Res> {
  factory _$$BaseErrorResponseModelImplCopyWith(
          _$BaseErrorResponseModelImpl value,
          $Res Function(_$BaseErrorResponseModelImpl) then) =
      __$$BaseErrorResponseModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseErrorResponseModelImplCopyWithImpl<$Res>
    extends _$BaseErrorResponseModelCopyWithImpl<$Res,
        _$BaseErrorResponseModelImpl>
    implements _$$BaseErrorResponseModelImplCopyWith<$Res> {
  __$$BaseErrorResponseModelImplCopyWithImpl(
      _$BaseErrorResponseModelImpl _value,
      $Res Function(_$BaseErrorResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseErrorResponseModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BaseErrorResponseModelImpl extends _BaseErrorResponseModel {
  const _$BaseErrorResponseModelImpl() : super._();

  factory _$BaseErrorResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseErrorResponseModelImplFromJson(json);

  @override
  String toString() {
    return 'BaseErrorResponseModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseErrorResponseModelImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseErrorResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BaseErrorResponseModel extends BaseErrorResponseModel {
  const factory _BaseErrorResponseModel() = _$BaseErrorResponseModelImpl;
  const _BaseErrorResponseModel._() : super._();

  factory _BaseErrorResponseModel.fromJson(Map<String, dynamic> json) =
      _$BaseErrorResponseModelImpl.fromJson;
}
