// ignore_for_file: invalid_annotation_target

import 'package:{{package_name.snakeCase()}}/core/helpers/converter/json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_conf_model.freezed.dart';
part 'firebase_conf_model.g.dart';

@freezed
class FirebaseConfModel with _$FirebaseConfModel {
  const factory FirebaseConfModel({
    @Default(false) bool enable,
    @JsonKey(name: "android") String? androidBuild,
    @JsonKey(name: "android-url") String? androidUrl,
    @JsonKey(name: "iso") String? iosBuild,
    @JsonKey(name: "ios-url") String? iosUrl,
  }) = _FirebaseConfModel;

  factory FirebaseConfModel.fromJson(Map<String, dynamic> json) =>
      SafeJsonConverter.safeFromJson(
        json,
        (json) => _$FirebaseConfModelFromJson(json),
      );
}
