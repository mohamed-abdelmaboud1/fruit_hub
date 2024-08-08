import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/features/auth/ui/widgets/auth_button.dart';

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthButton(
      text: 'جوجل',
      iconPath: Assets.assetsImagesGoogleIcon,
    );
  }
}
