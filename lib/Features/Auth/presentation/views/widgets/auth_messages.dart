import 'package:e_gem/Features/Auth/presentation/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/constants/colors.dart';
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
      crossAxisAlignment: authMode == AuthMode.Verified
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
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
        SizedBox(height: 8.h),
        Text(
          subtitle,
          textAlign: authMode == AuthMode.Verified
              ? TextAlign.center
              : TextAlign.start,
          style: authMode == AuthMode.LogIn
              ? TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: MyColors.grey,
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
