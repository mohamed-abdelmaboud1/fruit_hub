import 'package:flutter_bloc/flutter_bloc.dart';
import '../services/service_locator.dart';
import '../../features/auth/domain/reops/auth_repo.dart';
import '../../features/auth/logic/sign_up_cubit/sign_up_cubit.dart';
import '../../features/auth/ui/view/forget_password_view.dart';
import '../../features/auth/ui/view/login_view.dart';
import '../../features/auth/ui/view/sign_up_view.dart';
import '../../features/auth/ui/view/verification_view.dart';
import '../../features/splash/ui/view/spalsh_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/ui/view/new_password_view.dart';
import '../../features/onboarding/ui/view/onboarding_view.dart';

class AppRouter {
  static const String splash = '/';
  static const String onBoarding = '/onBoarding';
  static const login = '/login';
  static const signUp = '/signUp';
  static const forgetPasword = '/forgetPasword';
  static const verification = '/verification';
  static const String newPassword = '/newPassword';

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
      GoRoute(
        path: signUp,
        builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(
            getIt<AuthRepo>(),
          ),
          child: SignUpView(),
        ),
      ),
      GoRoute(
        path: forgetPasword,
        builder: (context, state) => ForgetPasswordView(),
      ),
      GoRoute(
        path: verification,
        builder: (context, state) => VerificationView(),
      ),
      GoRoute(
        path: newPassword,
        builder: (context, state) => NewPasswordView(),
      ),
    ],
  );
}
