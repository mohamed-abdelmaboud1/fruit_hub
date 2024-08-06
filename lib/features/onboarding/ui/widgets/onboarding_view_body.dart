import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/features/onboarding/ui/widgets/onboarding_page_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnboardingPageView()),
        DotsIndicator(
          decorator: DotsDecorator(
            color: AppColors.primaryColor.withOpacity(0.5),
            activeColor: AppColors.primaryColor,
          ),
          dotsCount: 2,
        ),
      ],
    );
  }
}
