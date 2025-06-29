import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class RoundedCard extends StatelessWidget {

  const RoundedCard._({
    required this.child,
    this.showBorder = false,
    this.backgroundColor,
    this.onTap,
    this.padding,
    this.haveShadow = false,
    this.margin,
    this.width,
  });

  factory RoundedCard.basic(
      {required Widget child,
      VoidCallback? onTap,
      Color? backgroundColor,
      EdgeInsetsGeometry? padding,
      EdgeInsetsGeometry? margin}) {
    return RoundedCard._(
      onTap: onTap,
      backgroundColor: backgroundColor,
      padding: padding,
      showBorder: false,
      haveShadow: false,
      margin: margin,
      child: child,
    );
  }
  factory RoundedCard.withBorder({
    required Widget child,
    VoidCallback? onTap,
    Color? backgroundColor,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    double? width,
  }) {
    return RoundedCard._(
      onTap: onTap,
      backgroundColor: backgroundColor,
      padding: padding,
      showBorder: true,
      margin: margin,
      width: width,
      child: child,
    );
  }

  factory RoundedCard.withShadow(
      {required Widget child,
      VoidCallback? onTap,
      Color? backgroundColor,
      bool showBorder = false,
      bool? haveShadow,
      EdgeInsetsGeometry? padding,
      EdgeInsets? margin}) {
    return RoundedCard._(
      onTap: onTap,
      backgroundColor: backgroundColor,
      padding: padding,
      haveShadow: haveShadow ?? true,
      showBorder: showBorder,
      margin: margin,
      child: child,
    );
  }
  final Widget child;
  final bool showBorder;
  final bool haveShadow;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: showBorder
              ? Border.all(color: AppColors.naturalGray, width: 1.0)
              : null,
          boxShadow: haveShadow
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 1),
                  ),
                ]
              : null,
        ),
        child: Card(
          color: backgroundColor ?? AppColors.white,
          elevation: 0.0,
          child: Padding(
            padding: padding ?? const EdgeInsets.all(8.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
