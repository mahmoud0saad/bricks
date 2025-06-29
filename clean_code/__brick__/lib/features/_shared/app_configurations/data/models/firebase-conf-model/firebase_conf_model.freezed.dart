// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_conf_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirebaseConfModel _$FirebaseConfModelFromJson(Map<String, dynamic> json) {
  return _FirebaseConfModel.fromJson(json);
}

/// @nodoc
mixin _$FirebaseConfModel {
  bool get enable => throw _privateConstructorUsedError;
  @JsonKey(name: "android")
  String? get androidBuild => throw _privateConstructorUsedError;
  @JsonKey(name: "android-url")
  String? get androidUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "iso")
  String? get iosBuild => throw _privateConstructorUsedError;
  @JsonKey(name: "ios-url")
  String? get iosUrl => throw _privateConstructorUsedError;

  /// Serializes this FirebaseConfModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirebaseConfModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirebaseConfModelCopyWith<FirebaseConfModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseConfModelCopyWith<$Res> {
  factory $FirebaseConfModelCopyWith(
          FirebaseConfModel value, $Res Function(FirebaseConfModel) then) =
      _$FirebaseConfModelCopyWithImpl<$Res, FirebaseConfModel>;
  @useResult
  $Res call(
      {bool enable,
      @JsonKey(name: "android") String? androidBuild,
      @JsonKey(name: "android-url") String? androidUrl,
      @JsonKey(name: "iso") String? iosBuild,
      @JsonKey(name: "ios-url") String? iosUrl});
}

/// @nodoc
class _$FirebaseConfModelCopyWithImpl<$Res, $Val extends FirebaseConfModel>
    implements $FirebaseConfModelCopyWith<$Res> {
  _$FirebaseConfModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirebaseConfModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
    Object? androidBuild = freezed,
    Object? androidUrl = freezed,
    Object? iosBuild = freezed,
    Object? iosUrl = freezed,
  }) {
    return _then(_value.copyWith(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      androidBuild: freezed == androidBuild
          ? _value.androidBuild
          : androidBuild // ignore: cast_nullable_to_non_nullable
              as String?,
      androidUrl: freezed == androidUrl
          ? _value.androidUrl
          : androidUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      iosBuild: freezed == iosBuild
          ? _value.iosBuild
          : iosBuild // ignore: cast_nullable_to_non_nullable
              as String?,
      iosUrl: freezed == iosUrl
          ? _value.iosUrl
          : iosUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseConfModelImplCopyWith<$Res>
    implements $FirebaseConfModelCopyWith<$Res> {
  factory _$$FirebaseConfModelImplCopyWith(_$FirebaseConfModelImpl value,
          $Res Function(_$FirebaseConfModelImpl) then) =
      __$$FirebaseConfModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool enable,
      @JsonKey(name: "android") String? androidBuild,
      @JsonKey(name: "android-url") String? androidUrl,
      @JsonKey(name: "iso") String? iosBuild,
      @JsonKey(name: "ios-url") String? iosUrl});
}

/// @nodoc
class __$$FirebaseConfModelImplCopyWithImpl<$Res>
    extends _$FirebaseConfModelCopyWithImpl<$Res, _$FirebaseConfModelImpl>
    implements _$$FirebaseConfModelImplCopyWith<$Res> {
  __$$FirebaseConfModelImplCopyWithImpl(_$FirebaseConfModelImpl _value,
      $Res Function(_$FirebaseConfModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseConfModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
    Object? androidBuild = freezed,
    Object? androidUrl = freezed,
    Object? iosBuild = freezed,
    Object? iosUrl = freezed,
  }) {
    return _then(_$FirebaseConfModelImpl(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      androidBuild: freezed == androidBuild
          ? _value.androidBuild
          : androidBuild // ignore: cast_nullable_to_non_nullable
              as String?,
      androidUrl: freezed == androidUrl
          ? _value.androidUrl
          : androidUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      iosBuild: freezed == iosBuild
          ? _value.iosBuild
          : iosBuild // ignore: cast_nullable_to_non_nullable
              as String?,
      iosUrl: freezed == iosUrl
          ? _value.iosUrl
          : iosUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseConfModelImpl implements _FirebaseConfModel {
  const _$FirebaseConfModelImpl(
      {this.enable = false,
      @JsonKey(name: "android") this.androidBuild,
      @JsonKey(name: "android-url") this.androidUrl,
      @JsonKey(name: "iso") this.iosBuild,
      @JsonKey(name: "ios-url") this.iosUrl});

  factory _$FirebaseConfModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseConfModelImplFromJson(json);

  @override
  @JsonKey()
  final bool enable;
  @override
  @JsonKey(name: "android")
  final String? androidBuild;
  @override
  @JsonKey(name: "android-url")
  final String? androidUrl;
  @override
  @JsonKey(name: "iso")
  final String? iosBuild;
  @override
  @JsonKey(name: "ios-url")
  final String? iosUrl;

  @override
  String toString() {
    return 'FirebaseConfModel(enable: $enable, androidBuild: $androidBuild, androidUrl: $androidUrl, iosBuild: $iosBuild, iosUrl: $iosUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseConfModelImpl &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.androidBuild, androidBuild) ||
                other.androidBuild == androidBuild) &&
            (identical(other.androidUrl, androidUrl) ||
                other.androidUrl == androidUrl) &&
            (identical(other.iosBuild, iosBuild) ||
                other.iosBuild == iosBuild) &&
            (identical(other.iosUrl, iosUrl) || other.iosUrl == iosUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, enable, androidBuild, androidUrl, iosBuild, iosUrl);

  /// Create a copy of FirebaseConfModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseConfModelImplCopyWith<_$FirebaseConfModelImpl> get copyWith =>
      __$$FirebaseConfModelImplCopyWithImpl<_$FirebaseConfModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseConfModelImplToJson(
      this,
    );
  }
}

abstract class _FirebaseConfModel implements FirebaseConfModel {
  const factory _FirebaseConfModel(
          {final bool enable,
          @JsonKey(name: "android") final String? androidBuild,
          @JsonKey(name: "android-url") final String? androidUrl,
          @JsonKey(name: "iso") final String? iosBuild,
          @JsonKey(name: "ios-url") final String? iosUrl}) =
      _$FirebaseConfModelImpl;

  factory _FirebaseConfModel.fromJson(Map<String, dynamic> json) =
      _$FirebaseConfModelImpl.fromJson;

  @override
  bool get enable;
  @override
  @JsonKey(name: "android")
  String? get androidBuild;
  @override
  @JsonKey(name: "android-url")
  String? get androidUrl;
  @override
  @JsonKey(name: "iso")
  String? get iosBuild;
  @override
  @JsonKey(name: "ios-url")
  String? get iosUrl;

  /// Create a copy of FirebaseConfModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseConfModelImplCopyWith<_$FirebaseConfModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
