import 'package:flutter/material.dart';

import '../../../../core/utils/validator_helper.dart';
import '../../logic/sign_up_cubit/sign_up_cubit.dart';
import 'custom_text_form_field.dart';

class SignUpEmailField extends StatelessWidget {
  const SignUpEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labeltext: 'البريد الإلكتروني',
      keyboardType: TextInputType.emailAddress,
      validator: ValidatorHelper.validateEmail,
      onSaved: (value) {
        SignUpCubit.get(context).email = value!;
      },
    );
  }
}
