import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_hub/core/services/cache_helper.dart';
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
    _hideAppBarStatus();
    navigateToNextPage();
  }

  void _hideAppBarStatus() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky, // hide both the status and the navigation
      overlays: [
        SystemUiOverlay.bottom,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }

  void navigateToNextPage() {
    Timer(const Duration(seconds: 3), () {
      // Navigate to onBoarding after 2 seconds
      CacheHelper.skipOnboarding == true
          ? context.go(
              AppRouter.login,
            )
          : context.go(
              AppRouter.onBoarding,
            );
    });
  }
}
