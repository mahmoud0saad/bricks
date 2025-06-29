import 'package:{{package_name.snakeCase()}}/core/constants/app_radius.dart';
import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/gap_extensions.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/app_button/horizontial_bottons_group.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<bool> showExitBottomSheet({
  required BuildContext context,
  required String title,
  required String subTitle,
  required Function onConfirm,
  bool? customOnConfirm,
  String? icon,
}) async {
  final bool? result = await showMaterialModalBottomSheet<bool>(
    context: context,
    isDismissible: true,
    shape: RoundedRectangleBorder(
      borderRadius: AppRadius.radiusExtraLargeToVertical,
    ),
    builder: (ctx) => Container(
      width: 310.w,
      height: 300.h,
      alignment: Alignment.center,
      child: Stack(
        children: [
          SizedBox(width: 310.w, height: 300.h),
          PositionedDirectional(
            end: 0.w,
            top: 10.h,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(FontAwesomeIcons.xmark, size: 25),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                25.h.gap,
                SvgPicture.asset(
                  icon ?? Assets.icons.cashIcon,
                  width: 70.w,
                  height: 70.h,
                ),
                10.h.gap,
                Text(
                  title,
                  style: AgriTextTheme.of(
                    context,
                  ).heading2.bold(color: AppColors.black),
                ),
                Center(
                  child: Text(
                    subTitle,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: AgriTextTheme.of(
                      context,
                    ).button.med(color: AppColors.naturalGray2),
                  ),
                ),
                30.h.gap,
                HorizontialButtonsGroup.basic(
                  onConfirm: customOnConfirm == true
                      ? () => onConfirm()
                      : () {
                          onConfirm();
                          Navigator.of(context).pop(true);
                        },
                  onDismiss: () {
                    Navigator.of(context).pop();
                  },
                ),
                30.h.gap,
              ],
            ),
          ),
        ],
      ),
    ),
  );

  return result ?? false;
}
