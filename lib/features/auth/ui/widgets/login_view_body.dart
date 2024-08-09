import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/constant.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/ui/widgets/or_divider_widget.dart';
import 'package:gap/gap.dart';

import 'create_account_row.dart';
import 'forgot_password_text_button.dart';
import 'login_email_field.dart';
import 'login_header.dart';
import 'login_password_field.dart';
import 'login_with_apple.dart';
import 'login_with_facebook.dart';
import 'login_with_google.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: KHorzintalPadding,
      ),
      child: Column(
        children: [
          LoginHeader(),
          Gap(24),
          LoginEmailField(),
          Gap(16),
          LoginPasswordField(),
          Gap(16),
          ForgotPasswordTextButton(),
          Gap(33),
          CustomButton(
            onPressed: () {},
            text: 'تسجيل الدخول',
          ),
          //TODO isloading instaed of text
          Gap(33),
          CreateAccountNow(),
          Gap(33),
          OrDividerWidget(),
          Gap(16),
          LoginWithGoogle(),
          Gap(16),
          LoginWithApple(),
          Gap(16),
          LoginWithFacebook(),
        ],
      ),
    );
  }
}
