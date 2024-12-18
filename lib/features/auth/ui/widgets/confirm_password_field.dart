import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'custom_text_form_field.dart';

class ConfirmPasswordField extends HookWidget {
  const ConfirmPasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isVisible = useState<bool>(true);
    return CustomTextFormField(
      labeltext: 'تأكيد كلمة المرور',
      obscureText: isVisible.value,
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
        onTap: () {
          isVisible.value = !isVisible.value;
        },
        child: Icon(
          isVisible.value ? Icons.visibility_sharp : Icons.visibility_off_sharp,
          color: Color(0xffC9CECF),
        ),
      ),
      onChanged: (value) {},
    );
  }
}
