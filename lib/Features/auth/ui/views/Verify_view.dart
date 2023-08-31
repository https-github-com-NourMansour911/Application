import 'package:e_gem/Features/auth/ui/view_models/auth_bloc/auth_bloc.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/otp_field.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/auth_messages.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/switch_auth.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({Key? key}) : super(key: key);

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
          child: VerifyCodeViewBody(),
        ),
      ),
    );
  }
}

class VerifyCodeViewBody extends StatelessWidget {
  const VerifyCodeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 70.h),
          SvgPicture.asset(Assets.imagesCheckMail),
          AuthMessages(
            title: 'Please check your email',
            subtitle: "We’ve sent a code to helloworld@gmail.com",
            authMode: AuthMode.Verifying,
          ),
          SizedBox(height: 25.h),
          OTPfield(),
          SizedBox(height: 25.h),
          WideButton(title: 'Verify'),
          SizedBox(height: 35.h),
          SwitchAuth(authMode: AuthMode.Verifying),
        ],
      ),
    );
  }
}
