import 'package:e_gem/Features/auth/ui/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/auth_messages.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/password_field.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/switch_auth.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 50.h),
        SvgPicture.asset(Assets.imagesResetPassword),
        SizedBox(height: 25.h),
        const AuthMessages(
          title: 'Reset password',
          subtitle: "Please type something you’ll remember",
          authMode: AuthMode.Verifying,
        ),
        SizedBox(height: 20.h),
        const PasswordField(mode: PasswordFieldMode.New),
        SizedBox(height: 16.h),
        const PasswordField(mode: PasswordFieldMode.Confirm),
        SizedBox(height: 20.h),
        WideButton(
          title: 'Reset Password',
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.kpasswordchanged);
          },
        ),
        SizedBox(height: 25.h),
        const SwitchAuth(authMode: AuthMode.Verified),
      ],
    );
  }
}
