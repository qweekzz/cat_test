import 'package:intl/intl.dart';

extension DateExtensions on DateTime {
  /// Сегодня, dd MMMM
  /// dd MMMM
  String formatDateWithNameDay(String? locale) {
    final first = formatToNameDayOrWeekday(locale);
    final second = formatMiddleDate(locale: locale);

    return '$first, $second';
  }

  String formatMiddleDate({String? locale}) =>
      DateFormat('d MMMM', locale).format(this);

  int calculateDifference() {
    final now = DateTime.now();
    return DateTime(year, month, day)
        .difference(DateTime(now.year, now.month, now.day))
        .inDays;
  }

  /// Вчера : _calculateDifference(date) == -1.
  /// Сегодня : _calculateDifference(date) == 0.
  /// Завтра : _calculateDifference(date) == 1
  String formatToNameDayOrDate(String? locale) {
    final difference = calculateDifference();
    if (difference == -1) {
      return 'Вчера';
    } else if (difference == 0) {
      return 'Сегодня';
    } else if (difference == 1) {
      return 'Завтра';
    } else {
      return toBeginningOfSentenceCase(
            DateFormat('d MMMM y', locale).format(toLocal()),
          ) ??
          '';
    }
  }

  String formatToDayMonthDate(String? locale) =>
      toBeginningOfSentenceCase(
        DateFormat('d MMMM', locale).format(toLocal()),
      ) ??
      '';

  /// Вчера : _calculateDifference(date) == -1.
  /// Сегодня : _calculateDifference(date) == 0.
  /// Завтра : _calculateDifference(date) == 1
  String formatToNameDayOrWeekday(String? locale) {
    final difference = calculateDifference();
    if (difference == -1) {
      return 'Вчера';
    } else if (difference == 0) {
      return 'Сегодня';
    } else if (difference == 1) {
      return 'Завтра';
    }

    return toBeginningOfSentenceCase(
          DateFormat('EE', locale).format(this),
        ) ??
        '';
  }

  String formatToServerDate() => DateFormat('yyyy-MM-dd').format(this);

  String onlyTime() => DateFormat('HH:mm').format(this);

  String formatNumberDate() => DateFormat('dd.MM.yyyy').format(this);
}
