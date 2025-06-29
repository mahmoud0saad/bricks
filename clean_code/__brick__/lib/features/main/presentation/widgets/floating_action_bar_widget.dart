// ignore_for_file: must_be_immutable

import 'package:{{package_name.snakeCase()}}/core/router/router.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class FloatingAB extends StatelessWidget {
  FloatingAB({super.key});
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.primaryGreen,
      shape: const CircleBorder(),
      onPressed: () async {
      },
      child: const Icon(Icons.add, size: 24, color: AppColors.white),
    );
  }
}
