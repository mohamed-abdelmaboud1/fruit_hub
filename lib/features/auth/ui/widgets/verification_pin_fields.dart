import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPinFields extends StatelessWidget {
  const VerificationPinFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: buildPinTheme(),
      keyboardType: TextInputType.number,
      animationDuration: Duration(milliseconds: 300),
      // errorAnimationController: errorController,
      // controller: textEditingController,
      onCompleted: (v) {
        print("Completed");
      },
      onChanged: (value) {
        print(value);
      },
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
    );
  }

  PinTheme buildPinTheme() {
    return PinTheme(
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(4),
      fieldHeight: 60,
      fieldWidth: 74,
      selectedColor: Color(0xffB0E8C7), // color of pin when it is selected

      activeColor: AppColors.primaryColor.withOpacity(0.8),
      inactiveColor: Color(0XFFE6E9EA), // color of pin border
      activeFillColor: const Color(0XFFF9FAFA), // backgroundColor of pin
      inactiveFillColor: Color(0xFFF9FAFA),
      borderWidth: 1.2,
    );
  }
}
