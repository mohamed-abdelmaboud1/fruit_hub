import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.labeltext,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
  });
  final void Function(String value)? onChanged;
  final String? labeltext;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0XFFF9FAFA),
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
        labelText: labeltext,
        labelStyle: AppStyles.bold13,
        suffixIcon: suffixIcon,
      ),
    );
  }

  _buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(4),
      ),
      borderSide: BorderSide(
        width: 1.2,
        color: Color(0XFFE6E9EA),
      ),
    );
  }
}