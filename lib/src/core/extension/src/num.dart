import 'package:intl/intl.dart';

extension NumExtension on num {
  /// Форматер для чисел
  /// 1000 = 1К
  /// 1000000 = 1М
  String kiloFormat({
    String? locale,
    final int decimalDigits = 0,
  }) =>
      NumberFormat.compactCurrency(
        locale: locale,
        decimalDigits: decimalDigits,
        symbol: '',
      ).format(this);

  /// Денежный форматтер
  String formatMoney({String? locale}) => NumberFormat.currency(
        customPattern: '##########',
        locale: locale,
        decimalDigits: 0,
      ).format(this);
}

String formatPrice(String priceString) {
  final List<String> parts = [];

  // Разбиваем строку на группы по три цифры и добавляем их в список
  for (var i = priceString.length; i > 0; i -= 3) {
    var start = i - 3;
    if (start < 0) {
      start = 0;
    }
    parts.add(priceString.substring(start, i));
  }

  // Объединяем группы с пробелами и добавляем символ валюты
  final formattedPrice = parts.reversed.join(' ') + ' ₽';

  return formattedPrice;
}
