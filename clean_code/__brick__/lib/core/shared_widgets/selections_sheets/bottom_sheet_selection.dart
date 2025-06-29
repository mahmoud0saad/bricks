// ignore_for_file: must_be_immutable

import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart' show AppColors;
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:custom_dropdown_search/custom_dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_radius.dart';
import '../../theme/typography/agri_text_theme.dart';
import '../resuable_screens/loading_screen.dart';

class SelectionBottomSheet<T> extends StatelessWidget {
  SelectionBottomSheet({
    super.key,
    required this.itemAsString,
    required this.selectedItem,
    required this.onChange,
    required this.items,
    required this.hintText,
    this.onClearFn,
    this.searchHintText,
    this.validator,
    this.filled = false,
    this.fillColor,
    this.enabled = true,
    this.itemBuilder,
    this.dropdownBuilder,
    this.height,
    this.width,
    this.prefixIcon,
    this.isSelected = false,
    this.isLoading = false,
    this.labaleText,
    this.disabledItems,
  });
  final String Function(T)? itemAsString;
  final T? selectedItem;
  final void Function(T?)? onChange;
  final List<T> items;
  final String hintText;
  final Function()? onClearFn;
  final String? searchHintText;
  final String? Function(T?)? validator;
  final List<T>? disabledItems;
  final DropdownSearchPopupItemBuilder<T>? itemBuilder;
  final DropdownSearchBuilder<T>? dropdownBuilder;
  final bool? filled;
  Color? fillColor;
  final bool enabled;

  final double? height;
  final Widget? prefixIcon;
  final double? width;
  final bool isSelected;
  final bool isLoading;
  final String? labaleText;

  @override
  Widget build(BuildContext context) {
    if (fillColor == null && !enabled) {
      fillColor = const Color(0xffF5F5F5);
    } else {
      fillColor = null;
    }

    return SizedBox(
      height: 70.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 25.h,
            alignment: AlignmentDirectional.topStart,
            child: Text(
              labaleText ?? hintText,
              style: enabled
                  ? AgriTextTheme.of(
                      context,
                    ).heading4.med(color: AppColors.black800)
                  : AgriTextTheme.of(
                      context,
                    ).heading4.med(color: AppColors.naturalGray2),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 45.h,
            child: isLoading
                ? const LoadingScreen()
                : SizedBox(
                    height: 45.h,
                    width: width,
                    child: _buildSingleSelect(),
                  ),
          ),
        ],
      ),
    );
  }

  DropDownDecoratorProps getDropDownDecoratorProps() {
    return DropDownDecoratorProps(
      dropdownSearchDecoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppColors.naturalGray,
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.naturalGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadius.radiusMedium,
          borderSide: const BorderSide(
            color: Colors.black,
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.red900),
        ),
        hintText: hintText,
        fillColor: fillColor,
        hintStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: AppColors.naturalGray2,
        ),
        filled: fillColor != null,
        suffixIconColor: AppColors.naturalGray,
        prefixIcon: prefixIcon,
      ),
    );
  }

  DropdownSearch<dynamic> _buildSingleSelect() {
    return DropdownSearch<T>(
      dropdownDecoratorProps: getDropDownDecoratorProps(),
      enabled: enabled,
      compareFn: (i, s) => i == s,
      selectedItem: selectedItem,
      itemAsString: itemAsString,
      onChanged: onChange,
      popupProps: PopupProps.modalBottomSheet(
        isFilterOnline: true,
        showSelectedItems: true,
        itemBuilder: itemBuilder,
        showSearchBox: true,
        disabledItemFn: (T? item) {
          if (disabledItems != null) {
            return disabledItems!.contains(item);
          }
          return false;
        },
        searchFieldProps: TextFieldProps(
          decoration: InputDecoration(
            hintText: searchHintText ?? S.current.search,
            focusColor: AppColors.gray800,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: AppColors.gray800,
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: AppColors.gray800,
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: AppColors.gray800,
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            errorBorder: InputBorder.none,
            suffixStyle: _getTextStyle(),
            suffixIconColor: AppColors.gray800,
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(Assets.icons.searchIcon),
            ),
          ),
        ),
        emptyBuilder: (co, t) => Center(child: Text(S.current.no_data_found)),
      ),
      dropdownBuilder: dropdownBuilder,
      items: items,
      validator: validator,
      clearButtonProps: ClearButtonProps(
        onPressed: onClearFn,
        isVisible: onClearFn != null,
      ),
    );
  }

  TextStyle _getTextStyle() {
    return const TextStyle(
      fontFamily: "NotoSans",
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
    );
  }
}

enum SelectType { single, multi }
