import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/cusotm_text_button.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/verification_pin_fields.dart';
import '../widgets/verification_view_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'التحقق من الرمز'),
      body: VerificationViewBody(),
    );
  }
}
