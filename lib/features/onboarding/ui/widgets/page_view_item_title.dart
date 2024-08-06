import 'package:flutter/material.dart';

class PageViewItemTitle extends StatelessWidget {
  const PageViewItemTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'مرحبًا بك في',
            style: TextStyle(
              color: Color(0xFF0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          TextSpan(
            text: ' Fruit',
            style: TextStyle(
              color: Color(0xFF1B5E37),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          TextSpan(
            text: 'HUB',
            style: TextStyle(
              color: Color(0xFFF4A91F),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
