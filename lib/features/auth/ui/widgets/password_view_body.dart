import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/widgets/custom_button.dart';
import 'reset_password_text_field.dart';
import 'verification_text.dart';

class PasswordViewBody extends StatelessWidget {
  const PasswordViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: KHorzintalPadding),
      child: Column(
        children: [
          Gap(24),
          VerificationText(),
          Gap(30),
          ResetPasswordTextField(),
          Gap(30),
          CustomButton(
            onPressed: () {
              context.push(AppRouter.verification);
            },
            text: 'نسيتd كلمة المرور',
          ),
        ],
      ),
    );
  }
}
