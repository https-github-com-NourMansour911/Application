import 'package:e_gem/Features/auth/presentation/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/Age_Gender_options.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/ScreenDivider.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/TxtField.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/auth_options.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/password_field.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/switch_auth.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/auth_messages.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 50.h),
        const AuthMessages(
            title: "Create\nNew Account",
            subtitle:
                "Sign in and get your health personalized with our E-Gem"),
        SizedBox(height: 26.h),
        const CustomTextField(hint: 'Email', icon: Assets.imagesEmailIcon),
        SizedBox(height: 16.h),
        const AgeGenderOptions(),
        SizedBox(height: 16.h),
        const PasswordField(),
        SizedBox(height: 36.h),
        WideButton(
            title: "Sign Up",
            onPressed: () =>
                GoRouter.of(context).pushReplacement(AppRouter.kNavBar)),
        SizedBox(height: 30.h),
        const ScreenDivider(),
        SizedBox(height: 25.h),
        const AuthOptions(authMode: AuthMode.SignUp),
        SizedBox(height: 20.h),
        const SwitchAuth(authMode: AuthMode.SignUp),
      ],
    );
  }
}