import 'package:{{package_name.snakeCase()}}/core/helpers/validator/ad_validatior.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';

import 'agri_base_input.dart';
import 'agri_input_mixin.dart';

class AgriCarBoardTextField extends AgriBaseInput {
  const AgriCarBoardTextField({
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
  });
  final TextEditingController? controller;
  @override
  State<AgriCarBoardTextField> createState() => _AgriRegularTextFieldState();
}

class _AgriRegularTextFieldState extends State<AgriCarBoardTextField>
    with AgriInput<AgriCarBoardTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  TextEditingController? get inputController =>
      widget.controller ?? _controller;

  @override
  String? getHint() {
    return widget.label;
  }

  @override
  void didUpdateWidget(covariant AgriCarBoardTextField oldWidget) {
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
  FormTextType get type => FormTextType.full;

  @override
  String? Function(String? p1)? get validator => AdValidator.carValidation;

  @override
  List<TextInputFormatter>? get formatters => [
    LengthLimitingTextInputFormatter(7),
  ];
  @override
  TextInputType? get keyboardType => TextInputType.name;

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
}
