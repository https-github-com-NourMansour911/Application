import 'package:e_gem/Features/auth/ui/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/constants.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
    this.authMode = AuthMode.LogIn,
  });
  final AuthMode authMode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 70.h,
        ),
        Text(
          authMode == AuthMode.LogIn
              ? "Hello,\nWelcome Back!"
              : "Create\nNew Account",
          style: subtitle_32,
        ),
        SizedBox(height: 16.h),
        Text(
          'Sign in and get your health personalized with our E-Gem',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: kfadedColor,
          ),
        ),
      ],
    );
  }
}
