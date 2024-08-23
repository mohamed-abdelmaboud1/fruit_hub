import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/features/auth/ui/widgets/auth_button.dart';

import '../../logic/sign_in_cubit/sign_in_cubit.dart';

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthButton(
      isLoading: SignInCubit.get(context).state is SignInGoogleLoading,
      text: 'جوجل',
      iconPath: Assets.assetsImagesGoogleIcon,
      onTap: () {
        SignInCubit.get(context).signInWithGoogle();
      },
    );
  }
}
