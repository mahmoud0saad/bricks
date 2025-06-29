import 'package:flutter/material.dart';

class IconConfig {
  IconConfig({
    required this.name,
    this.height,
    this.width,
    this.color,
  });
  final String name;
  final double? width;
  final double? height;
  final Color? color;
}
