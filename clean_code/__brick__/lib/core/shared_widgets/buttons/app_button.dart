import 'package:{{package_name.snakeCase()}}/core/constants/app_padding.dart';
import 'package:{{package_name.snakeCase()}}/core/constants/app_radius.dart';
import 'package:{{package_name.snakeCase()}}/core/constants/app_spacing.dart';
import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/context_extensions.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/icons/icon_config.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/icons/icon_widget.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/resuable_screens/loading_screen.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class AppButton extends StatelessWidget {
  const AppButton._({
    required this.onTap,
    this.appButtonConfig,
    this.title,
    this.isLoading = false,
    this.fabIconConfig,
    this.iconConfig,
    this.haveShadow = false,
    this.isFlatButton = false,
  });

  factory AppButton.basic({
    required VoidCallback onTap,
    required String title,
    AppButtonConfig? appButtonConfig,
    bool haveShadow = false,
    bool isLoading = false,
    IconConfig? iconConfig,
  }) {
    return AppButton._(
      title: title,
      onTap: onTap,
      haveShadow: haveShadow,
      appButtonConfig: appButtonConfig,
      iconConfig: iconConfig,
      isLoading: isLoading,
    );
  }
  factory AppButton.fabIcon({
    String? title,
    required VoidCallback onTap,
    bool haveShadow = false,
    required FabIconConfig fabIconConfig,
    AppButtonConfig? appButtonConfig,
  }) {
    return AppButton._(
      onTap: onTap,
      fabIconConfig: fabIconConfig,
      haveShadow: haveShadow,
      appButtonConfig: appButtonConfig,
    );
  }
  factory AppButton.icon({
    String? title,
    required VoidCallback onTap,
    required IconConfig iconConfig,
    bool haveShadow = false,
    AppButtonConfig? appButtonConfig,
    bool isLoading = false,
  }) {
    return AppButton._(
      title: title,
      onTap: onTap,
      haveShadow: haveShadow,
      iconConfig: iconConfig,
      appButtonConfig: appButtonConfig,
      isLoading: isLoading,
    );
  }

  factory AppButton.outline({
    String? title,
    required VoidCallback onTap,
    IconConfig? iconConfig,
    bool haveShadow = false,
    AppButtonConfig? appButtonConfig,
    bool isLoading = false,
  }) {
    return AppButton._(
      title: title,
      onTap: onTap,
      isFlatButton: true,
      haveShadow: haveShadow,
      iconConfig: iconConfig,
      appButtonConfig: appButtonConfig,
      isLoading: isLoading,
    );
  }
  final VoidCallback onTap;
  final String? title;
  final bool isFlatButton;
  final bool isLoading;
  final IconConfig? iconConfig;
  final AppButtonConfig? appButtonConfig;
  final bool haveShadow;
  final FabIconConfig? fabIconConfig;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: appButtonConfig?.margin,
      decoration: BoxDecoration(
        boxShadow: haveShadow
            ? [
                BoxShadow(
                  color: AppColors.black.withOpacity(
                    0.2,
                  ), // Adjust the shadow color and opacity
                  spreadRadius:
                      5, // Increase the spread radius for a larger shadow
                  blurRadius:
                      15, // Increase the blur radius for a softer shadow
                  offset: const Offset(
                    0,
                    5,
                  ), // Adjust the vertical offset for a lower shadow
                ),
              ]
            : null,
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: getBackgroundColor(),
          shape: RoundedRectangleBorder(
            borderRadius: appButtonConfig?.radius ?? AppRadius.radiusMedium,
          ),
          padding: appButtonConfig?.padding ?? _scaledPadding(context),
          side: getBorder(),
          minimumSize: Size(
            appButtonConfig?.width ?? context.width,
            appButtonConfig?.height ?? 48.w,
          ),
          fixedSize: Size(
            appButtonConfig?.width ?? context.width,
            appButtonConfig?.height ?? 48.w,
          ),
        ),
        child: Visibility(
          visible: !isLoading,
          replacement: const Padding(
            padding: EdgeInsets.symmetric(vertical: AppSpacing.extraSmall),
            child: LoadingScreen(color: AppColors.white),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  showProperIconWidget(),
                  if (title != null && iconConfig != null) Gap(5.w),
                  if (title != null)
                    FittedBox(
                      child: Text(
                        title!,
                        style:
                            appButtonConfig?.textStyle ??
                            AgriTextTheme.of(
                              context,
                            ).heading3.med(color: AppColors.white),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showProperIconWidget() {
     if (iconConfig != null) {
      return IconWidget(iconConfig: iconConfig!);
    } else if (fabIconConfig != null) {
      return Padding(
        padding: AppPadding.fabIconPadding ,
        child: FaIcon(
          fabIconConfig!.icon,
          size: fabIconConfig?.size ?? 16,
          color: fabIconConfig?.color ?? AppColors.white,
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Color? getBackgroundColor() {
    if (isFlatButton) {
      return AppColors.white;
    } else if (appButtonConfig?.backgroundColor != null) {
      return appButtonConfig?.backgroundColor;
    } else {
      return AppColors.primaryGreen;
    }
  }

  BorderSide? getBorder() {
    if (appButtonConfig?.border != null) {
      return appButtonConfig!.border;
    } else if (isFlatButton) {
      return const BorderSide(color: AppColors.primaryGreen, width: 2.0);
    } else {
      return null;
    }
  }

  EdgeInsetsGeometry _scaledPadding(BuildContext context) {
    return ButtonStyleButton.scaledPadding(
      const EdgeInsets.symmetric(horizontal: 16),
      const EdgeInsets.symmetric(horizontal: 8),
      const EdgeInsets.symmetric(horizontal: 4),
      MediaQuery.maybeOf(context)?.textScaleFactor ?? 1,
    );
  }
}

class AppButtonConfig {
  AppButtonConfig({
    this.backgroundColor,
    this.border,
    this.padding,
    this.height,
    this.width,
    this.textStyle,
    this.margin,
    this.radius,
    this.showButton = true,
  });
  final Color? backgroundColor;
  final BorderSide? border;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final BorderRadius? radius;
  final bool showButton;
}

class FabIconConfig {
  FabIconConfig({required this.icon, this.color, this.size});
  final IconData icon;
  final double? size;
  final Color? color;
}
