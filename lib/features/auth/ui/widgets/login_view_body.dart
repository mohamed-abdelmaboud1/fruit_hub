import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/constants/constant.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/widgets/cusotm_text_button.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/ui/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/ui/widgets/or_divider_widget.dart';
import 'package:fruit_hub/features/onboarding/ui/widgets/page_view_item_title.dart';
import 'package:gap/gap.dart';

import 'auth_button.dart';

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
          SvgPicture.asset(
            Assets.assetsImagesLogo,
            height: 100,
          ),
          Gap(10),
          PageViewItemTitle1(
            fontSize: 14,
          ),
          Gap(24),
          CustomTextFormField(
            labeltext: 'البريد الإلكتروني',
            keyboardType: TextInputType.emailAddress,
          ),
          Gap(16),
          CustomTextFormField(
            labeltext: 'كلمة المرور',
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: Icon(
              Icons.remove_red_eye_rounded,
              color: Color(0xffC9CECF),
            ),
          ),
          Gap(16),
          Align(
            alignment: Alignment.centerLeft,
            child: CusotmTextButton(
              text: 'نسيت كلمة المرور؟',
              onTap: () {},
            ),
          ),
          Gap(33),
          CustomButton(
            onPressed: () {},
            text: 'تسجيل الدخول',
          ),
           //TODO isloading instaed of text
          Gap(33),
          Row(
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
          ),
          Gap(33),
          OrDividerWidget(),
          Gap(16),
          AuthButton(
            text: 'جوجل',
            iconPath: Assets.assetsImagesGoogleIcon,
          ),
          Gap(16),
          AuthButton(
            text: 'أبل',
            iconPath: Assets.assetsImagesApplIcon,
          ),
          Gap(16),
          AuthButton(
            text: 'فيسبوك',
            iconPath: Assets.assetsImagesFacebookIcon,
          ),
        ],
      ),
    );
  }
}
