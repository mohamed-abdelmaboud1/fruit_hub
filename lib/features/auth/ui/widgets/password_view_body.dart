import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/constant.dart';
import 'package:fruit_hub/core/routing/app_router.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/ui/widgets/reset_password_text_field.dart';
import 'package:fruit_hub/features/auth/ui/widgets/verification_text.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

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
            text: 'نسيت كلمة المرور',
          ),
        ],
      ),
    );
  }
}
