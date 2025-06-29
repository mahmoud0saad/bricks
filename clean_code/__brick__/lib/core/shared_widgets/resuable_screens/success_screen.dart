import 'dart:core';

import 'package:{{package_name.snakeCase()}}/core/constants/app_padding.dart';
import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/gap_extensions.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_colors.dart';
import '../app_bars/default_appbar.dart';
import '../buttons/app_button.dart';
import '../cards/filled_colored_container.dart';
import '../icons/icon_config.dart';

typedef OnTap = void Function(BuildContext ctx);

class SuccessScreen extends StatelessWidget {
  const SuccessScreen._({
    this.title,
    this.bodyTitle,
    this.bodySubTitle,
    this.onDownload,
    this.buttonTitle,
    this.onTap,
    this.onPop,
    this.hasDownloadButton = false,
    this.actions,
  });

  factory SuccessScreen.basic({
    String? title,
    required String bodyTitle,
    required String bodySubTitle,
    required String buttonTitle,
    OnTap? onTap,
    OnTap? onPop,
  }) {
    return SuccessScreen._(
      title: title,
      bodyTitle: bodyTitle,
      bodySubTitle: bodySubTitle,
      buttonTitle: buttonTitle,
      onTap: onTap,
      onPop: onPop,
    );
  }
  factory SuccessScreen.customActions({
    required String title,
    required String bodyTitle,
    required String bodySubTitle,
    required OnTap onPop,
    bool? hasDownloadButton,
    required List<AppButton> actions,
  }) {
    return SuccessScreen._(
      title: title,
      bodyTitle: bodyTitle,
      bodySubTitle: bodySubTitle,
      hasDownloadButton: hasDownloadButton ?? false,
      onPop: onPop,
      onTap: (BuildContext context) {},
      actions: actions,
    );
  }
  factory SuccessScreen.withDownloadButton({
    required String title,
    required String bodyTitle,
    required String bodySubTitle,
    required String buttonTitle,
    required OnTap onTap,
    required OnTap onPop,
    required VoidCallback onDownload,
  }) {
    return SuccessScreen._(
      title: title,
      bodyTitle: bodyTitle,
      bodySubTitle: bodySubTitle,
      hasDownloadButton: true,
      buttonTitle: buttonTitle,
      onTap: onTap,
      onPop: onPop,
      onDownload: onDownload,
    );
  }
  final String? title;
  final String? bodyTitle;
  final String? bodySubTitle;
  final String? buttonTitle;
  final OnTap? onTap;
  final OnTap? onPop;
  final VoidCallback? onDownload;
  final bool hasDownloadButton;
  final List<AppButton>? actions;
  void _onPop(BuildContext context) {
    if (onPop != null) {
      onPop!(context);
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _onPop(context);
        return true;
      },
      child: Scaffold(
        appBar: DefaultAppBar.normalAppBar(
          title: title,
          automaticallyImplyLeading: true,
          onPop: () => _onPop(context),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: AppPadding.allScreenPadding,
          child: Column(
            children: [
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.primaryGreen.withOpacity(0.15),
                    width: 10.0,
                  ),
                ),
                child: FilledColorContainer.icon(
                  borderRaduis: 100.0,
                  width: 120.0,
                  height: 120.0,
                  padding: const EdgeInsets.all(30.0),
                  color: AppColors.primaryGreen,
                  iconConfig: IconConfig(
                    name: Assets.icons.checkIcon,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
              ),
              20.h.gap,
              Text(
                bodyTitle!,
                style: AgriTextTheme.of(
                  context,
                ).heading2.bold(color: AppColors.black),
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
              Text(
                bodySubTitle!,
                style: AgriTextTheme.of(
                  context,
                ).body1.med(color: AppColors.naturalGray2),
                textAlign: TextAlign.center,
              ),
              Spacer(flex: hasDownloadButton ? 3 : 1),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: AppPadding.allScreenPadding,
          color: AppColors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: actions ??
                [
                  if (onTap != null)
                    AppButton.basic(
                      onTap: () => onTap!(context),
                      title: buttonTitle!,
                    ),
                  if (hasDownloadButton)
                    AppButton.outline(
                      onTap: onDownload!,
                      title: S.of(context).downlaod_invoice,
                      appButtonConfig: AppButtonConfig(
                        textStyle: AgriTextTheme.of(
                          context,
                        ).body1.med(color: AppColors.naturalGray2),
                        margin: AppPadding.paddingTop10,
                      ),
                      iconConfig: IconConfig(
                        name: Assets.icons.downloadInvoice,
                        color: AppColors.primaryGreen,
                      ),
                    ),
                ],
          ),
        ),
      ),
    );
  }
}
