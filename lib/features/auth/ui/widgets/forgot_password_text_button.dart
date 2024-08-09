import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/cusotm_text_button.dart';

class ForgotPasswordTextButton extends StatelessWidget {
  const ForgotPasswordTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CusotmTextButton(
        text: 'نسيت كلمة المرور؟',
        onTap: () {},
      ),
    );
  }
}
