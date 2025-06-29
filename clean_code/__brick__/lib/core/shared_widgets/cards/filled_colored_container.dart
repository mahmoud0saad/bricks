import 'package:{{package_name.snakeCase()}}/core/constants/app_padding.dart';
import 'package:{{package_name.snakeCase()}}/core/constants/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../icons/icon_config.dart';
import '../icons/icon_widget.dart';

class FilledColorContainer extends StatelessWidget {
  const FilledColorContainer._({
    this.title,
    this.color,
    this.padding,
    this.borderRaduis,
    this.width,
    this.height,
    this.iconConfig,
    this.alignment,
    this.border,
  });
  factory FilledColorContainer.title({
    required Widget title,
    Color? color,
    EdgeInsetsGeometry? padding,
    double? borderRaduis,
    double? width,
    double? height,
    AlignmentDirectional? alignment,
    BoxBorder? border,
  }) {
    return FilledColorContainer._(
      title: title,
      color: color,
      padding: padding,
      borderRaduis: borderRaduis,
      height: height,
      alignment: alignment,
      width: width,
      border: border,
    );
  }
  factory FilledColorContainer.icon({
    Color? color,
    required IconConfig iconConfig,
    EdgeInsetsGeometry? padding,
    double? borderRaduis,
    double? width,
    double? height,
  }) {
    return FilledColorContainer._(
      color: color,
      iconConfig: iconConfig,
      padding: padding,
      borderRaduis: borderRaduis,
      height: height,
      width: width,
    );
  }
  final IconConfig? iconConfig;
  final Widget? title;
  final Color? color;
  final double? borderRaduis;
  final EdgeInsetsGeometry? padding;
  final double? width, height;
  final AlignmentDirectional? alignment;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? AppPadding.cardPadding,
      alignment: alignment,
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: borderRaduis != null
            ? BorderRadius.circular(borderRaduis!.r)
            : AppRadius.radiusExtraSmall,
      ),
      child: iconConfig != null ? IconWidget(iconConfig: iconConfig!) : title!,
    );
  }
}
