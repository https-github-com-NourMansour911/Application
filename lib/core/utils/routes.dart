import 'package:e_gem/Features/Chat/ui/views/chats_view.dart';
import 'package:e_gem/Features/Chat/ui/views/messaging_view.dart';
import 'package:e_gem/Features/Home/ui/views/appointment_view.dart';
import 'package:e_gem/Features/Home/ui/views/coach_plans_view.dart';
import 'package:e_gem/Features/Home/ui/views/coach_profile_view.dart';
import 'package:e_gem/Features/Home/ui/views/home_view.dart';
import 'package:e_gem/Features/Home/ui/views/payment_status_view.dart';
import 'package:e_gem/Features/Home/ui/views/payment_view.dart';
import 'package:e_gem/Features/Notifications/ui/views/notifications_view.dart';
import 'package:e_gem/Features/OnBoarding/views/Splash_view.dart';
import 'package:e_gem/Features/OnBoarding/views/preview.dart';
import 'package:e_gem/Features/Profile/ui/views/edit_profile_view.dart';
import 'package:e_gem/Features/Profile/ui/views/profile_view.dart';
import 'package:e_gem/Features/auth/ui/views/ForgetPassword_Views/ForgetPassword_view.dart';
import 'package:e_gem/Features/auth/ui/views/ForgetPassword_Views/PasswordChanged_view.dart';
import 'package:e_gem/Features/auth/ui/views/ForgetPassword_Views/ResetPassword_view.dart';
import 'package:e_gem/Features/auth/ui/views/ForgetPassword_Views/Verify_view.dart';
import 'package:e_gem/Features/auth/ui/views/LogIn_view.dart';
import 'package:e_gem/Features/auth/ui/views/SignUp_view.dart';
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
  static const kHomeView = '/HomeView';
  static const kCoachProfileView = '/CoachProfileView';
  static const kCoachPlansView = '/CoachPlansView';
  static const kAppointmentView = '/AppointmentView';
  static const kPaymentView = '/PaymentView';
  static const kPaymentStatusView = '/messagingView';
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
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kCoachProfileView,
        builder: (context, state) => const CoachProfileView(),
      ),
      GoRoute(
        path: kCoachPlansView,
        builder: (context, state) => const CoachPlansView(),
      ),
      GoRoute(
        path: kAppointmentView,
        builder: (context, state) => const AppointmentView(),
      ),
      GoRoute(
        path: kPaymentView,
        builder: (context, state) => const PaymentView(),
      ),
      GoRoute(
        path: kPaymentStatusView,
        builder: (context, state) => const PaymentStatusView(),
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
