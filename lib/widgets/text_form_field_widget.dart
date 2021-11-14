import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String? labelText;
  final TextEditingController? controller;
  final String? errorText;
  final bool? obscureText;
  final String? helperText;
  final String? hintText;
  final bool? enabled;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextAlignVertical? textAlignVertical;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final String? initialValue;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? prefix;
  final Widget? prefixIcon;
  final bool? isDense;
  final bool isCollapsed;
  final EdgeInsetsGeometry? contentPadding;
  final List<TextInputFormatter>? inputFormatters;
  final bool autofocus;

  const TextFormFieldWidget({
    Key? key,
    @required this.labelText,
    this.controller,
    this.errorText,
    this.obscureText,
    this.helperText,
    this.hintText,
    this.enabled,
    this.textInputType,
    this.onChanged,
    this.onFieldSubmitted,
    this.initialValue,
    this.suffix,
    this.suffixIcon,
    this.prefix,
    this.prefixIcon,
    this.isDense = false,
    this.isCollapsed = false,
    this.contentPadding,
    this.inputFormatters,
    this.autofocus = false,
    this.textInputAction,
    this.textAlignVertical = TextAlignVertical.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      inputFormatters: inputFormatters,
      enabled: enabled,
      controller: controller,
      initialValue: initialValue,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      textAlignVertical: textAlignVertical,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorText,
        helperText: helperText,
        hintText: hintText,
        suffix: suffix,
        suffixIcon: suffixIcon,
        prefix: prefix,
        prefixIcon: prefixIcon,
        contentPadding: contentPadding,
        isDense: isDense,
        isCollapsed: isCollapsed,
      ),
    );
  }
}
