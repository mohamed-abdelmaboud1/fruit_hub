import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/ui/widgets/custom_text_form_field.dart';

class NameField extends StatelessWidget {
  const NameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labeltext: 'الاسم كامل',
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {},
    );
  }
}
