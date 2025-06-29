// ignore_for_file: invalid_annotation_target

import 'package:{{package_name.snakeCase()}}/core/helpers/converter/json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_type_model.freezed.dart';
part 'unit_type_model.g.dart';

@freezed
class UnitTypeModel with _$UnitTypeModel {
  const factory UnitTypeModel({
    @JsonKey(readValue: readUnitTypeIdKey) int? id,
    String? name,
  }) = _UnitTypeModel;

  factory UnitTypeModel.fromJson(Map<String, dynamic> json) =>
      SafeJsonConverter.safeFromJson(
        json,
        (json) => _$UnitTypeModelFromJson(json),
      );
}

Object? readUnitTypeIdKey(Map json, String key) {
  return json['id'] ?? json['unit_type_id'];
}
