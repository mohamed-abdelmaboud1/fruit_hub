import 'package:flutter/material.dart';
import '../../../../core/utils/app_images.dart';
import '../../data/models/page_view_item_model.dart';
import 'page_view_item.dart';

import 'page_view_item_title.dart';
import 'page_view_item_title2.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
    required this.controller,
  });
  final PageController controller;

  List<PageViewItemModel> get pageViewItems {
    return [
      PageViewItemModel(
        isVisible: true,
        titleWidget: PageViewItemTitle1(),
        description:
            'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        backgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
        image: Assets.assetsImagesPageViewItem1Image,
      ),
      PageViewItemModel(
        isVisible: false,
        titleWidget: PageViewItemTitle2(),
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
      controller: controller,
      children: pageViewItems
          .map(
            (e) => PageViewItem(
              model: e,
            ),
          )
          .toList(),
    );
  }
}
