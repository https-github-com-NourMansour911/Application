import 'package:e_gem/Features/auth/ui/view_models/login/login_cubit.dart';
import 'package:e_gem/Features/auth/ui/view_models/password/password_cubit.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/rem_password.dart';
import 'package:e_gem/constants.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/TxtField.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/images.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => PasswordCubit(),
        ),
      ],
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 90.h,
              ),
              Text(
                "Hello,\nWelcome Back!",
                style: subtitle_32,
              ),
              SizedBox(
                height: 26.h,
              ),
              Text(
                'Sign in and get your health personalized with our E-Gem',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: kfadedColor,
                ),
              ),
              SizedBox(height: 36.h),
              CustomTextField(hint: 'Email', icon: Assets.imagesEmailIcon),
              SizedBox(height: 16.h),
              CustomTextField(
                  hint: 'Password', icon: Assets.imagesPasswordIcon),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RememberPassword(),
                  GestureDetector(
                      onTap: () {},
                      child: Text("Forget password ?", style: notes)),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              WideButton(
                title: "Sign In",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
