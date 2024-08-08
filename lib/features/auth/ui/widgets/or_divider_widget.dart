import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/features/auth/ui/view/login_view.dart';

import 'auth_divider.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: AuthDivider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 17.83,
          ),
          child: Text(
            'أو',
            style: AppStyles.semiBold13.copyWith(
              color: Color(0xff949D9E),
            ),
          ),
        ),
        Expanded(
          child: AuthDivider(),
        ),
      ],
    );
  }
}
