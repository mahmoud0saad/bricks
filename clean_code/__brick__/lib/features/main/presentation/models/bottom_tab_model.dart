import 'package:flutter/material.dart';

class BottomTabModel {
  const BottomTabModel(this.iconData, this.title,
      {this.unActiveIcon,
      this.titleStyle,
      this.showIconColor = false,
      this.withBadge = false});
  final String iconData;
  final String title;
  final TextStyle? titleStyle;
  final bool withBadge;
  final String? unActiveIcon;
  final bool showIconColor;
}
