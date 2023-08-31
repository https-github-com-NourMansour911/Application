import 'package:e_gem/Features/OnBoarding/views/Splash_view.dart';
import 'package:e_gem/Features/OnBoarding/views/preview.dart';
import 'package:e_gem/Features/auth/ui/views/ForgetPassword_Views/ForgetPassword_view.dart';
import 'package:e_gem/Features/auth/ui/views/ForgetPassword_Views/PasswordChanged_view.dart';
import 'package:e_gem/Features/auth/ui/views/ForgetPassword_Views/ResetPassword_view.dart';
import 'package:e_gem/Features/auth/ui/views/ForgetPassword_Views/Verify_view.dart';
import 'package:e_gem/Features/auth/ui/views/LogIn_view.dart';
import 'package:e_gem/Features/auth/ui/views/SignUp_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHome = '/home';
  static const klogin = '/login';
  static const kSignUp = '/signup';
  static const kpreview = '/preview';
  static const kforgetpassword = '/forgetpassword';
  static const kresetpassword = '/resetpassword';
  static const kverifycodeview = '/verifycodeview';
  static const kpasswordchanged = '/PasswordChanged';

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
      GoRoute(
        path: kSignUp,
        builder: (context, state) => const SignUp(),
      ),
      GoRoute(
        path: kforgetpassword,
        builder: (context, state) => const ForgetPassword(),
      ),
      GoRoute(
        path: kverifycodeview,
        builder: (context, state) => const VerifyCodeView(),
      ),
      GoRoute(
        path: kresetpassword,
        builder: (context, state) => const ResetPassword(),
      ),
      GoRoute(
        path: kpasswordchanged,
        builder: (context, state) => const PasswordChanged(),
      ),
    ],
  );
}
