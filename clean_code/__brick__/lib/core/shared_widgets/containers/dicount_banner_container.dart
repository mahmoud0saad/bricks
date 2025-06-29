import 'package:{{package_name.snakeCase()}}/core/extentions/context_extensions.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_colors.dart';

class DicountBannerBuilder extends StatelessWidget {
  const DicountBannerBuilder({super.key, required this.discount});

  final double? discount;

  String discountString(BuildContext context) {
    if (context.langCode == "ar") {
      return "${S.of(context).off} ${discount?.toStringAsFixed(2) ?? ''} ${S.of(context).currency}";
    } else {
      return "${discount?.toStringAsFixed(2) ?? ''} ${S.of(context).currency} ${S.of(context).off}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: discount != null && discount! > 0,
      child: Container(
        width: 95.w,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.red900,
        ),
        alignment: Alignment.center,
        child: Text(
          discountString(context),
          textAlign: TextAlign.center,
          maxLines: 1,
          style: AgriTextTheme.of(
            context,
          ).body1.regular(color: AppColors.white),
        ),
      ),
    );
  }
}
