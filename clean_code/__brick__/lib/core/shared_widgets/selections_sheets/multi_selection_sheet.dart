// ignore_for_file: must_be_immutable

import 'package:{{package_name.snakeCase()}}/core/constants/app_padding.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart' show AppColors;
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:custom_dropdown_search/custom_dropdown_search.dart';
import 'package:flutter/material.dart' as ma;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_radius.dart';
import '../app_button/horizontial_bottons_group.dart'
    show HorizontialButtonsGroup;

class MultiSelectionSheet<T> extends StatelessWidget {
  MultiSelectionSheet({
    super.key,
    required this.itemAsString,
    required this.selectedItems,
    required this.onChange,
    required this.items,
    required this.hintText,
    this.onClearFn,
    this.searchHintText,
    this.validator,
    this.filled = false,
    this.fillColor,
    this.enabled = true,
    this.style,
    this.height,
    this.width,
    this.prefixIcon,
    this.isSelected = false,
    this.isLoading = false,
    this.labaleText,
    this.disabledItems,
  });
  final String Function(T)? itemAsString;
  final List<T> selectedItems;
  final void Function(List<T>)? onChange;
  final List<T> items;
  final String hintText;
  final Function()? onClearFn;
  final String? searchHintText;
  final String? Function(List<T>?)? validator;
  final List<T>? disabledItems;
  final bool? filled;
  Color? fillColor;
  final bool enabled;
  final TextStyle? style;
  final double? height;
  final Widget? prefixIcon;
  final double? width;
  final bool isSelected;
  final bool isLoading;
  final String? labaleText;
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>.multiSelection(
      itemCard: (city, Function) => const SizedBox.shrink(),
      dropdownDecoratorProps: getDropDownDecoratorProps(),
      enabled: enabled,
      compareFn: (i, s) => i == s,
      selectedItems: selectedItems,
      itemAsString: itemAsString,
      onChanged: onChange,
      actionsBarBuilder: (onCon) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
          child: HorizontialButtonsGroup.basic(
            onConfirm: () {
              onCon();
            },
            onDismiss: () => Navigator.of(context).pop(),
          ),
        );
      },
      popupProps: PopupPropsMultiSelection.modalBottomSheet(
        textDirection: ma.TextDirection.rtl,
        isFilterOnline: true,
        showSelectedItems: false,
        showSearchBox: true,
        listViewProps: const ListViewProps(padding: AppPadding.horizontalLarge),
        selectionWidget: (context, item, isSelected) {
          return const SizedBox();
          // TODO : implement selection widget
          //  return AppCheckBox(value: isSelected);
        },
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
            suffixStyle: style,
            suffixIconColor: AppColors.gray800,
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(Assets.icons.searchIcon),
            ),
          ),
        ),
        emptyBuilder: (co, t) => Center(child: Text(S.current.no_data_found)),
      ),
      items: items,
      validator: validator,
      clearButtonProps: ClearButtonProps(
        onPressed: onClearFn,
        isVisible: onClearFn != null,
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
}
