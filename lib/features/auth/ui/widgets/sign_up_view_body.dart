import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/constant.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/ui/widgets/name_field.dart';
import 'package:fruit_hub/features/auth/ui/widgets/sign_up_email_field.dart';
import 'package:fruit_hub/features/auth/ui/widgets/sign_up_password_field.dart';
import 'package:gap/gap.dart';

import 'login_now.dart';
import 'terms_and_conditions_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
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
          Gap(24),
          NameField(),
          Gap(16),
          SignUpEmailField(),
          Gap(16),
          SignUpPasswordField(),
          Gap(16),
          TermsAndConditionsWidget(),
          Gap(30),
          CustomButton(
            text: 'إنشاء حساب جديد',
            onPressed: () {},
          ),
          Gap(30),
          LoginNow(),
        ],
      ),
    );
  }
}