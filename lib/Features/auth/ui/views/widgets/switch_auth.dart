import 'package:e_gem/constants.dart';
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
                      ? "Send code again:  "
                      : "Remember password?  ",
          style: notes,
        ),
        GestureDetector(
          onTap: authMode == AuthMode.LogIn
              ? () => GoRouter.of(context).pushReplacement(AppRouter.kSignUp)
              : () => GoRouter.of(context).pushReplacement(AppRouter.klogin),
          child: Text(
            authMode == AuthMode.LogIn
                ? "Create Account"
                : authMode == AuthMode.SignUp
                    ? "Sign In"
                    : authMode == AuthMode.Verifying
                        ? "00:20"
                        : "Login",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: kprimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
