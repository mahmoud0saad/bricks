import 'dart:ui';

import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/typography_base.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgriArabicTheme extends AgriTypographyTheme {
  const AgriArabicTheme();
  @override
  AgriBaseTextStyle get heading1 => _AgriTextStyle(fontSize: 20);

  @override
  AgriBaseTextStyle get heading2 => _AgriTextStyle(fontSize: 18);

  @override
  AgriBaseTextStyle get heading3 => _AgriTextStyle(fontSize: 16);

  @override
  AgriBaseTextStyle get heading4 => _AgriTextStyle(fontSize: 14);

  @override
  AgriBaseTextStyle get heading5 => _AgriTextStyle(fontSize: 14);

  @override
  AgriBaseTextStyle get button => _AgriTextStyle(fontSize: 14);

  @override
  AgriBaseTextStyle get body1 => _AgriTextStyle(fontSize: 14);

  @override
  AgriBaseTextStyle get body2 => _AgriTextStyle(fontSize: 12);

  @override
  AgriBaseTextStyle get small => _AgriTextStyle(fontSize: 10);

  @override
  String get id => "english theme";
}

class _AgriTextStyle extends AgriBaseTextStyle {
  _AgriTextStyle({required this.fontSize});
  double fontSize;
  TextStyle _textStyle(
    FontWeight fontWeight, {
    Color? color,
    bool underline = false,
  }) {
    return TextStyle(
      color: color ?? AppColors.black,
      fontSize: ScreenUtil().setSp(fontSize),
      fontFamily: AgriFontFamilies.notoSans,
      fontWeight: fontWeight,
      height: 1.4,
      decoration: underline ? TextDecoration.underline : null,
    );
  }

  @override
  TextStyle bold({Color? color}) {
    return _textStyle(AgriFontWeight.bold, color: color);
  }

  @override
  TextStyle med({Color? color}) {
    return _textStyle(AgriFontWeight.med, color: color);
  }

  @override
  TextStyle regular({Color? color}) {
    return _textStyle(AgriFontWeight.regular, color: color);
  }

  @override
  TextStyle semi({Color? color}) {
    return _textStyle(AgriFontWeight.semi, color: color);
  }
}
