import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/logic/sign_in_cubit/sign_in_cubit.dart';
import 'package:fruit_hub/features/auth/ui/widgets/custom_text_form_field.dart';

import '../../../../core/utils/validator_helper.dart';

class LoginEmailField extends StatelessWidget {
  const LoginEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labeltext: 'البريد الإلكتروني',
      keyboardType: TextInputType.emailAddress,
      validator: ValidatorHelper.validateEmail,
      onSaved: (value) {
        SignInCubit.get(context).email = value!;
      },
    );
  }
}
