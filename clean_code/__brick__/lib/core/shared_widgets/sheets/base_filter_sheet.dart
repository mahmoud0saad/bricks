import 'package:{{package_name.snakeCase()}}/core/helpers/date_time_utils.dart';
import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/context_extensions.dart';
import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/gap_extensions.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/app_button/horizontial_bottons_group.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/bottom_sheet/bottom_sheet_helper.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/icons/icon_config.dart';
import 'package:{{package_name.snakeCase()}}/core/shared_widgets/sheets/app_search_bar.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/inputs/date_text_field.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

typedef OnSearch = Function(String? value);
typedef OnFitler = Function(String? fromDate, String? toDate);

class BaseAppSearchBar extends StatelessWidget {
  const BaseAppSearchBar({
    super.key,
    this.hintSearchTitle,
    required this.onSearch,
    required this.onFitler,
    required this.onReset,
    this.fromDate,
    this.filterItems = const [],
    this.toDate,
  });
  final OnSearch onSearch;
  final VoidCallback onReset;
  final OnFitler onFitler;
  final String? fromDate;
  final String? toDate;
  final List<Widget> filterItems;
  final String? hintSearchTitle;
  @override
  Widget build(BuildContext context) {
    return AppSearchBar.withFilter(
      hint: hintSearchTitle ?? S.current.search,
      onSearch: (value) => onSearch(value),
      onFilter: () {
        BottomSheetHelper(
          context: context,
          isDismissible: true,
          content: FilterSheetBodyBuilder(
            onFitler: onFitler,
            onReset: onReset,
            fromDate: fromDate,
            toDate: toDate,
            filterItems: filterItems,
          ),
        ).openSizedSheet();
      },
    );
  }
}

class FilterSheetBodyBuilder extends StatefulWidget {
  const FilterSheetBodyBuilder({
    super.key,
    this.fromDate,
    this.toDate,
    required this.onReset,
    required this.filterItems,
    required this.onFitler,
  });
  final String? fromDate;
  final String? toDate;
  final OnFitler onFitler;
  final VoidCallback onReset;
  final List<Widget> filterItems;
  @override
  State<FilterSheetBodyBuilder> createState() => _FilterSheetBodyBuilderState();
}

class _FilterSheetBodyBuilderState extends State<FilterSheetBodyBuilder> {
  final TextEditingController _fromDate = TextEditingController();
  final TextEditingController _toDate = TextEditingController();
  @override
  void initState() {
    _fromDate.text = widget.fromDate ?? "";
    _toDate.text = widget.toDate ?? "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          fit: StackFit.loose,
          children: [
            SizedBox(height: 45.h, width: context.width),
            PositionedDirectional(
              start: 25.w,
              top: 10.h,
              child: SizedBox(
                width: context.width,
                child: Text(
                  S.current.filtering,
                  style: AgriTextTheme.of(
                    context,
                  ).heading1.bold(color: AppColors.black),
                ),
              ),
            ),
            PositionedDirectional(
              end: 0.5.w,
              top: 0.h,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(FontAwesomeIcons.xmark, size: 20.w),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: AgriDateTextField(
            onTap: () {
              DateTimeUtils.pickDate(
                context,
                S.current.from_date,
                _fromDate,
                lastDate: DateTime.now(),
                minDate: DateTime(2021),
                onSelect: () {
                  setState(() {});
                },
              );
            },
            label: S.current.from_date,
            controller: _fromDate,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: AgriDateTextField(
            onTap: () {
              DateTimeUtils.pickDate(
                context,
                S.current.to_date,
                _toDate,
                lastDate: DateTime.now(),
                minDate: _fromDate.text.trim().isEmpty
                    ? null
                    : DateTimeUtils.convertStringToDateTime(_fromDate.text),
              );
            },
            label: S.current.from_date,
            controller: _toDate,
          ),
        ),
        ...widget.filterItems.map(
          (e) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: e,
          ),
        ),
        30.h.gap,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: HorizontialButtonsGroup.icons(
            buttonTitle1: S.current.filtering,
            buttonTitle2: S.current.reset,
            iconConfig1: IconConfig(
              name: Assets.icons.filter,
              width: 16.w,
              height: 16.h,
              color: AppColors.white,
            ),
            iconConfig2: IconConfig(
              name: Assets.icons.resetIcon,
              width: 16.w,
              height: 16.h,
              color: AppColors.primaryGreen,
            ),
            onButtonOneTap: () async {
              String? from, to;
              if (_fromDate.text.trim().isNotEmpty) {
                from = DateTimeUtils.dashFormat(
                  DateTimeUtils.convertStringToDateTime(_fromDate.text),
                );
              }
              if (_toDate.text.trim().isNotEmpty) {
                to = DateTimeUtils.dashFormat(
                  DateTimeUtils.convertStringToDateTime(_toDate.text),
                );
              }

              widget.onFitler(from, to);
            },
            onButtonTwoTap: () {
              Navigator.of(context).pop();
              _toDate.clear();
              _fromDate.clear();
              widget.onReset();
            },
          ),
        ),
        30.h.gap,
      ],
    );
  }

  @override
  void dispose() {
    _fromDate.dispose();
    _toDate.dispose();
    super.dispose();
  }
}
