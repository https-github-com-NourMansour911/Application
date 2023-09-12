import 'package:e_gem/Features/Auth/presentation/views/ForgetPassword_view.dart';
import 'package:e_gem/Features/Auth/presentation/views/PasswordChanged_view.dart';
import 'package:e_gem/Features/Auth/presentation/views/ResetPassword_view.dart';
import 'package:e_gem/Features/Auth/presentation/views/Verify_view.dart';
import 'package:e_gem/Features/Chat/presentation/views/chats_view.dart';
import 'package:e_gem/Features/Chat/presentation/views/messaging_view.dart';
import 'package:e_gem/Features/Home/presentation/views/coach_profile_view.dart';
import 'package:e_gem/Features/Home/presentation/views/coach_plans_view.dart';
import 'package:e_gem/Features/Home/presentation/views/home_view.dart';
import 'package:e_gem/Features/Home/presentation/views/payment_view.dart';
import 'package:e_gem/Features/Nav_Bar/presentation/views/nav_bar.dart';
import 'package:e_gem/Features/Notifications/presentation/views/notifications_view.dart';
import 'package:e_gem/Features/OnBoarding/views/Splash_view.dart';
import 'package:e_gem/Features/OnBoarding/views/preview.dart';
import 'package:e_gem/Features/Profile/presentation/views/edit_profile_view.dart';
import 'package:e_gem/Features/Profile/presentation/views/profile_view.dart';
import 'package:e_gem/Features/auth/presentation/views/LogIn_view.dart';
import 'package:e_gem/Features/auth/presentation/views/SignUp_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kpreview = '/preview';
  // Auth
  static const klogin = '/login';
  static const kSignUp = '/signup';
  static const kforgetpassword = '/forgetpassword';
  static const kresetpassword = '/resetpassword';
  static const kverifycodeview = '/verifycodeview';
  static const kpasswordchanged = '/PasswordChanged';
  // Chat
  static const kchatsView = '/chatsView';
  static const kmessagingView = '/messagingView';
  // Home
  static const kNavBar = '/NavBar';
  static const kHomeView = '/home_view';
  static const kAppointmentView = '/appointment_view';
  static const kCoachPlansView = '/coachPlansView';
  static const kPaymentView = '/payment_view';

  // Profile
  static const kProfileView = '/ProfileView';
  static const kEditProfileView = '/EditProfileView';
  // Notifications
  static const kNotificationsView = '/NotificationsView';

  static final router = GoRouter(
    routes: [
      // OnBoarding
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kpreview,
        builder: (context, state) => const Preview(),
      ),
      // Auth
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

      // Home
      GoRoute(
        path: kNavBar,
        builder: (context, state) => const NavBar(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kAppointmentView,
        builder: (context, state) => const CoachProfileView(),
      ),
      GoRoute(
        path: kCoachPlansView,
        builder: (context, state) => const CoachPlansView(),
      ),
      GoRoute(
        path: kPaymentView,
        builder: (context, state) => const PaymentView(),
      ),

      // Chat
      GoRoute(
        path: kchatsView,
        builder: (context, state) => const ChatsView(),
      ),
      GoRoute(
        path: kmessagingView,
        builder: (context, state) => const MessagingView(),
      ),

      // Profile
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: kEditProfileView,
        builder: (context, state) => const EditProfileView(),
      ),
      // Notifications
      GoRoute(
        path: kNotificationsView,
        builder: (context, state) => const NotificationsView(),
      ),
    ],
  );
}
