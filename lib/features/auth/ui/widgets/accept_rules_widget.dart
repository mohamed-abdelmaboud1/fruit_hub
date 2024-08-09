import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/ui/view/sign_up_view.dart';
import 'package:gap/gap.dart';

import 'custom_check_box.dart';
import 'rules_widget.dart';

class AcceptRulesWidget extends StatelessWidget {
  const AcceptRulesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(),
        Gap(8),
        RulesWidget(),
      ],
    );
  }
}
