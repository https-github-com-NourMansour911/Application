import 'package:e_gem/Features/auth/ui/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/TxtField.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/auth_messages.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 70.h),
          SvgPicture.asset(Assets.imagesForgotPassword),
          const AuthMessages(
            title: 'Forgot Password?',
            subtitle:
                "Don’t worry! It happens. Please enter the email associated with your account.",
            authMode: AuthMode.Verifying,
          ),
          SizedBox(height: 25.h),
          const CustomTextField(hint: 'Email', icon: Assets.imagesEmailIcon),
          SizedBox(height: 30.h),
          WideButton(
            title: 'SendCode',
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.kverifycodeview);
            },
          ),
        ],
      ),
    );
  }
}
