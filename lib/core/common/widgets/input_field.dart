import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppi/core/utils/utils.dart';

class InputFields extends StatelessWidget {
  final String hintText;
  final String title;
  final bool autoFocus;
  final String? Function(String?)? validator;
  final TextInputType keyboard;
  final Widget? prefixIcon;
  final bool obscureText;
  final Widget? suffixIcon;
  final String suffixText;
  final String prefixStyle;
  final Color fillColor;
  final TextEditingController controller;
  List<TextInputFormatter>? inputFormatters;
  InputFields({
    super.key,
    required this.hintText,
    this.fillColor = Colors.white,
    required this.title,
    this.prefixStyle = '',
    this.obscureText = false,
    this.suffixIcon,
    this.suffixText = '',
    this.autoFocus = false,
    this.keyboard = TextInputType.text,
    required this.controller,
    this.validator,
    this.prefixIcon,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.8,
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          autofocus: autoFocus,
          textInputAction: TextInputAction.done,
          // onFieldSubmitted: (_) {
          //   // FocusScope.of(context).requestFocus(_passwordFocusNode);
          // },
          inputFormatters: inputFormatters,
          obscureText: obscureText,
          validator: validator,
          controller: controller,
          keyboardType: keyboard,

          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            fillColor: fillColor,
            suffixIcon: suffixIcon,
            suffixText: suffixText,
            prefixText: prefixStyle,
            filled: true,
            labelText: hintText,

            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red.withValues(alpha: 0.3)),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red.withValues(alpha: 0.3)),
            ),
            contentPadding: const EdgeInsets.all(6.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Palette.Primary.withValues(alpha: 0.7),
              ),
            ),
            labelStyle: TextStyle(
              color: Color(0xff6E7187),
              fontSize: 15,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.8,
            ),
            // prefixIcon: Icon(Icons.phone, color: Colors.black54),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: Palette.mainColor.withValues(alpha: 0.3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
