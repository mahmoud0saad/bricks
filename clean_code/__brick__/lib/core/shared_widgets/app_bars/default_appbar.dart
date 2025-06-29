import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/context_extensions.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar._({
    required this.title,
    this.titleWidget,
    required this.isCenter,
    required this.appBarType,
    required this.automaticallyImplyLeading,
    this.actions = const [],
    this.expandedHeight,
    this.flexibleSpace,
    this.leadingWidget,
    this.height,
    this.preferredSizeWidget,
    this.onPop,
    this.bkColor,
  });
  factory DefaultAppBar.normalAppBar({
    required String? title,
    List<Widget>? actions,
    bool? isCenter,
    bool? automaticallyImplyLeading,
    double? height,
    PreferredSizeWidget? preferredSizeWidget,
    VoidCallback? onPop,
    Color? bkColor,
  }) {
    return DefaultAppBar._(
      title: title ?? '',
      appBarType: AppBarTypes.normalAppBar,
      actions: actions ?? [],
      isCenter: isCenter ?? false,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      height: height,
      preferredSizeWidget: preferredSizeWidget,
      onPop: onPop,
      bkColor: bkColor,
    );
  }
  factory DefaultAppBar.customAppBar({
    List<Widget>? actions,
    Widget? titleWidget,
    bool? isCenter,
    bool? automaticallyImplyLeading,
    double? height,
    PreferredSizeWidget? preferredSizeWidget,
    VoidCallback? onPop,
    Color? bkColor,
  }) {
    return DefaultAppBar._(
      title: '',
      titleWidget: titleWidget,
      appBarType: AppBarTypes.customAppBar,
      actions: actions ?? [],
      isCenter: isCenter ?? false,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      height: height,
      preferredSizeWidget: preferredSizeWidget,
      onPop: onPop,
      bkColor: bkColor,
    );
  }
  factory DefaultAppBar.sliverAppBar({
    String? title,
    required Widget flexibleSpace,
    required double expandedHeight,
    required Widget leading,
    List<Widget>? actions,
    bool isCenter = false,
    VoidCallback? onPop,
    bool automaticallyImplyLeading = true,
  }) {
    return DefaultAppBar._(
      title: title ?? '',
      isCenter: isCenter,
      automaticallyImplyLeading: automaticallyImplyLeading,
      appBarType: AppBarTypes.silverAppBar,
      actions: actions ?? [],
      expandedHeight: expandedHeight,
      flexibleSpace: flexibleSpace,
      onPop: onPop,
      leadingWidget: leading,
    );
  }
  final String title;
  final Widget? titleWidget;
  final bool isCenter;
  final PreferredSizeWidget? preferredSizeWidget;
  final Widget? leadingWidget;
  final List<Widget> actions;
  final bool automaticallyImplyLeading;
  final AppBarTypes appBarType;
  final double? expandedHeight;
  final Widget? flexibleSpace;
  final double? height;
  final VoidCallback? onPop;
  final Color? bkColor;

  @override
  Size get preferredSize => _getSize();

  Size _getSize() {
    if (preferredSizeWidget == null) {
      return Size.fromHeight(height ?? 60.h);
    } else {
      return Size.fromHeight(
        preferredSizeWidget!.preferredSize.height + (height ?? 60.h),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (appBarType == AppBarTypes.normalAppBar) {
      return _buildNormalAppBar(context);
    }
    return appBarType == AppBarTypes.customAppBar
        ? _buildCustomAppBar(context)
        : _buildSliverAppBar(context);
  }

  AppBar _buildNormalAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: _buildtitle(context),
      centerTitle: isCenter,
      actions: [...actions..map((e) => e), Gap(16.w)],
      bottom: preferredSizeWidget,
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: getLeadingIcon(context),
      titleSpacing: -6,
      backgroundColor: bkColor,
      scrolledUnderElevation: 0,
      shadowColor: AppColors.white,
    );
  }

  AppBar _buildCustomAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: titleWidget,
      centerTitle: isCenter,
      actions: [...actions..map((e) => e), Gap(16.w)],
      bottom: preferredSizeWidget,
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: getLeadingIcon(context),
      titleSpacing: -6,
      backgroundColor: bkColor,
    );
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: expandedHeight,
      title: _buildtitle(context),
      leading: leadingWidget ?? getLeadingIcon(context),
      actions: [...actions.map((e) => e), Gap(16.w)],
      flexibleSpace: flexibleSpace,
    );

    /// Builds the title of the appbar.
    ///
    /// If [bkColor] is transparent, the text style is [TextStyle.whiteW700F20].
    /// Otherwise, it is [TextStyle.blackW700F20].
    ///
    /// The [title] is the text to be displayed.
  }

  Text _buildtitle(BuildContext context) {
    return Text(
      title,
      style: bkColor == Colors.transparent
          ? AgriTextTheme.of(context).heading1.bold(color: AppColors.white)
          : AgriTextTheme.of(context).heading1.bold(color: AppColors.black800),
    );
  }

  Widget? getLeadingIcon(BuildContext context) {
    if (automaticallyImplyLeading && Navigator.of(context).canPop()) {
      return InkWell(
        onTap: onPop ?? () => Navigator.pop(context),
        child: Container(
          alignment: Alignment.centerRight,
          margin: context.isEn
              ? EdgeInsetsDirectional.only(end: 16.w)
              : EdgeInsetsDirectional.only(start: 16.w),
          child: RotatedBox(
            quarterTurns: context.isEn ? 2 : 4,
            child: SvgPicture.asset(
              Assets.icons.rightArrow,
              width: 15.w,
              height: 15.w,
              color: bkColor == Colors.transparent ? AppColors.black : null,
            ),
          ),
        ),
      );
    } else {
      return Container(
        alignment: Alignment.centerRight,
        margin: EdgeInsetsDirectional.only(start: 16.w),
      );
    }
  }
}

enum AppBarTypes { normalAppBar, silverAppBar, customAppBar }
