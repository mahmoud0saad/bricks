import 'package:{{package_name.snakeCase()}}/core/constants/app_spacing.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:{{package_name.snakeCase()}}/features/main/presentation/models/bottom_tab_model.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({super.key, required this.tab, required this.isActive});
  final bool isActive;
  final BottomTabModel tab;
  Color? _getIconColor() {
    if (tab.showIconColor) return null;
    if (isActive) {
      return AppColors.primaryGreen;
    } else {
      return AppColors.gray800;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        tab.withBadge
            ? badges.Badge(
                position: badges.BadgePosition.topEnd(end: -5, top: 0),
                // badgeContent: Text( 
                //   "10",
                //   style: AgriTextTheme.of(context).heading3.med(color: AppColors.white).copyWith(fontSize: 13),
                // ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SvgPicture.asset(
                    tab.iconData,
                    color: _getIconColor(),
                    height: AppSpacing.large,
                  ),
                ),
              )
            : Container(
                padding: const EdgeInsets.only(top: 10),
                child: SvgPicture.asset(
                  tab.iconData,
                  color: _getIconColor(),
                  height: AppSpacing.large,
                ),
              ),
        Container(
          padding: const EdgeInsets.only(bottom: AppSpacing.small),
          child: Text(
            translateByKey(context, tab.title),
            style: getStyle(context),
          ),
        ),
      ],
    );
  }

  TextStyle getStyle(BuildContext context) {
    if (isActive) {
      return AgriTextTheme.of(context).body2.med(color: AppColors.primaryBlue);
    } else {
      return AgriTextTheme.of(context).body2.med(color: AppColors.naturalGray2);
    }
  }
}

// Helper function to get translation by key for tab titles
String translateByKey(BuildContext context, String key) {
  switch (key) {
    case 'home':
      return S.of(context).home;
    case 'categories':
      return S.of(context).categories;
    case 'my_store':
      return S.of(context).my_store;
    case 'more':
      return S.of(context).more;
    case 'cart':
      return S.of(context).cart;
    default:
      return key;
  }
}
