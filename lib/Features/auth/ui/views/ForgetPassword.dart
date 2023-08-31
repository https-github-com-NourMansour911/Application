import 'package:e_gem/Features/auth/ui/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/TxtField.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/auth_messages.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewPadding.bottom,
          ),
          child: ForgetPasswordBody(),
        ),
      ),
    );
  }
}

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 70.h),
        SvgPicture.asset(Assets.imagesForgotPassword),
        AuthMessages(
          title: 'Forgot Password?',
          subtitle:
              "Don’t worry! It happens. Please enter the email associated with your account.",
          authMode: AuthMode.Verifying,
        ),
        SizedBox(height: 25.h),
        CustomTextField(hint: 'Email', icon: Assets.imagesEmailIcon),
        SizedBox(height: 30.h),
        WideButton(title: 'SendCode')
      ],
    );
  }
}
