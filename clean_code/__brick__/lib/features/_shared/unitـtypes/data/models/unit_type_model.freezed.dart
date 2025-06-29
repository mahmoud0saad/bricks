// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnitTypeModel _$UnitTypeModelFromJson(Map<String, dynamic> json) {
  return _UnitTypeModel.fromJson(json);
}

/// @nodoc
mixin _$UnitTypeModel {
  @JsonKey(readValue: readUnitTypeIdKey)
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this UnitTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnitTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnitTypeModelCopyWith<UnitTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitTypeModelCopyWith<$Res> {
  factory $UnitTypeModelCopyWith(
          UnitTypeModel value, $Res Function(UnitTypeModel) then) =
      _$UnitTypeModelCopyWithImpl<$Res, UnitTypeModel>;
  @useResult
  $Res call({@JsonKey(readValue: readUnitTypeIdKey) int? id, String? name});
}

/// @nodoc
class _$UnitTypeModelCopyWithImpl<$Res, $Val extends UnitTypeModel>
    implements $UnitTypeModelCopyWith<$Res> {
  _$UnitTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitTypeModelImplCopyWith<$Res>
    implements $UnitTypeModelCopyWith<$Res> {
  factory _$$UnitTypeModelImplCopyWith(
          _$UnitTypeModelImpl value, $Res Function(_$UnitTypeModelImpl) then) =
      __$$UnitTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(readValue: readUnitTypeIdKey) int? id, String? name});
}

/// @nodoc
class __$$UnitTypeModelImplCopyWithImpl<$Res>
    extends _$UnitTypeModelCopyWithImpl<$Res, _$UnitTypeModelImpl>
    implements _$$UnitTypeModelImplCopyWith<$Res> {
  __$$UnitTypeModelImplCopyWithImpl(
      _$UnitTypeModelImpl _value, $Res Function(_$UnitTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$UnitTypeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitTypeModelImpl implements _UnitTypeModel {
  const _$UnitTypeModelImpl(
      {@JsonKey(readValue: readUnitTypeIdKey) this.id, this.name});

  factory _$UnitTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitTypeModelImplFromJson(json);

  @override
  @JsonKey(readValue: readUnitTypeIdKey)
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'UnitTypeModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitTypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of UnitTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitTypeModelImplCopyWith<_$UnitTypeModelImpl> get copyWith =>
      __$$UnitTypeModelImplCopyWithImpl<_$UnitTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitTypeModelImplToJson(
      this,
    );
  }
}

abstract class _UnitTypeModel implements UnitTypeModel {
  const factory _UnitTypeModel(
      {@JsonKey(readValue: readUnitTypeIdKey) final int? id,
      final String? name}) = _$UnitTypeModelImpl;

  factory _UnitTypeModel.fromJson(Map<String, dynamic> json) =
      _$UnitTypeModelImpl.fromJson;

  @override
  @JsonKey(readValue: readUnitTypeIdKey)
  int? get id;
  @override
  String? get name;

  /// Create a copy of UnitTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitTypeModelImplCopyWith<_$UnitTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
