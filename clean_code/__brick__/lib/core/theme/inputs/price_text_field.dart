import 'package:{{package_name.snakeCase()}}/core/helpers/validator/ad_validatior.dart';
import 'package:{{package_name.snakeCase()}}/core/helpers/validator/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';

import 'agri_base_input.dart';
import 'agri_input_mixin.dart';

class AgriPriceTextField extends AgriBaseInput {
  const AgriPriceTextField({
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
    this.negotiable = false,
    super.autoSubmit,
  });
  final TextEditingController? controller;
  final bool negotiable;
  @override
  State<AgriPriceTextField> createState() => _AgriRegularTextFieldState();
}

class _AgriRegularTextFieldState extends State<AgriPriceTextField>
    with AgriInput<AgriPriceTextField> {
  final TextEditingController _controller = TextEditingController();
  @override
  TextEditingController? get inputController =>
      widget.controller ?? _controller;

  @override
  String? getHint() {
    return widget.label;
  }

  @override
  void didUpdateWidget(covariant AgriPriceTextField oldWidget) {
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
  String? Function(String?)? get validator {
    return (value) => AdValidator.validatePrice(value, widget.negotiable);
  }

  @override
  TextInputType? get keyboardType => Validator.decimalKeyboardType;

  @override
  List<TextInputFormatter>? get formatters => Validator.decimalInputFormatter;

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
