import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import 'custom_dots_indicator.dart';
import 'onboarding_button.dart';
import 'onboarding_page_view.dart';

class OnboardingViewBody extends HookWidget {
  const OnboardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    var currentPage = useState<int>(0);
    // why using controller.hasClients?
    controller.addListener(() {
      currentPage.value = controller.page!.round();
    });
    return Column(
      children: [
        Expanded(
            child: OnboardingPageView(
          controller: controller,
        )),
        CustomDotsIndicator(
          position: currentPage.value,
        ),
        Gap(29),
        OnboardingButton(
          currentPage: currentPage,
        ),
        Gap(43),
      ],
    );
  }
}
