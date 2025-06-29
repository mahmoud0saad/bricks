// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitTypeModelImpl _$$UnitTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$UnitTypeModelImpl(
      id: (readUnitTypeIdKey(json, 'id') as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$UnitTypeModelImplToJson(_$UnitTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
