import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/inputs/search_text_field.dart';
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSearchBar extends StatelessWidget {
  factory AppSearchBar.withFilter({
    String? hint,
    required void Function(String? value) onSearch,
    required VoidCallback onFilter,
  }) {
    return AppSearchBar(
      hint: hint,
      onSearh: onSearch,
      onFilter: onFilter,
      withFilter: true,
    );
  }
  AppSearchBar({
    super.key,
    this.hint,
    required this.onSearh,
    this.withFilter = false,
    this.onFilter,
  });
  final String? hint;
  final void Function(String? value) onSearh;
  final VoidCallback? onFilter;
  final bool withFilter;
  void clear() {
    _contoller.clear();
  }

  final TextEditingController _contoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: AgriSearchTextField(
                    onSubmit: (value) {
                      onSearh(value);
                      _contoller.clear();
                    },
                    controller: _contoller,
                    label: hint ?? S.current.search,
                  ),
                ),
              ),
              if (withFilter)
                Container(
                  margin: EdgeInsetsDirectional.only(start: 10.w),
                  width: 45.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primaryBlue,
                  ),
                  child: IconButton(
                    onPressed: () {
                      onFilter?.call();
                    },
                    icon: SvgPicture.asset(
                      Assets.icons.filter,
                      fit: BoxFit.cover,
                      color: AppColors.white,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
