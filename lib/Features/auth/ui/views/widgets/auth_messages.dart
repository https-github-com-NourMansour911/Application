import 'package:e_gem/Features/auth/ui/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthMessages extends StatelessWidget {
  const AuthMessages({
    super.key,
    required this.title,
    required this.subtitle,
    this.authMode = AuthMode.LogIn,
  });
  final AuthMode authMode;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: authMode == AuthMode.LogIn
              ? TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w600,
                )
              : TextStyle(
                  fontSize: 24,
                  fontWeight: authMode != AuthMode.Verifying
                      ? FontWeight.w600
                      : FontWeight.w700,
                ),
        ),
        SizedBox(height: 14.h),
        Text(
          subtitle,
          style: authMode == AuthMode.LogIn
              ? TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: kfadedColor,
                )
              : TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
        ),
      ],
    );
  }
}
