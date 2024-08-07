import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

import '../../../../core/utils/app_styles.dart';

class PageViewItemTitle1 extends StatelessWidget {
  const PageViewItemTitle1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'مرحبًا بك في',
            style: AppStyles.bold23,
          ),
          TextSpan(
            text: ' Fruit',
            style: AppStyles.bold23.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          TextSpan(
            text: 'HUB',
            style: AppStyles.bold23.copyWith(
              color: Color(0xFFF4A91F),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
