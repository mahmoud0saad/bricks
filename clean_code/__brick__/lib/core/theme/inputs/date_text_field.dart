import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'agri_base_input.dart';
import 'agri_input_mixin.dart';

class AgriDateTextField extends AgriBaseInput {
  const AgriDateTextField({
    super.key,
    super.validator,
    required super.label,
    super.initialValue,
    super.action,
    super.type,
    super.formatters,
    super.enabled,
    super.onChange,
    super.onSubmit,
    super.onSave,
    super.maxLength,
    this.controller,
    super.onFocusChange,
    super.autoSubmit,
    required this.onTap,
  });
  final Function onTap;
  final TextEditingController? controller;
  @override
  State<AgriDateTextField> createState() => _AgriFromDateTextFieldState();
}

class _AgriFromDateTextFieldState extends State<AgriDateTextField>
    with AgriInput<AgriDateTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  TextEditingController? get inputController =>
      widget.controller ?? _controller;

  @override
  String? getHint() {
    return widget.label;
  }

  @override
  bool get readOnly {
    return true;
  }

  @override
  void didUpdateWidget(covariant AgriDateTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      Future.delayed(Duration.zero, () {
        _controller.text = widget.initialValue ?? "";
        _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length),
        );
      });
    }
  }

  @override
  bool get enabled => true;

  @override
  TextStyle get mainTextStyle =>
      AgriTextTheme.of(context).heading3.med(color: AppColors.black);

  @override
  BoxConstraints? get suffixConstraints {
    return BoxConstraints(maxHeight: 30.h, maxWidth: 30.w);
  }

  @override
  Widget? getSuffix() {
    return SvgPicture.asset(
      Assets.icons.calendarIcon,
      width: 20.w,
      height: 20.w,
      color: AppColors.naturalGray2,
    );
  }

  @override
  FormTextType get type => FormTextType.full;

  // @override
  // String? Function(String? p1)? get validator => Validator.validateEmpty;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _controller.text = widget.initialValue ?? "";
      _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: AbsorbPointer(absorbing: true, child: super.build(context)),
    );
  }
}
