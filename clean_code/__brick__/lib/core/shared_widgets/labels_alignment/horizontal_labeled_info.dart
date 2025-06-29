import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HorizontalLabeledInfo extends StatelessWidget {
  const HorizontalLabeledInfo._({
    required this.title,
    required this.value,
    this.titleStyle,
    this.padding,
    this.isSpaceBetween = false,
    this.valueStyle,
    this.spaceBetweenWidth,
  });

  factory HorizontalLabeledInfo.normal({
    required String title,
    required String value,
    EdgeInsetsGeometry? padding,
    bool isSpaceBetween = false,
    double? spaceBetweenWidth,
    TextStyle? valueStyle,
    TextStyle? titleStyle,
  }) {
    return HorizontalLabeledInfo._(
      title: title,
      value: value,
      padding: padding,
      isSpaceBetween: isSpaceBetween,
      spaceBetweenWidth: spaceBetweenWidth,
      titleStyle: titleStyle,
      valueStyle: valueStyle,
    );
  }

  factory HorizontalLabeledInfo.configurable({
    required String title,
    required String value,
    TextStyle? titleStyle,
    TextStyle? valueStyle,
    EdgeInsetsGeometry? padding,
    bool isSpaceBetween = false,
    double? spaceBetweenWidth,
  }) {
    return HorizontalLabeledInfo._(
      title: title,
      value: value,
      titleStyle: titleStyle,
      valueStyle: valueStyle,
      padding: padding,
      isSpaceBetween: isSpaceBetween,
      spaceBetweenWidth: spaceBetweenWidth,
    );
  }
  final String title;
  final String value;
  final bool isSpaceBetween;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;
  final EdgeInsetsGeometry? padding;
  final double? spaceBetweenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: isSpaceBetween
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        children: [
          Text(
            title,
            style:
                titleStyle ??
                AgriTextTheme.of(context).body2.med(color: AppColors.black800),
          ),
          if (spaceBetweenWidth != null) Gap(spaceBetweenWidth!.w),
          Text(
            value,
            style:
                valueStyle ??
                AgriTextTheme.of(context).body1.semi(color: AppColors.black800),
          ),
        ],
      ),
    );
  }
}
