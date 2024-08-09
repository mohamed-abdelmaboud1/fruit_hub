import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: false,
      onChanged: (value) {},
    );
  }
}
