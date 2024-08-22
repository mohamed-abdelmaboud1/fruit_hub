import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.position,
  });
  final int position;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      position: position,
      decorator: DotsDecorator(
        color: AppColors.primaryColor.withOpacity(0.5),
        activeColor: AppColors.primaryColor,
      ),
      dotsCount: 2,
    );
  }
}
