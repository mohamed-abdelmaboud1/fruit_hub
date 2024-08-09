import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/widgets/cusotm_text_button.dart';
import 'package:gap/gap.dart';

class TextWithButtonRow extends StatelessWidget {
  const TextWithButtonRow({
    super.key,
    required this.text,
    required this.textButton,
    required this.onTap,
  });
  final String text;
  final String textButton;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppStyles.semiBold13.copyWith(
            color: Color(0xff949D9E),
          ),
        ),
        Gap(3),
        CusotmTextButton(
          text: textButton,
          onTap: onTap,
        ),
      ],
    );
  }
}
