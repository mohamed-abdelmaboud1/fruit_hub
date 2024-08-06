import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/features/onboarding/data/models/page_view_item_model.dart';
import 'package:fruit_hub/features/onboarding/ui/widgets/page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
  });
  List<PageViewItemModel> get pageViewItems {
    return [
      PageViewItemModel(
        titleWidget: Text('data'),
        description:
            'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        backgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
        image: Assets.assetsImagesPageViewItem1Image,
      ),
      PageViewItemModel(
        titleWidget: Text('data'),
        description:
            'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية.',
        backgroundImage: Assets.assetsImagesPageViewItem2BackgroundImage,
        image: Assets.assetsImagesPageViewItem2Image,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: pageViewItems
          .map((e) => PageViewItem(
                model: e,
              ))
          .toList(),
    );
  }
}
