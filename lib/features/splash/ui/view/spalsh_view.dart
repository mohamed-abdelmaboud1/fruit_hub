import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/app_router.dart';
import '../widgets/splash_view_body.dart';

class SpalshView extends StatefulWidget {
  const SpalshView({Key? key}) : super(key: key);

  @override
  State<SpalshView> createState() => _SpalshViewState();
}

class _SpalshViewState extends State<SpalshView> {
  @override
  void initState() {
    super.initState();
    navigateToOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }

  void navigateToOnboarding() {
    Timer(const Duration(seconds: 2), () {
      // Navigate to onBoarding after 2 seconds
      context.go(AppRouter.onBoarding);
    });
  }
}
