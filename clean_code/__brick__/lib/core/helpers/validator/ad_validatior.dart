import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:{{package_name.snakeCase()}}/main.dart';

class AdValidator {
  static String? validatePrice(String? value, bool negotiable) {
    final bool isEmptyValue = value == null || value.isEmpty;
    final bool isEqualToZero = double.tryParse(value!) == 0;
    if (isEmptyValue || isEqualToZero) {
      return S.current.invalidPrice;
    }
    if (!negotiable && isEmptyValue) {
      return S.current.price_is_required;
    }
    return null;
  }

  static String? validateNumbers(String? value, String msg) {
    if (value == null || value.isEmpty) {
      return S.current.field_required;
    } else if (double.tryParse(value) == 0.0) {
      return msg;
    } else {
      return null;
    }
  }

  static String? carValidation(String? input) {
    if (input == null || input.length < 2) {
      return S.current.car_validation_error_message;
    }

    // Regex to match strings in Arabic or English with at least one char and one number
    final regex = RegExp(
      r'^(?:[a-zA-Z]*[0-9]+[a-zA-Z]+|[a-zA-Z]+[0-9]+[a-zA-Z]*)$|^(?:[ء-ي]*[٠-٩]+[ء-ي]+|[ء-ي]+[٠-٩]+[ء-ي]*)$',
    );
    if (!regex.hasMatch(input)) {
      return S.current.car_validation_error_message;
    }
    return null;
  }

 
}
