import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/widgets/cusotm_text_button.dart';
import 'package:gap/gap.dart';

class CreateAccountRow extends StatelessWidget {
  const CreateAccountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ليس لديك حساب؟',
          style: AppStyles.semiBold13.copyWith(
            color: Color(0xff949D9E),
          ),
        ),
        Gap(2),
        CusotmTextButton(
          text: 'قم بإنشاء حساب',
          onTap: () {},
        ),
      ],
    );
  }
}
