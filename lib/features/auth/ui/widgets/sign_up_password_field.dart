import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fruit_hub/features/auth/ui/widgets/custom_text_form_field.dart';

class SignUpPasswordField extends HookWidget {
  const SignUpPasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isVisible = useState<bool>(false);
    return CustomTextFormField(
      labeltext: 'كلمة المرور',
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
