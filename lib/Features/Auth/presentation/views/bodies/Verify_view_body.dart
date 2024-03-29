import 'package:e_gem/Features/Auth/presentation/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/otp_field.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/auth_messages.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/switch_auth.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class VerifyCodeViewBody extends StatelessWidget {
  const VerifyCodeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h),
        SvgPicture.asset(Assets.imagesCheckMail),
        const AuthMessages(
          title: 'Please check your email',
          subtitle: "We’ve sent a code to helloworld@gmail.com",
          authMode: AuthMode.Verifying,
        ),
        SizedBox(height: 25.h),
        const OTPfield(),
        SizedBox(height: 25.h),
        WideButton(
          title: 'Verify',
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.kresetpassword);
          },
        ),
        SizedBox(height: 35.h),
        const SwitchAuth(authMode: AuthMode.Verifying),
      ],
    );
  }
}
