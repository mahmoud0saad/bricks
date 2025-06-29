// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_conf_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirebaseConfModelImpl _$$FirebaseConfModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FirebaseConfModelImpl(
      enable: json['enable'] as bool? ?? false,
      androidBuild: json['android'] as String?,
      androidUrl: json['android-url'] as String?,
      iosBuild: json['iso'] as String?,
      iosUrl: json['ios-url'] as String?,
    );

Map<String, dynamic> _$$FirebaseConfModelImplToJson(
        _$FirebaseConfModelImpl instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'android': instance.androidBuild,
      'android-url': instance.androidUrl,
      'iso': instance.iosBuild,
      'ios-url': instance.iosUrl,
    };
