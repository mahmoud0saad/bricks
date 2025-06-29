import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/app_colors.dart';
import '../icons/icon_config.dart';

class HorizontalLabeledIcon extends StatelessWidget {
  const HorizontalLabeledIcon._({
    required this.iconConfig,
    required this.label,
    this.onTap,
    this.isSelected = false,
    this.spaceBetweenWidth,
    this.padding,
  });

  factory HorizontalLabeledIcon.icon(
      {required IconConfig iconConfig,
      required Widget label,
      bool isSelected = false,
      VoidCallback? onTap,
      EdgeInsets? padding,
      double? spaceBetweenWidth}) {
    return HorizontalLabeledIcon._(
      iconConfig: iconConfig,
      label: label,
      onTap: onTap,
      isSelected: isSelected,
      spaceBetweenWidth: spaceBetweenWidth,
      padding: padding,
    );
  }
  final IconConfig iconConfig;
  final Widget label;
  final bool? isSelected;
  final VoidCallback? onTap;
  final double? spaceBetweenWidth;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ?? EdgeInsets.zero,
        decoration: isSelected!
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.primaryBlue.withOpacity(0.14),
              )
            : null,
        child: Row(
          children: [
            iconConfig.name.endsWith(".svg")
                ? SvgPicture.asset(
                    iconConfig.name,
                    width: iconConfig.width ?? 14.0,
                    height: iconConfig.height ?? 14.0,
                    color:
                        !isSelected! ? iconConfig.color : AppColors.primaryBlue,
                  )
                : Image.asset(
                    iconConfig.name,
                    width: iconConfig.width ?? 14.0,
                    height: iconConfig.width ?? 14.0,
                    color:
                        !isSelected! ? iconConfig.color : AppColors.primaryBlue,
                  ),
            SizedBox(width: spaceBetweenWidth ?? 7.0.w),
            label
          ],
        ),
      ),
    );
  }
}
