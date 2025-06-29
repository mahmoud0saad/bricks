import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/context_extensions.dart';
import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/gap_extensions.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/app_button/horizontial_bottons_group.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/bottom_sheet/bottom_sheet_helper.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void showDeleteSheet({
  required BuildContext context,
  required VoidCallback onDelete,
  required String title,
  required String body,
  String? cancelTitle,
  String? icon,
  VoidCallback? onCancel,
}) {
  BottomSheetHelper(
    context: context,
    isDismissible: true,
    content: DeleteConfirmationDialog(
      title: title,
      msg: body,
      onDelete: onDelete,
      onCancel: onCancel,
      icon: icon,
      height: 280.h,
      cancelTitle: cancelTitle,
    ),
  ).openSizedSheet(height: 280.h);
}

class DeleteConfirmationDialog extends StatelessWidget {
  const DeleteConfirmationDialog({
    super.key,
    required this.msg,
    this.height,
    this.title,
    required this.onDelete,
    required this.icon,
    this.onCancel,
    this.cancelTitle,
  });
  final String msg;
  final double? height;
  final String? title;
  final VoidCallback onDelete;
  final VoidCallback? onCancel;
  final String? icon;
  final String? cancelTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: height ?? context.height,
      alignment: Alignment.center,
      child: Stack(
        children: [
          SizedBox(width: context.width, height: height ?? context.height),
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
                30.h.gap,
                SvgPicture.asset(icon ?? Assets.icons.cashIcon, height: 60.h),
                10.h.gap,
                Text(
                  title ?? S.of(context).delete,
                  style: AgriTextTheme.of(
                    context,
                  ).heading3.bold(color: AppColors.black),
                ),
                Center(
                  child: Text(
                    msg,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: AgriTextTheme.of(
                      context,
                    ).heading3.med(color: AppColors.naturalGray2),
                  ),
                ),
                30.h.gap,
                HorizontialButtonsGroup.configurable(
                  buttonTitle1: S.of(context).confirm,
                  buttonTitle2: cancelTitle ?? S.of(context).cancel,
                  onButtonOneTap: () {
                    onDelete();
                    Navigator.of(context).pop();
                  },
                  onButtonTwoTap: () {
                    if (onCancel != null) {
                      onCancel!();
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                ),
                30.h.gap,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
