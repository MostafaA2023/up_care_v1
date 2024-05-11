import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? title;
  final String? label;
  final TextEditingController textEditingController;
  final FormFieldValidator<String>? validator;
  final int maxLines;
  final int maxLength;
  final Widget? icon;
  final Color? color;
  final bool obscure;
  final TextInputType input;

  const CustomTextField({
    super.key,
    required this.textEditingController,
    this.title,
    this.label,
    this.validator,
    this.maxLines = 1,
    this.maxLength = 20,
    this.icon,
    this.color,
    this.obscure = false,
    this.input = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      validator: validator,
      maxLines: maxLines,
      maxLength: maxLength,

      obscureText: obscure,
      keyboardType: input,
      decoration: InputDecoration(
          hintText: title,
          suffixIcon: icon,
          suffixIconColor: color,
          counterText: "",
          hintStyle: const TextStyle(color: Color(0xff707070)),
          focusedBorder: const UnderlineInputBorder(
              borderSide:
              BorderSide(color: Color(0xff64B3FF)))),

    );
  }
}
