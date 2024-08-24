import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class VerificationText extends StatelessWidget {
  const VerificationText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
      style: AppStyles.semiBold13.copyWith(
        color: const Color(0xFF616A6B),
      ),
    );
  }
}
