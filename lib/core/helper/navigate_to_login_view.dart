import 'package:flutter/material.dart';
import 'package:fruit_hub/core/routing/app_router.dart';
import 'package:fruit_hub/core/services/cache_helper.dart';
import 'package:go_router/go_router.dart';

void navigateToLoginView(BuildContext context) {
    CacheHelper.skipOnboarding = true;
    context.go(AppRouter.login);
  }