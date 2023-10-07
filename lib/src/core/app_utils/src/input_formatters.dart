import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:meta/meta.dart';

@sealed
class DateInputFormatter extends MaskTextInputFormatter {
  DateInputFormatter()
      : super(
          mask: '##.##.####',
          filter: {'#': RegExp('[0-9]')},
        );
}

@sealed
class RuPhoneInputFormatter extends MaskTextInputFormatter {
  RuPhoneInputFormatter()
      : super(
          mask: '+7 (###) ###-##-##',
          filter: {'#': RegExp('[0-9]')},
        );

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final oValue = oldValue;
    var nValue = newValue;
    if (newValue.text.isNotEmpty &&
        newValue.text.length == 1 &&
        newValue.text[0] == '8') {
      nValue = oldValue;
    }

    if (oldValue.text.isEmpty && newValue.text.isNotEmpty) {
      final onlyNumbers = newValue.text.replaceAll(RegExp('[^0-9]'), '');
      if (onlyNumbers.length == 11 && onlyNumbers.startsWith('7')) {
        nValue = newValue.copyWith(
          text: onlyNumbers.substring(1),
          selection: TextSelection.collapsed(
            offset: newValue.selection.end + 1,
          ),
        );
      }
    }
    return super.formatEditUpdate(oValue, nValue);
  }
}

class NumberFormatterRubUtil extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    final value = double.parse(newValue.text);

    final formatter = NumberFormat.currency(
      locale: 'RU',
      decimalDigits: 0,
      symbol: '₽',
    );

    final newText = formatter.format(value).trim();

    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length - 2),
    );
  }
}
