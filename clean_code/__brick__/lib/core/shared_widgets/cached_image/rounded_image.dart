import 'dart:io';

import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../di/injection.dart';
import '../../flavors/base_app_flavor.dart';

class RoundedCachedImage extends StatelessWidget {
  const RoundedCachedImage({super.key, required this.model});
  final RoundedCachedImageModel model;

  @override
  Widget build(BuildContext context) {
    final decorationCurve = BoxDecoration(
      color: model.outerBorderColor,
      shape: model.isCircle != null && model.isCircle!
          ? BoxShape.circle
          : BoxShape.rectangle,
      borderRadius: model.isCircle != null && model.isCircle!
          ? null
          : BorderRadius.circular(model.curve),
    );
    switch (model.imageType) {
      case ImageTypes.assets:
        return _buildAssetImage();
      case ImageTypes.files:
        return _buildFileImage();
      case ImageTypes.svg:
        return _buildSvgImage();
      case ImageTypes.network:
        return _buildNetworkImage(decorationCurve);
    }
  }

  Container _buildFileImage() {
    return Container(
      width: model.width,
      height: model.height,
      decoration: BoxDecoration(
        shape: model.isCircle != null && model.isCircle!
            ? BoxShape.circle
            : BoxShape.rectangle,
        borderRadius: model.isCircle != null && model.isCircle!
            ? null
            : BorderRadius.circular(model.curve),
        image: model.file == null
            ? null
            : DecorationImage(
                image: FileImage(model.file!),
                fit: model.boxFit ?? BoxFit.cover,
              ),
      ),
    );
  }

  Container _buildSvgImage() {
    return Container(
      width: model.width,
      height: model.height,
      decoration: BoxDecoration(
        shape: model.isCircle != null && model.isCircle!
            ? BoxShape.circle
            : BoxShape.rectangle,
        borderRadius: model.isCircle != null && model.isCircle!
            ? null
            : BorderRadius.circular(model.curve),
      ),
      child: SvgPicture.asset(model.url!),
    );
  }

  String get url {
    String url = model.url ?? "";

    if (url.trim().isNotEmpty &&
        (!url.startsWith("http") && !url.startsWith("https"))) {
      final String baseUrl = getIt.get<BaseAppFlavor>().baseUrl;

      // Ensure only one slash when concatenating
      url =
          '${baseUrl.replaceAll(RegExp(r'/+$'), '')}/${url.replaceAll(RegExp(r'^/+'), '')}';
    }

    return url;
  }

  CachedNetworkImage _buildNetworkImage(BoxDecoration decorationCurve) {
    return CachedNetworkImage(
      imageUrl: url,
      width: model.width,
      height: model.height,
      fit: model.boxFit,
      imageBuilder: (context, imageProvider) => Container(
        width: model.width,
        height: model.height,
        decoration: BoxDecoration(
          shape: model.isCircle != null && model.isCircle!
              ? BoxShape.circle
              : BoxShape.rectangle,
          borderRadius: model.isCircle != null && model.isCircle!
              ? null
              : BorderRadius.circular(model.curve),
          image: DecorationImage(
            image: imageProvider,
            fit: model.boxFit ?? BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) =>
          model.placeHolderWidget ?? Container(decoration: decorationCurve),
      errorWidget: (context, url, error) => Container(
        width: model.width,
        height: model.height,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: model.errorWidget ??
            Image.asset(
              Assets.images.logo.path,
            ),
      ),
    );
  }

  Container _buildAssetImage() {
    return Container(
      width: model.width,
      height: model.height,
      decoration: BoxDecoration(
        shape: model.isCircle != null && model.isCircle!
            ? BoxShape.circle
            : BoxShape.rectangle,
        borderRadius: model.isCircle != null && model.isCircle!
            ? null
            : BorderRadius.circular(model.curve),
        image: DecorationImage(
          image: AssetImage(model.url!),
          fit: model.boxFit ?? BoxFit.cover,
        ),
      ),
    );
  }
}

class RoundedCachedImageModel {
  RoundedCachedImageModel({
    Key? key,
    this.url,
    this.file,
    this.showBorder = false,
    this.curve = 10,
    this.placeHolderWidget,
    this.errorWidget,
    this.boxFit,
    this.width,
    this.height,
    this.isCircle,
    this.outerBorderColor,
    this.innerBorderColor,
    this.imageType = ImageTypes.network,
  });
  final String? url;
  final File? file;
  final double curve;
  final bool showBorder;
  final Widget? placeHolderWidget;
  final Widget? errorWidget;
  final BoxFit? boxFit;
  final Color? outerBorderColor;
  final Color? innerBorderColor;
  final double? width, height;
  final bool? isCircle;
  final ImageTypes imageType;
}

class AppImageConfig {
  AppImageConfig({
    this.image,
    this.height,
    this.width,
    this.raduis,
    this.isCircle,
    this.onTap,
    this.file,
    this.imageType = ImageTypes.network,
  });
  final File? file;
  final String? image;
  final double? width, height, raduis;
  final bool? isCircle;
  final ImageTypes imageType;
  final VoidCallback? onTap;
}

enum ImageTypes { network, assets, files, svg }

extension AppImageConfigExtension on AppImageConfig {
  File? toFile() {
    return file;
  }
}
