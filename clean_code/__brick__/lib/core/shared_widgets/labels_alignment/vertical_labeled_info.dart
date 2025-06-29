import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:flutter/material.dart';

class VerticalLabeledInfo extends StatelessWidget {
  const VerticalLabeledInfo._({
    required this.title,
    required this.value,
    this.titleStyle,
    this.padding,
    this.alignment = CrossAxisAlignment.start,
    this.valueStyle,
  });

  factory VerticalLabeledInfo.normal({
    required String title,
    required String value,
    EdgeInsetsGeometry? padding,
    CrossAxisAlignment alignment = CrossAxisAlignment.start,
  }) {
    return VerticalLabeledInfo._(
      title: title,
      value: value,
      alignment: alignment,
      padding: padding,
    );
  }

  factory VerticalLabeledInfo.configurable({
    required String title,
    required String value,
    CrossAxisAlignment alignment = CrossAxisAlignment.start,
    required TextStyle titleStyle,
    required TextStyle valueStyle,
    EdgeInsetsGeometry? padding,
  }) {
    return VerticalLabeledInfo._(
      title: title,
      value: value,
      alignment: alignment,
      titleStyle: titleStyle,
      valueStyle: valueStyle,
      padding: padding,
    );
  }
  final String title;
  final String value;
  final CrossAxisAlignment alignment;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          Text(
            title,
            style:
                titleStyle ??
                AgriTextTheme.of(context).body2.med(color: AppColors.black),
          ),
          Text(
            value,
            style:
                valueStyle ??
                AgriTextTheme.of(context).body1.med(color: AppColors.black),
          ),
        ],
      ),
    );
  }
}
