// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:e_gem/Features/auth/presentation/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/square_tile.dart';

class AuthOptions extends StatelessWidget {
  final AuthMode authMode;
  const AuthOptions({
    Key? key,
    this.authMode = AuthMode.LogIn,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SquareTile(
          platform: Platform.facebook,
          authMode: authMode,
        ),
        SizedBox(
          width: 24.w,
        ),
        SquareTile(
          platform: Platform.google,
          authMode: authMode,
        ),
      ],
    );
  }
}
