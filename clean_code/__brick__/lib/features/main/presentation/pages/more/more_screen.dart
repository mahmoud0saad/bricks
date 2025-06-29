import 'package:{{package_name.snakeCase()}}/core/shared_widgets/app_bars/default_appbar.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar.normalAppBar(
        title: S.of(context).more,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("More"),
        ],
      ),
    );
  }
}
