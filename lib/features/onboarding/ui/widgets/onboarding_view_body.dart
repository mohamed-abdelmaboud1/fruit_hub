import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fruit_hub/features/onboarding/ui/widgets/onboarding_page_view.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_button.dart';
import 'custom_dots_indicator.dart';

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
        Visibility(
          visible: currentPage.value != 0,
          maintainState: true,
          maintainAnimation: true,
          maintainSize: true,
          child: CustomButton(
            onPressed: () {},
            text: 'ابدأ الان',
          ),
        ),
        Gap(43),
        
      ],
    );
  }
}
