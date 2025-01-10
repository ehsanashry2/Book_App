import 'package:easy_localization/easy_localization.dart';

/// IF YOU WANT TO USE THIS CLASS, YOU NEED TO ADD THE FOLLOWING DEPENDENCY
/// TO YOUR pubspec.yaml FILE: [intl: ^0.17.0]
/// This class provides various date formats that can be used to format dates
/// if you want to use a custom format, you can use the [formatCustom] method.
class DateFormats {
  /// (e.g., "Oct 11, 2022 4:27:23 PM").
  ///
  ///
  final String lang =
      'en'; //AssetTranslations.getLanguage().locale.languageCode;
  static String formatDateDayAndTime(String stringDate) =>
      DateFormat.yMMMd().add_jms().format(DateTime.parse(stringDate).toLocal());

  ///(e.g., "Tuesday, October 11, 2022").
  static String formatDateyMMMMEEEEdTime(String stringDate) =>
      DateFormat.yMMMMEEEEd().format(DateTime.parse(stringDate).toLocal());

  ///(e.g., "Wednesday, October 12").
  static String formatDateEEEEMMMdd(String stringDate) => DateFormat.EEEE()
      .add_MMMM()
      .add_d()
      .format(DateTime.parse(stringDate).toLocal());

  ///(e.g., "October Wednesday 12").
  static String formatDateMMMMEEEEd(String stringDate) =>
      DateFormat.MMMMEEEEd().format(DateTime.parse(stringDate).toLocal());

  ///(e.g., "10/12/2022").
  static String formatDateMdyyyy(String stringDate) =>
      DateFormat.Md().add_y().format(DateTime.parse(stringDate).toLocal());

  ///(e.g., "16:27").
  static String formatDateHHmm(String stringDate) =>
      DateFormat.Hm().format(DateTime.parse(stringDate).toLocal());

  ///(e.g., "04:27:23").
  static String formatDatehhmmss(String stringDate) =>
      DateFormat.Hms().format(DateTime.parse(stringDate).toLocal());

  ///(e.g., "Oct 2022").
  static String formatDateMMMyy(String stringDate) =>
      DateFormat.MMM().add_y().format(DateTime.parse(stringDate).toLocal());

  ///(e.g., "24/11/20 11:30 am")
  static String formatDateYearMonthDayHoursMinAmOrPm(String stringDate) =>
      DateFormat(
        'yyyy-MM-dd hh:mm a',
      ).format(DateTime.parse(stringDate).toLocal());

  ///(e.g., "11:30 am")
  static String formatDateHoursMinAmOrPm(String stringDate) => DateFormat(
        'h:mm a',
      ).format(DateTime.parse(stringDate).toLocal());

  /// Formats the date and time using a custom format string.
  static String formatCustom(String stringDate, String format) => DateFormat(
        format,
      ).format(DateTime.parse(stringDate).toLocal());
  static String messagerFormated(String stringDate) =>
      DateFormat('MMMM d').format(DateTime.parse(stringDate).toLocal());

  //  gives the full name of the day
  static String getDayName(DateTime date, {String? locale}) =>
      DateFormat('EEEE', locale ?? 'en').format(date);

  //ex=> 25-7-2024
  static String formatDateDayMonthYear(DateTime date) {
    return "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }

  /// Checks if the provided string is a valid date.
  static bool isDateValid(String str) {
    try {
      DateTime.parse(str);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Formats the date and time using a custom format string and return DateTime.
  static DateTime convertStringToDateTime(String date) {
    var re = RegExp(
      r'^'
      r'(?<year>[0-9]{4,})'
      r'-'
      r'(?<month>[0-9]{1,2})'
      r'-'
      r'(?<day>[0-9]{1,2})'
      r'$',
    );

    var match = re.firstMatch(date);
    if (match == null) {
      throw const FormatException('Unrecognized date format');
    }

    var dateTime4 = DateTime(
      int.parse(match.namedGroup('year')!),
      
      int.parse(match.namedGroup('month')!),
      int.parse(match.namedGroup('day')!),
    );
    return dateTime4;
  }

  static String timeAgo(DateTime timestamp) {
    final now = DateTime.now().toLocal();
    final difference = now.difference(timestamp);

    if (difference.inDays > 0) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
    } else {
      return 'Just now'.tr();
    }
  }
}
