import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/ui/widgets/custom_text_form_field.dart';

import '../../../../core/utils/validator_helper.dart';
import '../../logic/sign_up_cubit/sign_up_cubit.dart';

class NameField extends StatelessWidget {
  const NameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labeltext: 'الاسم كامل',
      keyboardType: TextInputType.emailAddress,
      validator: ValidatorHelper.validateName,
      onSaved: (value) {
        SignUpCubit.get(context).name = value!;
      },
    );
  }
}
