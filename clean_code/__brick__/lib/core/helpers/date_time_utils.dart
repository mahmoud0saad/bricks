import 'package:{{package_name.snakeCase()}}/core/extentions/context_extensions.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../theme/app_colors.dart';

class DateTimeUtils {
  DateTimeUtils._();
  static String slashFormat(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String dashFormat(
    DateTime date, {
    BuildContext? context,
    String? languageCode,
  }) {
    return DateFormat(
      'dd-MM-yyyy',
      languageCode ?? context?.langCode,
    ).format(date);
  }

  static DateTime convertStringToDateTime(String date) {
    // Convert non-Western numerals (e.g., Arabic) to Western digits
    date = date
        .replaceAll('٠', '0')
        .replaceAll('١', '1')
        .replaceAll('٢', '2')
        .replaceAll('٣', '3')
        .replaceAll('٤', '4')
        .replaceAll('٥', '5')
        .replaceAll('٦', '6')
        .replaceAll('٧', '7')
        .replaceAll('٨', '8')
        .replaceAll('٩', '9');

    // Split the date by '-'
    final List<String> dateParts = date.split('-');

    // Parse the parts into day, month, and year
    final int day = int.parse(dateParts[0]);
    final int month = int.parse(dateParts[1]);
    final int year = int.parse(dateParts[2]);

    // Create and return the DateTime object
    return DateTime(year, month, day);
  }

  static DateTime? convertStringToDateTimeNullabel(String date) {
    // Convert non-Western numerals (e.g., Arabic) to Western digits
    debugPrint("date $date");
    try {
      date = date
          .replaceAll('٠', '0')
          .replaceAll('١', '1')
          .replaceAll('٢', '2')
          .replaceAll('٣', '3')
          .replaceAll('٤', '4')
          .replaceAll('٥', '5')
          .replaceAll('٦', '6')
          .replaceAll('٧', '7')
          .replaceAll('٨', '8')
          .replaceAll('٩', '9');

      // Split the date by '-'
      final List<String> dateParts = date.split('-');
      debugPrint("dateParts $dateParts");
      // Parse the parts into day, month, and year
      final int day = int.parse(dateParts[0]);
      final int month = int.parse(dateParts[1]);
      final int year = int.parse(dateParts[2]);

      // Create and return the DateTime object
      return DateTime(year, month, day);
    } catch (ex) {
      return null;
    }
  }

  static String timeFormat(DateTime date) {
    return DateFormat('hh:mm a').format(DateTime.now());
  }

  // We use `toLocal()` here to ensure that the parsed DateTime is correctly adjusted
  // to the device's local time zone. This is important because the input date string
  // includes a time zone offset (e.g., "+03:00"), and `DateTime.parse()` by default
  // converts the time to UTC. By calling `toLocal()`, we adjust the time to match the
  // user's local time zone (e.g., for users in Egypt, which is typically UTC+2).
  // This ensures that the displayed time aligns with local expectations, especially
  // for users in different regions. and this issue number 429 for more detail
  static String formatDateTime(
    String createdAt,
    BuildContext context, {
    String? format,
  }) {
    final outputFormat = DateFormat(
      format ?? 'dd MMMM yyyy hh:mm a',
      context.langCode,
    );
    final dateTime = DateTime.parse(createdAt).toLocal();
    final formattedDateTime = outputFormat.format(dateTime);

    return formattedDateTime;
  }

  // static String formatDate(String createdAt) {
  //   final outputFormat = DateFormat('yyyy-MM-dd');
  //   final dateTime = DateTime.parse(createdAt);
  //   final formattedDateTime = outputFormat.format(dateTime);

  //   return formattedDateTime;
  // }

  static String getTimeCreatedAt(String createdAt, BuildContext context) {
    final inputFormat = DateFormat('yyyy-MM-ddTHH:mm:ssZ');
    final outputFormat = DateFormat('hh:mm a', context.langCode);
    final dateTime = inputFormat.parse(createdAt);
    final formattedDateTime = outputFormat.format(dateTime);

    return formattedDateTime;
  }

  static String capitalizeFirstChar(String? txt) {
    return txt != null ? txt.replaceFirst(txt[0], txt[0].toUpperCase()) : "";
  }

  static int calculateThediffernce(String dateTime, String createdAt) {
    final DateTime duration = DateTime.parse(createdAt);
    final DateTime createAt = DateTime(
      duration.year,
      duration.month,
      duration.day,
    );
    final Duration diff = DateTime.parse(dateTime).difference(createAt);
    return diff.inDays;
  }

  static String calculateTheTime(String createdAt) {
    final duration = DateTime.parse(createdAt);
    final Duration diff = DateTime.now().difference(duration);
    if (diff.inSeconds < 60) {
      return "${S.current.ago} ${S.current.few_seconds}";
    }
    if (diff.inMinutes < 60) {
      return "${S.current.ago} ${diff.inMinutes.toString()} ${S.current.minute_ago}";
    }
    if (diff.inHours < 24) {
      return "${S.current.ago} ${diff.inHours.toString()} ${S.current.hours_ago}";
    }
    return "${S.current.ago} ${diff.inDays.toString()} ${S.current.day}";
  }

  static Future pickDate(
    BuildContext context,
    String title,
    TextEditingController co, {
    DateTime? minDate,
    DateTime? lastDate,
    DateTime? initialDate,
    VoidCallback? onSelect,
  }) async {
    final DateTime? dateTime = await showDatePicker(
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primaryGreen,
              onPrimary: AppColors.white,
              onSurface: AppColors.black,
            ),
            textTheme: TextTheme(
              bodyMedium: TextStyle(
                fontSize: 10.0.sp,
              ), // <-- here you can do your font smaller
              bodyLarge: TextStyle(fontSize: 8.0.sp),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primaryGreen,
              ),
            ),
          ),
          child: child!,
        );
      },
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: minDate ?? DateTime(2016),
      lastDate: lastDate ?? DateTime(3000),
    );
    if (dateTime != null) {
      co.text = dashFormat(dateTime, context: context);

      if (onSelect != null) onSelect();
    }
  }
}
