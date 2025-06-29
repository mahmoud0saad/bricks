
import 'package:{{package_name.snakeCase()}}/features/main/presentation/main_screen.dart';
import 'package:{{package_name.snakeCase()}}/features/main/presentation/pages/home/home_screen.dart';
import 'package:{{package_name.snakeCase()}}/features/main/presentation/pages/more/more_screen.dart'; 
import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
 
import '../../features/splash/presentation/splash_screen.dart';

part 'router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
         
        CustomRoute(
          // initial: true,
          page: MainRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          children: [
            AutoRoute(page: MoreRoute.page),
            AutoRoute(page: HomeRoute.page),
      
          ],
        ),
      ];
}
