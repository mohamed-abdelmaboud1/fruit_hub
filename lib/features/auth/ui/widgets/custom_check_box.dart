import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

class CustomCheckBox extends HookWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isChecked = useState<bool>(false);
    return GestureDetector(
      onTap: () {
        isChecked.value = !isChecked.value;
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: isChecked.value ? AppColors.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Color(0xFFDDDFDF),
            width: 1.5,
          ),
        ),
        child: isChecked.value
            ? Icon(
                Icons.check,
                size: 16,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
