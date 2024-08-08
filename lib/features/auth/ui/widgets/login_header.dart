import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/features/onboarding/ui/widgets/page_view_item_title.dart';
import 'package:gap/gap.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          Assets.assetsImagesLogo,
          height: 100,
        ),
        Gap(10),
        PageViewItemTitle1(
          fontSize: 14,
        ),
      ],
    );
  }
}
