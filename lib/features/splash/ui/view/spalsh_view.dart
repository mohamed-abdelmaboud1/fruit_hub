import 'package:flutter/material.dart';

import '../widgets/splash_view_body.dart';

class SpalshView extends StatelessWidget {
  const SpalshView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
