/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/NotoSansArabic-Bold.ttf
  String get notoSansArabicBold => 'assets/fonts/NotoSansArabic-Bold.ttf';

  /// File path: assets/fonts/NotoSansArabic-Regular.ttf
  String get notoSansArabicRegular => 'assets/fonts/NotoSansArabic-Regular.ttf';

  /// File path: assets/fonts/NotoSansArabic.ttf
  String get notoSansArabic => 'assets/fonts/NotoSansArabic.ttf';

  /// File path: assets/fonts/README.txt
  String get readme => 'assets/fonts/README.txt';

  /// List of all assets
  List<String> get values => [
    notoSansArabicBold,
    notoSansArabicRegular,
    notoSansArabic,
    readme,
  ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/calendarIcon.svg
  String get calendarIcon => 'assets/icons/calendarIcon.svg';

  /// File path: assets/icons/cash-icon.svg
  String get cashIcon => 'assets/icons/cash-icon.svg';

  /// File path: assets/icons/check-icon.svg
  String get checkIcon => 'assets/icons/check-icon.svg';

  /// File path: assets/icons/download-invoice.svg
  String get downloadInvoice => 'assets/icons/download-invoice.svg';

  /// File path: assets/icons/filter.svg
  String get filter => 'assets/icons/filter.svg';

  /// File path: assets/icons/gray-bill-icon.svg
  String get grayBillIcon => 'assets/icons/gray-bill-icon.svg';

  /// File path: assets/icons/homeIcon.svg
  String get homeIcon => 'assets/icons/homeIcon.svg';

  /// File path: assets/icons/moreIcon.svg
  String get moreIcon => 'assets/icons/moreIcon.svg';

  /// File path: assets/icons/package-icon.svg
  String get packageIcon => 'assets/icons/package-icon.svg';

  /// File path: assets/icons/resetIcon.svg
  String get resetIcon => 'assets/icons/resetIcon.svg';

  /// File path: assets/icons/right-arrow.svg
  String get rightArrow => 'assets/icons/right-arrow.svg';

  /// File path: assets/icons/search-icon.svg
  String get searchIcon => 'assets/icons/search-icon.svg';

  /// File path: assets/icons/time-icon.svg
  String get timeIcon => 'assets/icons/time-icon.svg';

  /// File path: assets/icons/user-icon.svg
  String get userIcon => 'assets/icons/user-icon.svg';

  /// File path: assets/icons/weight.svg
  String get weight => 'assets/icons/weight.svg';

  /// List of all assets
  List<String> get values => [
    calendarIcon,
    cashIcon,
    checkIcon,
    downloadInvoice,
    filter,
    grayBillIcon,
    homeIcon,
    moreIcon,
    packageIcon,
    resetIcon,
    rightArrow,
    searchIcon,
    timeIcon,
    userIcon,
    weight,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/empty
  $AssetsImagesEmptyGen get empty => const $AssetsImagesEmptyGen();

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/photo_profile.png
  AssetGenImage get photoProfile =>
      const AssetGenImage('assets/images/photo_profile.png');

  /// File path: assets/images/splash-image.png
  AssetGenImage get splashImage =>
      const AssetGenImage('assets/images/splash-image.png');

  /// File path: assets/images/video-default_image.png
  AssetGenImage get videoDefaultImage =>
      const AssetGenImage('assets/images/video-default_image.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    logo,
    photoProfile,
    splashImage,
    videoDefaultImage,
  ];
}

class $AssetsImagesEmptyGen {
  const $AssetsImagesEmptyGen();

  /// File path: assets/images/empty/cart-empty.svg
  String get cartEmpty => 'assets/images/empty/cart-empty.svg';

  /// File path: assets/images/empty/empty-bills.png
  AssetGenImage get emptyBills =>
      const AssetGenImage('assets/images/empty/empty-bills.png');

  /// File path: assets/images/empty/empty-image.svg
  String get emptyImage => 'assets/images/empty/empty-image.svg';

  /// File path: assets/images/empty/empty-prices-list.png
  AssetGenImage get emptyPricesList =>
      const AssetGenImage('assets/images/empty/empty-prices-list.png');

  /// File path: assets/images/empty/rate-empty-star.svg
  String get rateEmptyStar => 'assets/images/empty/rate-empty-star.svg';

  /// List of all assets
  List<dynamic> get values => [
    cartEmpty,
    emptyBills,
    emptyImage,
    emptyPricesList,
    rateEmptyStar,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
