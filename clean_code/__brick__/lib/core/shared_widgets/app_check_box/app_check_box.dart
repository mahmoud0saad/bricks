import 'package:{{package_name.snakeCase()}}/core/constants/app_padding.dart';
import 'package:{{package_name.snakeCase()}}/core/constants/app_radius.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCheckBox extends StatefulWidget {
  AppCheckBox({
    super.key,
    required this.value,
    this.size,
    this.iconSize,
    this.selectedColor,
    this.selectedIconColor,
    this.borderColor,
    this.onchange,
  });
  bool value;
  final double? size;
  final double? iconSize;
  final Color? selectedColor;
  final Color? selectedIconColor;
  final Color? borderColor;
  final Function(bool)? onchange;

  @override
  _AppCheckBoxState createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.value = !widget.value;
        });
        if (widget.onchange != null) {
          widget.onchange!(widget.value);
        }
      },
      child: AnimatedContainer(
        padding: EdgeInsets.zero,
        margin: AppPadding.horizontalSmall,
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
          color: widget.value
              ? widget.selectedColor ?? AppColors.primaryBlue
              : Colors.transparent,
          borderRadius: AppRadius.radiusExtraSmall,
          border: Border.all(color: widget.borderColor ?? Colors.grey),
        ),
        width: widget.size ?? 20.w,
        height: widget.size ?? 20.w,
        child: widget.value
            ? Icon(
                Icons.check,
                color: widget.selectedIconColor ?? Colors.white,
                size: widget.size != null ? (widget.size! - 6.0) : 14,
              )
            : null,
      ),
    );
  }
}
