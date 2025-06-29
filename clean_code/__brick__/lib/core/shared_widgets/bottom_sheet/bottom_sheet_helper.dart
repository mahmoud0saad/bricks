import 'package:{{package_name.snakeCase()}}/core/constants/app_padding.dart';
import 'package:{{package_name.snakeCase()}}/core/constants/app_radius.dart';
import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/context_extensions.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/keyboard/keyboard_visibility_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomSheetHelper {
  BottomSheetHelper({
    required this.context,
    required this.content,
    this.isDismissible = false,
    this.backgroundColor,
  });
  final BuildContext context;
  final Widget content;
  final Color? backgroundColor;
  final bool isDismissible;

  void openFullSheet({bool enableDrag = true}) {
    showCupertinoModalBottomSheet(
      context: context,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      builder: (ctx) => Material(
        child: Padding(
          padding: AppPadding.bottomSheetPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.height * .1),
              const CloseButton(),
              ...[content],
            ],
          ),
        ),
      ),
    );
  }

  Future openSizedSheet({double? height, bool enableDrag = true}) {
    return showMaterialModalBottomSheet(
      context: context,
      isDismissible: isDismissible,
      backgroundColor: backgroundColor,
      enableDrag: enableDrag,
      shape: RoundedRectangleBorder(
        borderRadius: AppRadius.radiusExtraLargeToVertical,
      ),
      builder: (ctx) {
        return KeyboardVisibilityBuilder(
          builder: (context, isKeyboardVisible) {
            return AnimatedContainer(
              duration: const Duration(
                milliseconds: 300,
              ), // Adjust animation duration as needed
              curve: Curves.easeInOut, // Adjust animation curve as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: AppRadius.radiusLargeToVertical,
              ),
              child: content,
            );
          },
        );
      },
    );
  }

  double estimateBottomSheetHeight({
    double? height,
    required bool isKeyboardVisible,
  }) {
    double h = 0.0;
    if (height == null) {
      h = context.height * .65;
    } else {
      h = height;
    }
    if (isKeyboardVisible) {
      h += 100.h;
    }
    return h;
  }

  void openScaffoldSizedSheet({
    required double height,
    GlobalKey<ScaffoldState>? key,
    VoidCallback? onDismiss,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      builder: (ctx) {
        return KeyboardVisibilityBuilder(
          builder: (context, isKeyboardVisible) {
            return AnimatedContainer(
              duration: const Duration(
                milliseconds: 300,
              ), // Adjust animation duration as needed
              curve: Curves.easeInOut, // Adjust animation curve as needed
              height: estimateBottomSheetHeight(
                height: height,
                isKeyboardVisible: isKeyboardVisible,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: AppRadius.radiusLargeToVertical,
              ),
              padding: AppPadding.bottomSheetPadding,

              child: content,
            );
          },
        );
      },
    );
  }

  Container _child(
    double padding,
    double sheetHeight,
    double height,
    VoidCallback? onDismiss,
    BuildContext context,
  ) {
    return Container(
      padding: EdgeInsets.only(bottom: padding),
      height: sheetHeight,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: AppRadius.radiusLargeToVertical,
            ),
            height: height,
            child: Padding(
              padding: AppPadding.bottomSheetPadding,
              child: content,
            ),
          ),
          PositionedDirectional(
            end: 10.w,
            child: GestureDetector(
              onTap: onDismiss ?? () => Navigator.pop(context),
              child: const Padding(
                padding: AppPadding.closeButtonPadding,
                child: Icon(Icons.close),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
