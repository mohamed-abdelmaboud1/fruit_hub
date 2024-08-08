import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/constant.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';

import '../../../../core/helper/navigate_to_home.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
    required this.currentPage,
  });

  final ValueNotifier<int> currentPage;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: currentPage.value != 0,
      maintainState: true,
      maintainAnimation: true,
      maintainSize: true,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: KHorzintalPadding,
        ),
        child: CustomButton(
          onPressed: () async {
            navigateToLoginView(context);
          },
          text: 'ابدأ الان',
        ),
      ),
    );
  }
}
