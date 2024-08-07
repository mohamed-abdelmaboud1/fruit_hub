import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/constant.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/features/onboarding/data/models/page_view_item_model.dart';
import 'package:gap/gap.dart';

class PageViewItemTextBody extends StatelessWidget {
  const PageViewItemTextBody({
    super.key,
    required this.model,
  });

  final PageViewItemModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: KHorzintalPadding),
      child: Column(
        children: [
          Gap(64),
          model.titleWidget,
          Gap(24),
          Text(
            model.description,
            textAlign: TextAlign.center,
            style: AppStyles.semiBold13,
          ),
        ],
      ),
    );
  }
}
