import 'package:agriunions/core/helpers/converter/json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}.freezed.dart';
part '{{name.snakeCase()}}.g.dart';

@freezed
class {{name.pascalCase()}} with _${{name.pascalCase()}} {

  factory {{name.pascalCase()}}({
    @JsonKey(name: 'id') int? id,
  }) = _{{name.pascalCase()}};


    factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
      SafeJsonConverter.safeFromJson(
        json,
        (json) => _${{name.pascalCase()}}FromJson(json),
      );
}
