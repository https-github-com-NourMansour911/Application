import 'package:e_gem/Features/auth/ui/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/ScreenDivider.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/TxtField.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/auth_options.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/password_field.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/remember_password.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/auth_messages.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/switch_auth.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 50.h),
          const AuthMessages(
            title: "Hello,\nWelcome Back!",
            subtitle: "Sign in and get your health personalized with our E-Gem",
          ),
          SizedBox(height: 26.h),
          const CustomTextField(hint: 'Email', icon: Assets.imagesEmailIcon),
          SizedBox(height: 16.h),
          const PasswordField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const RememberPassword(),
              GestureDetector(
                  onTap: () =>
                      GoRouter.of(context).push(AppRouter.kforgetpassword),
                  child: Text("Forget password ?", style: notes)),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          WideButton(
            title: "Sign In",
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.kNavBar);
            },
          ),
          SizedBox(height: 40.h),
          const ScreenDivider(),
          SizedBox(height: 25.h),
          const AuthOptions(),
          SizedBox(
            height: 35.h,
          ),
          const SwitchAuth(
            authMode: AuthMode.LogIn,
          ),
        ],
      ),
    );
  }
}
