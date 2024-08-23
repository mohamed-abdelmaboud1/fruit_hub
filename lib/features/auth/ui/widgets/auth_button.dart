import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.text,
    required this.iconPath,
    this.onTap,
    this.isLoading = false,
  });
  final String text;
  final String iconPath;
  final VoidCallback? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Color(
              0xffDDDFDF,
            ),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(iconPath),
            Spacer(),
            isLoading
                ? LoadingAnimationWidget.stretchedDots(
                    color: Colors.white,
                    size: 25,
                  )
                : Text(
                    'تسجيل بواسطة $text',
                    style: AppStyles.semiBold16.copyWith(
                      color: Color(
                        0xff0C0D0D,
                      ),
                    ),
                  ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
