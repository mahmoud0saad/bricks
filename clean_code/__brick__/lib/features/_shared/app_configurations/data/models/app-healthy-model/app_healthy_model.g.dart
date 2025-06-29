// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_healthy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppHealthyModelImpl _$$AppHealthyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppHealthyModelImpl(
      status: json['status'] as String?,
      serverAddress: serverAddressFromJson(json['server_address']),
      environment: json['environment'] as String?,
    );

Map<String, dynamic> _$$AppHealthyModelImplToJson(
        _$AppHealthyModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'server_address': instance.serverAddress,
      'environment': instance.environment,
    };
