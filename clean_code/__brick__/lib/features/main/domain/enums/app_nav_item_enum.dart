import 'package:{{package_name.snakeCase()}}/core/router/router.dart';
import 'package:{{package_name.snakeCase()}}/features/main/presentation/models/bottom_tab_model.dart';
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavItem {
  const NavItem(
    this.title,
    this.icon,
    this.screen, {
    this.unActiveIcon,
    this.titleStyle,
  });
  final String title;
  final String icon;
  final PageRouteInfo screen;
  final String? unActiveIcon;
  final TextStyle? titleStyle;

  static NavItem get home => NavItem(
        "home",
        Assets.icons.homeIcon,
        const HomeRoute(),
      );

 
  static NavItem get more => NavItem(
        "more",
        Assets.icons.moreIcon,
        const MoreRoute(),
      );

   
}

enum AppNavItem {
  homeScreen,
  more ;

  NavItem get item {
    switch (this) {
      case AppNavItem.homeScreen:
        return NavItem.home;
     
      case AppNavItem.more:
        return NavItem.more;
      
  
    }
  }

  

  static List<BottomTabModel> get getGeustTaps => [
        BottomTabModel(NavItem.home.icon, NavItem.home.title),
        BottomTabModel(
          NavItem.more.icon,
          NavItem.more.title,
        ),
      ];
 

  static List<PageRouteInfo> get getGuestScreen => [
        NavItem.home.screen,
        NavItem.more.screen,
      ];
}
