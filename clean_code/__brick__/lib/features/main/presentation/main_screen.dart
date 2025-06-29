import 'package:{{package_name.snakeCase()}}/core/di/injection.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/features/main/presentation/bloc/main/main_bloc.dart';
import 'package:{{package_name.snakeCase()}}/features/main/presentation/widgets/floating_action_bar_widget.dart';
import 'package:{{package_name.snakeCase()}}/features/main/presentation/widgets/tab_icon.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<MainBloc>()..add(MainEvent.started()),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          if (state.tabs.isEmpty || state.routes.isEmpty) {
            return Container(color: AppColors.white);
          } else {
            return AutoTabsScaffold(
              routes: state.routes,
              floatingActionButtonLocation: state.showAddIcon
                  ? FloatingActionButtonLocation.centerDocked
                  : null,
              floatingActionButton: state.showAddIcon ? FloatingAB() : null,
              bottomNavigationBuilder: (context, tabsRouter) {
                return BlocListener<MainBloc, MainState>(
                  listenWhen: (previous, current) =>
                      previous.currentIndex != current.currentIndex,
                  listener: (context, state) {
                    tabsRouter.setActiveIndex(state.currentIndex);
                  },
                  child: AnimatedBottomNavigationBar.builder(
                    itemCount: state.tabs.length,
                    tabBuilder: (int index, bool isActive) {
                      return NavBarIcon(
                        isActive: isActive,
                        tab: state.tabs[index],
                      );
                    },
                    gapLocation: state.showAddIcon
                        ? GapLocation.center
                        : GapLocation.none,
                    backgroundColor: Colors.white,
                    splashColor: Colors.white,
                    activeIndex: state.currentIndex,
                    splashSpeedInMilliseconds: 300,
                    notchSmoothness: NotchSmoothness.defaultEdge,
                    height: 60.h,
                    onTap: (index) async {
                      context
                          .read<MainBloc>()
                          .add(MainEvent.updateIndexEvent(index));

                      // tabsRouter.setActiveIndex(index);
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
