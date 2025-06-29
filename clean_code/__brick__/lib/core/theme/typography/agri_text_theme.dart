import 'package:{{package_name.snakeCase()}}/core/theme/typography/typography_base.dart';
import 'package:flutter/material.dart';

class AgriTextTheme extends InheritedWidget {
  const AgriTextTheme({super.key, required super.child, required this.theme});
  final AgriTypographyTheme theme;

  static AgriTypographyTheme of(BuildContext context) {
    try {
      return (context.dependOnInheritedWidgetOfExactType<AgriTextTheme>())!
          .theme;
    } catch (e) {
      throw Exception("Can't find AgriTextTheme in context tree");
    }
  }

  @override
  bool updateShouldNotify(covariant AgriTextTheme oldWidget) {
    return theme != oldWidget.theme;
  }
}
