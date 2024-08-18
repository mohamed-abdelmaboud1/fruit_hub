import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/navigate_to_home.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/features/onboarding/data/models/page_view_item_model.dart';

import '../../../../core/helper/navigate_to_login_view.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.model,
  });

  final PageViewItemModel model;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: model.isVisible,
      child: Positioned(
        top: 40,
        right: 20,
        child: InkWell(
          onTap: () {
            navigateToLoginView(context);
          },
          child: Text(
            'تخط',
            style: AppStyles.regular12,
          ),
        ),
      ),
    );
  }
}
