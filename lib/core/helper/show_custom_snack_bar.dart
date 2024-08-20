import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';

void showCustomSnackBar(
  BuildContext context,
  String text, {
  bool isError = false,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      dismissDirection: DismissDirection.horizontal,
      duration: const Duration(milliseconds: 1000),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      backgroundColor:
          isError ? Colors.red : AppColors.primaryColor.withOpacity(0.6),
      clipBehavior: Clip.none,
      content: Center(
        child: Text(
          text,
          style: AppStyles.regular16.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Mirza',
          ),
        ),
      ),
    ),
  );
}
