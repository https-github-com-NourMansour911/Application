import 'package:e_gem/Features/auth/ui/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/Age_Gender_options.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/ScreenDivider.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/TxtField.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/auth_options.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/password_field.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/switch_auth.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/auth_messages.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 70.h),
          const AuthMessages(
              title: "Create\nNew Account",
              subtitle:
                  "Sign Up and get your health personalized with our E-Gem"),
          SizedBox(height: 26.h),
          const CustomTextField(hint: 'Email', icon: Assets.imagesEmailIcon),
          SizedBox(height: 16.h),
          const AgeGenderOptions(),
          SizedBox(height: 16.h),
          const PasswordField(),
          SizedBox(height: 16.h),
          SizedBox(height: 20.h),
          const WideButton(title: "Sign Up"),
          SizedBox(height: 30.h),
          const ScreenDivider(),
          SizedBox(height: 25.h),
          const AuthOptions(authMode: AuthMode.SignUp),
          SizedBox(height: 20.h),
          const SwitchAuth(authMode: AuthMode.SignUp),
        ],
      ),
    );
  }
}
