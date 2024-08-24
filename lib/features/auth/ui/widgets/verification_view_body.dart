import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/cusotm_text_button.dart';
import '../../../../core/widgets/custom_button.dart';
import 'verification_pin_fields.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: KHorzintalPadding),
      child: Column(
        children: [
          Gap(24),
          Text(
            'أدخل الرمز الذي أرسلناه إلى عنوان بريد التاليMaxxx@email.com',
            style: AppStyles.semiBold13.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          Gap(30),
          VerificationPinFields(),
          Gap(30),
          CustomButton(
            onPressed: () {
              context.push(AppRouter.newPassword);
            },
            text: 'تحقق من الرمز',
          ),
          Gap(24),
          CusotmTextButton(
            text: 'إعادة إرسال الرمز',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
