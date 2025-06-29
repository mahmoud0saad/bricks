import 'package:{{package_name.snakeCase()}}/core/di/injection.dart';
import 'package:{{package_name.snakeCase()}}/core/enums/request_state.dart';
import 'package:{{package_name.snakeCase()}}/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network_logger/network_logger.dart';

import '../../../core/router/router.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    if (kDebugMode) NetworkLoggerOverlay.attachTo(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<SplashBloc>()..add(const SplashEvent.started()),
      child: BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state.request.isSuccess) {
            Future.delayed(const Duration(seconds: 2), () {
              context.replaceRoute(const MainRoute());
            });
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Image.asset(
              Assets.images.splashImage.path,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
          );
        },
      ),
    );
  }
}
