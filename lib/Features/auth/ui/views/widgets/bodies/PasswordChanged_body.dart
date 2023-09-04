import 'package:e_gem/Features/auth/ui/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/auth_messages.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class PasswordChangedBody extends StatelessWidget {
  const PasswordChangedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 70.h),
          SvgPicture.asset(Assets.imagesPasswordChanged),
          SizedBox(height: 30.h),
          const AuthMessages(
            title: 'Password changed',
            subtitle: "Your password has been changed successfully.",
            authMode: AuthMode.Verified,
          ),
          SizedBox(height: 40.h),
          WideButton(
            title: 'Back To Login',
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.klogin);
            },
          ),
        ],
      ),
    );
  }
}
