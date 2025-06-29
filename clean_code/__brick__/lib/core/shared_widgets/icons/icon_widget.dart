import 'package:{{package_name.snakeCase()}}/core/shared_widgets/icons/icon_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.iconConfig});
  final IconConfig iconConfig;

  @override
  Widget build(BuildContext context) {
    return iconConfig.name.endsWith(".svg")
        ? SvgPicture.asset(
            iconConfig.name,
            color: iconConfig.color,
            height: iconConfig.height,
            width: iconConfig.width,
          )
        : Image.asset(
            iconConfig.name,
            color: iconConfig.color,
            height: iconConfig.height,
          );
  }
}
