import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../logic/sign_in_cubit/sign_in_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      isLoading: SignInCubit.get(context).state is SignInLoading,
      onPressed: () {
        SignInCubit.get(context).signInWithEmailAndPassword();
      },
      text: 'تسجيل الدخول',
    );
  }
}
