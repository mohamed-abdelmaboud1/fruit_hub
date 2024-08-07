import 'package:fruit_hub/features/auth/ui/view/login_view.dart';
import 'package:fruit_hub/features/splash/ui/view/spalsh_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/onboarding/ui/view/onboarding_view.dart';

class AppRouter {
  static const String splash = '/';
  static const String onBoarding = '/onBoarding';
  static const login = '/login';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => SpalshView(),
      ),
      GoRoute(
        path: onBoarding,
        builder: (context, state) => OnboardingView(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => LoginView(),
      ),
    ],
  );
}
