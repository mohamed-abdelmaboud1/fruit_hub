import 'package:fruit_hub/features/splash/ui/view/spalsh_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String splash = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => SpalshView(),
      )
    ],
  );
}
