import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../logic/sign_up_cubit/sign_up_cubit.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
    required this.isChecked,
  });

  final ValueNotifier<bool> isChecked;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      isButtonEnabled: isChecked.value,
      isLoading: SignUpCubit.get(context).state is SignUpLoading,
      text: 'إنشاء حساب جديد',
      onPressed: () {
        print('sign up');
        SignUpCubit.get(context).signUpWithEmailAndPassword();
      },
    );
  }
}
