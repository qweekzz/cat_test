import 'package:car_test/src/core/extension/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
class PrimaryTextField extends StatefulWidget {
  /// Активное состояние
  ///
  /// По умолчанию true
  final bool enabled;

  /// Controller
  final TextEditingController controller;

  /// Отступы контента
  final EdgeInsets contentPadding;

  /// Префикс
  final Widget? prefixIcon;

  /// Суффикс
  final Widget? suffixIcon;

  /// Режим видимости Префикс
  final OverlayVisibilityMode prefixMode;

  /// Режим видимости Суффикса
  final OverlayVisibilityMode suffixMode;

  /// Ограничения на значок префикса
  final BoxConstraints? prefixIconConstraints;

  /// Ограничения на значок суффикса
  final BoxConstraints? suffixIconConstraints;

  /// Автофокус
  final bool autofocus;

  /// Отслеживание состояния для получения фокуса
  final FocusNode? focusNode;

  /// Заголовок
  final String labelText;

  /// Текст ошибки
  final String? errorText;

  /// Поле с паролем
  final bool obscureText;

  /// Символ скрытого текста
  final String obscureCharacter;

  /// Максимальное количество строк
  final int? maxLines;

  /// Поведение первой буквы
  final TextCapitalization textCapitalization;

  /// Тип подтверждения действия на клавиатуре
  final TextInputAction? textInputAction;

  /// Тип клавиатуры
  final TextInputType? keyboardType;

  /// Форматтеры текста
  final List<TextInputFormatter>? inputFormatters;

  /// Автозаполнение
  final Iterable<String>? autofillHints;

  /// Подсказка
  final String? hintText;

  /// Ограничение на количество символов
  final int? maxLength;

  final bool readOnly;

  /// On methods
  final void Function()? onTap;
  final void Function(String value)? onChanged;
  final void Function(String value)? onSubmitted;

  /// Кастомный Material TextField
  const PrimaryTextField({
    required this.controller,
    this.enabled = true,
    this.readOnly = false,
    this.contentPadding = const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 16,
    ),
    this.prefixMode = OverlayVisibilityMode.always,
    this.suffixMode = OverlayVisibilityMode.always,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.autofocus = false,
    this.focusNode,
    this.labelText = '',
    this.errorText,
    this.obscureText = false,
    this.obscureCharacter = '•',
    this.maxLines = 1,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.sentences,
    this.keyboardType,
    this.inputFormatters,
    this.autofillHints = const <String>[],
    this.hintText,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.maxLength,
    Key? key,
  }) : super(key: key);

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  late final FocusNode _focus;

  FocusNode get _focusNode => widget.focusNode ?? _focus;

  @override
  void initState() {
    super.initState();
    if (widget.focusNode == null) {
      _focus = FocusNode();
    }
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focus.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: _focusNode,
        builder: (context, _) => ValueListenableBuilder(
          valueListenable: widget.controller,
          builder: (context, value, _) => SizedBox(
            width: 210,
            child: TextField(
              enabled: widget.enabled,
              maxLength: widget.maxLength,
              readOnly: widget.readOnly,
              controller: widget.controller,
              autofocus: widget.autofocus,
              obscureText: widget.obscureText,
              obscuringCharacter: widget.obscureCharacter,
              minLines: 1,
              maxLines: widget.maxLines,
              textCapitalization: widget.textCapitalization,
              textInputAction: widget.textInputAction,
              textAlignVertical: TextAlignVertical.center,
              inputFormatters: widget.inputFormatters,
              autofillHints: widget.autofillHints,
              keyboardType: widget.keyboardType,
              focusNode: _focusNode,
              style: Theme.of(context).textTheme.labelMedium,
              cursorRadius: const Radius.circular(2),
              decoration: InputDecoration(
                prefixIcon:
                    _showPrefixWidget(value) && widget.prefixIcon != null
                        ? widget.prefixIcon
                        : null,
                prefixIconConstraints: widget.prefixIconConstraints ??
                    BoxConstraints.tight(const Size.square(40)),
                suffixIcon:
                    _showSuffixWidget(value) && widget.suffixIcon != null
                        ? widget.suffixIcon
                        : null,
                hintText: widget.hintText,
                suffixIconConstraints: widget.suffixIconConstraints ??
                    BoxConstraints.tight(const Size.square(40)),
                labelText: widget.labelText,
                labelStyle: context.theme.data.textTheme.labelMedium,
                floatingLabelStyle: context.theme.data.textTheme.labelSmall,
                errorText: widget.errorText,
                errorStyle: context.theme.data.textTheme.labelSmall?.copyWith(
                  color: context.theme.colors.active,
                ),
                errorMaxLines: 2,
                filled: false,
                contentPadding: widget.contentPadding,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: context.theme.colors.gray60,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: context.theme.colors.text,
                    width: 2,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: context.theme.colors.active,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: context.theme.colors.active,
                    width: 2,
                  ),
                ),
              ),
              onTap: widget.onTap,
              onChanged: widget.onChanged,
              onSubmitted: widget.onSubmitted,
            ),
          ),
        ),
      );

  bool _shouldShowAttachment({
    required OverlayVisibilityMode attachment,
    required bool hasText,
  }) {
    switch (attachment) {
      case OverlayVisibilityMode.never:
        return false;
      case OverlayVisibilityMode.always:
        return true;
      case OverlayVisibilityMode.editing:
        return hasText;
      case OverlayVisibilityMode.notEditing:
        return !hasText;
    }
  }

  bool _showPrefixWidget(TextEditingValue text) =>
      widget.prefixIcon != null &&
      _shouldShowAttachment(
        attachment: widget.prefixMode,
        hasText: text.text.isNotEmpty,
      );

  bool _showSuffixWidget(TextEditingValue text) =>
      widget.suffixIcon != null &&
      _shouldShowAttachment(
        attachment: widget.suffixMode,
        hasText: text.text.isNotEmpty,
      );
}
