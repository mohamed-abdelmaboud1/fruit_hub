import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/utils/validator_helper.dart';
import '../../logic/sign_in_cubit/sign_in_cubit.dart';
import 'custom_text_form_field.dart';

class LoginPasswordField extends HookWidget {
  const LoginPasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isVisible = useState<bool>(true);

    return CustomTextFormField(
      validator: ValidatorHelper.validatePassword,
      labeltext: 'كلمة المرور',
      obscureText: isVisible.value,
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
        onTap: () {
          isVisible.value = !isVisible.value;
        },
        child: Icon(
          isVisible.value ? Icons.visibility_sharp : Icons.visibility_off_sharp,
          color: Color(0xffC9CECF),
        ),
      ),
      onSaved: (value) {
        SignInCubit.get(context).password = value!;
      },
    );
  }
}
