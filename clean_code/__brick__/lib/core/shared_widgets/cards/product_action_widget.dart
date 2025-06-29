import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_colors.dart';
import '../buttons/app_button.dart';
import '../containers/filled_color_container.dart';
import '../icons/icon_config.dart';

class ActionWidget extends StatelessWidget {
  const ActionWidget._({
    this.iconConfig,
    this.onTap,
    this.isButton = false,
    this.isLable = false,
    this.appButtonConfig,
    this.padding,
    this.title,
    this.labelWidget,
    this.filledColor,
    this.borderRaduis,
  });
  factory ActionWidget.icon(
      {required IconConfig iconConfig,
      required VoidCallback onTap,
      EdgeInsetsGeometry? padding,
      Color? filledColor,
      AppButtonConfig? appButtonConfig,
      double? borderRaduis,
      A}) {
    return ActionWidget._(
      iconConfig: iconConfig,
      onTap: onTap,
      filledColor: filledColor,
      padding: padding,
      isButton: false,
      isLable: false,
      appButtonConfig: appButtonConfig,
      borderRaduis: borderRaduis,
    );
  }
  factory ActionWidget.button({
    required String title,
    required VoidCallback onTap,
    IconConfig? iconConfig,
    AppButtonConfig? appButtonConfig,
  }) {
    return ActionWidget._(
      title: title,
      onTap: onTap,
      iconConfig: iconConfig,
      appButtonConfig: appButtonConfig,
      isButton: true,
      isLable: false,
    );
  }
  factory ActionWidget.label({
    required Widget label,
    EdgeInsetsGeometry? padding,
    Color? filledColor,
    double? borderRaduis,
  }) {
    return ActionWidget._(
      labelWidget: label,
      padding: padding,
      isLable: true,
      filledColor: filledColor,
      borderRaduis: borderRaduis,
    );
  }
  final IconConfig? iconConfig;
  final AppButtonConfig? appButtonConfig;
  final VoidCallback? onTap;
  final Color? filledColor;
  final bool isButton;
  final bool isLable;
  final String? title;
  final Widget? labelWidget;
  final EdgeInsetsGeometry? padding;
  final double? borderRaduis;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 6.0),
        child: showProperWidget(),
      ),
    );
  }

  StatelessWidget showProperWidget() {
    if (isButton) {
      return AppButton.basic(
        onTap: onTap!,
        title: title!,
        iconConfig: iconConfig,
        appButtonConfig:
            appButtonConfig ?? AppButtonConfig(height: 35.h, width: 90.w),
      );
    } else if (isLable) {
      return GestureDetector(
        onTap: onTap,
        child: FilledColorContainer.title(
          title: labelWidget!,
          color: filledColor ?? AppColors.primaryBlue,
          padding: padding ?? const EdgeInsets.all(8.0),
          borderRaduis: borderRaduis,
        ),
      );
    } else {
      return GestureDetector(
        onTap: onTap,
        child: FilledColorContainer.icon(
          color: filledColor,
          iconConfig: IconConfig(
            name: iconConfig!.name,
            width: iconConfig?.width ?? 20.0,
            height: iconConfig?.height ?? 20.0,
            color: iconConfig?.color,
          ),
          padding: padding ?? const EdgeInsets.all(8.0),
        ),
      );
    }
  }
}
