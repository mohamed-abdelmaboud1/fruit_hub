import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fruit_hub/core/constants/constant.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:fruit_hub/features/auth/ui/widgets/name_field.dart';
import 'package:fruit_hub/features/auth/ui/widgets/sign_up_email_field.dart';
import 'package:fruit_hub/features/auth/ui/widgets/sign_up_password_field.dart';
import 'package:gap/gap.dart';

import 'login_now.dart';
import 'terms_and_conditions_widget.dart';

class SignUpViewBody extends HookWidget {
  const SignUpViewBody({
    super.key,
  });

  Widget build(BuildContext context) {
    final isChecked = useState<bool>(false);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: KHorzintalPadding,
      ),
      child: Form(
        key: SignUpCubit.get(context).formKey,
        autovalidateMode: SignUpCubit.get(context).autovalidateMode,
        child: Column(
          children: [
            Gap(24),
            NameField(),
            Gap(16),
            SignUpEmailField(),
            Gap(16),
            SignUpPasswordField(),
            Gap(16),
            TermsAndConditionsWidget(
              onChanged: (value) {
                isChecked.value = value;
              },
            ),
            Gap(30),
            CustomButton(
              isButtonEnabled: isChecked.value,
              isLoading: SignUpCubit.get(context).state is SignUpLoading,
              text: 'إنشاء حساب جديد',
              onPressed: () {
                print('sign up');
                SignUpCubit.get(context).signUpWithEmailAndPassword();
              },
            ),
            Gap(30),
            LoginNow(),
          ],
        ),
      ),
    );
  }
}
