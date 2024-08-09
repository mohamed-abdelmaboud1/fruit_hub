import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';

class RulesWidget extends StatelessWidget {
  const RulesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'من خلال إنشاء حساب ، فإنك توافق على ',
            style: AppStyles.semiBold13.copyWith(
              color: Color(0xff949D9E),
            ),
          ),
          TextSpan(
            text: 'الشروط والأحكام الخاصة بنا',
            style: AppStyles.semiBold13.copyWith(
              color: Color(0xff2D9F5D),
            ),
          )
        ],
      ),
    );
  }
}
