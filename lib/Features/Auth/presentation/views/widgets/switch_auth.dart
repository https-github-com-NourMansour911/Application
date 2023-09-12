import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../view_models/auth_bloc/auth_bloc.dart';

class SwitchAuth extends StatelessWidget {
  const SwitchAuth({Key? key, this.authMode = AuthMode.LogIn})
      : super(key: key);
  final AuthMode authMode;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          authMode == AuthMode.LogIn
              ? "Don't have an account?  "
              : authMode == AuthMode.SignUp
                  ? "Already have an account?  "
                  : authMode == AuthMode.Verifying
                      ? "Send code again  "
                      : "Remember password?  ",
          style: authMode == AuthMode.LogIn
              ? notes
              : const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
        ),
        GestureDetector(
          onTap: () {
            if (authMode == AuthMode.LogIn) {
              GoRouter.of(context).pushReplacement(AppRouter.kSignUp);
            } else if (authMode == AuthMode.SignUp ||
                authMode == AuthMode.Verified) {
              GoRouter.of(context).pushReplacement(AppRouter.klogin);
            } else {}
          },
          child: Text(
            authMode == AuthMode.LogIn
                ? "Create Account"
                : authMode == AuthMode.SignUp
                    ? "Sign In"
                    : authMode == AuthMode.Verifying
                        ? "00:20"
                        : "Log in",
            style: TextStyle(
              fontSize: 16,
              decorationStyle: TextDecorationStyle.solid,
              decoration: TextDecoration.underline,
              fontWeight: authMode == AuthMode.LogIn
                  ? FontWeight.w700
                  : FontWeight.w400,
              color: MyColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
