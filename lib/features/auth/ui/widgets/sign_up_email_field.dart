import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/ui/widgets/custom_text_form_field.dart';

class SignUpEmailField extends StatelessWidget {
  const SignUpEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labeltext: 'البريد الإلكتروني',
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {},
    );
  }
}
