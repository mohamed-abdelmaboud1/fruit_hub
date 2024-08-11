import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/ui/widgets/custom_text_form_field.dart';

class ResetPasswordTextField extends StatelessWidget {
  const ResetPasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labeltext: 'رقم الهاتف',
      keyboardType: TextInputType.phone,
    );
  }
}