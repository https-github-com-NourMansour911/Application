import 'package:e_gem/Features/OnBoarding/ui/views/preview.dart';
import 'package:e_gem/Features/auth/ui/views/LogIn.dart';
import 'package:go_router/go_router.dart';

import '../../Features/OnBoarding/UI/views/Splash_view.dart';

abstract class AppRouter {
  static const kHome = '/home';
  static const klogin = '/login';
  static const kpreview = '/preview';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kpreview,
        builder: (context, state) => const Preview(),
      ),
      GoRoute(
        path: klogin,
        builder: (context, state) => const LogIn(),
      ),
    ],
  );
}
