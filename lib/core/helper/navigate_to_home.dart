import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routing/app_router.dart';
import '../services/cache_helper.dart';

void navigateToLoginView(BuildContext context) {
    CacheHelper.skipOnboarding = true;
    context.go(AppRouter.login);
  }