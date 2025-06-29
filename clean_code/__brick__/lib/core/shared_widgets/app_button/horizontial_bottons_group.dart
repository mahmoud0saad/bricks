import 'package:{{package_name.snakeCase()}}/core/shared_widgets/icons/icon_config.dart'
    show IconConfig;
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/typography/agri_text_theme.dart' show AgriTextTheme;
import '../buttons/app_button.dart';
import '../resuable_screens/loading_screen.dart';

class HorizontialButtonsGroup extends StatelessWidget {
  const HorizontialButtonsGroup._({
    this.buttonTitle1,
    this.buttonTitle2,
    this.iconConfig1,
    this.iconConfig2,
    this.padding,
    required this.onDismiss,
    required this.onConfirm,
    this.disableAction,
    this.appButtonConfig1,
    this.appButtonConfig2,
    this.isLoading = false,
    this.swapButtonsOrder = true,
  });

  factory HorizontialButtonsGroup.basic({
    required VoidCallback onConfirm,
    required VoidCallback onDismiss,
    bool swapButtonsOrder = true,
  }) {
    return HorizontialButtonsGroup._(
      onConfirm: onConfirm,
      onDismiss: onDismiss,
      swapButtonsOrder: swapButtonsOrder,
    );
  }

  factory HorizontialButtonsGroup.configurable({
    required VoidCallback onButtonOneTap,
    required VoidCallback onButtonTwoTap,
    required String buttonTitle1,
    required String buttonTitle2,
    EdgeInsets? padding,
    bool? disableAction,
    AppButtonConfig? appButtonConfig1,
    AppButtonConfig? appButtonConfig2,
    bool isLoading = false,
    bool swapButtonsOrder = true,
  }) {
    return HorizontialButtonsGroup._(
      onConfirm: onButtonOneTap,
      onDismiss: onButtonTwoTap,
      buttonTitle1: buttonTitle1,
      buttonTitle2: buttonTitle2,
      padding: padding,
      disableAction: disableAction,
      appButtonConfig1: appButtonConfig1,
      appButtonConfig2: appButtonConfig2,
      isLoading: isLoading,
      swapButtonsOrder: swapButtonsOrder,
    );
  }

  factory HorizontialButtonsGroup.icons({
    required VoidCallback onButtonOneTap,
    required VoidCallback onButtonTwoTap,
    required String buttonTitle1,
    required String buttonTitle2,
    required IconConfig iconConfig1,
    required IconConfig iconConfig2,
    EdgeInsets? padding,
    AppButtonConfig? appButtonConfig1,
    AppButtonConfig? appButtonConfig2,
    bool swapButtonsOrder = true,
  }) {
    return HorizontialButtonsGroup._(
      onConfirm: onButtonOneTap,
      onDismiss: onButtonTwoTap,
      buttonTitle1: buttonTitle1,
      buttonTitle2: buttonTitle2,
      padding: padding,
      iconConfig1: iconConfig1,
      iconConfig2: iconConfig2,
      appButtonConfig1: appButtonConfig1,
      appButtonConfig2: appButtonConfig2,
      swapButtonsOrder: swapButtonsOrder,
    );
  }
  final VoidCallback onDismiss;
  final VoidCallback onConfirm;
  final String? buttonTitle1;
  final String? buttonTitle2;
  final EdgeInsets? padding;
  final IconConfig? iconConfig1;
  final IconConfig? iconConfig2;
  final bool? disableAction;
  final bool isLoading;
  final bool swapButtonsOrder;

  final AppButtonConfig? appButtonConfig1, appButtonConfig2;

  @override
  Widget build(BuildContext context) {
    final children = [
      Expanded(
        child: AppButton.basic(
          onTap: disableAction == true ? () {} : onConfirm,
          iconConfig: iconConfig1,
          title: buttonTitle1 ?? S.of(context).confirm,
          appButtonConfig:
              appButtonConfig1 ??
              AppButtonConfig(
                backgroundColor: disableAction == true
                    ? AppColors.gray800
                    : AppColors.primaryGreen,
              ),
        ),
      ),
      if (appButtonConfig2?.showButton ?? true) const SizedBox(width: 15.0),
      if (appButtonConfig2?.showButton ?? true)
        Expanded(
          child: AppButton.outline(
            onTap: onDismiss,
            iconConfig: iconConfig2,
            title: buttonTitle2 ?? S.of(context).cancel,
            appButtonConfig:
                appButtonConfig2 ??
                AppButtonConfig(
                  textStyle: AgriTextTheme.of(
                    context,
                  ).heading3.med(color: AppColors.primaryGreen),
                ),
          ),
        ),
    ];
    return Container(
      padding: padding,
      child: isLoading
          ? const LoadingScreen()
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: swapButtonsOrder
                  ? children.reversed.toList()
                  : children,
            ),
    );
  }
}
