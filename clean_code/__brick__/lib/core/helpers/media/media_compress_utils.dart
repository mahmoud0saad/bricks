import 'dart:io';

import 'package:{{package_name.snakeCase()}}/core/helpers/file_util/file_utils.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:video_compress/video_compress.dart';

class MediaCompressUtils {
  static Future<File> compressVideo(File videoFile) async {
    try {
      final MediaInfo? mediaInfo = await VideoCompress.compressVideo(
        videoFile.path,
        quality: VideoQuality.DefaultQuality,
        deleteOrigin: false,
      );

      return mediaInfo!.file!;
    } catch (e) {
      rethrow;
    }
  }

  static Future<File> compressImage(File file) async {
    try {
      final int size = await file.length();
      final Uint8List? uint8list = await FlutterImageCompress.compressWithFile(
        file.absolute.path,
        minWidth: 2300,
        minHeight: 1500,
        quality: 94,
        format: CompressFormat.png,
      );
      final File result = await FileUtils.saveUint8ListToFile(
        uint8list!,
        file.path.split("/").last,
      );

      return result;
    } catch (e) {
      rethrow;
    }
  }
}
