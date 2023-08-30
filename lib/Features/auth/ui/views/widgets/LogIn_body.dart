import 'package:e_gem/Features/auth/ui/views/widgets/ScreenDivider.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/TxtField.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/auth_options.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/password_field.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/remember_password.dart';
import 'package:e_gem/Features/auth/ui/views/widgets/welcome_message.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'switch_auth.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          WelcomeMessage(
            title: "Hello,\nWelcome Back!",
            subtitle: "Sign in and get your health personalized with our E-Gem",
          ),
          SizedBox(height: 26.h),
          CustomTextField(hint: 'Email', icon: Assets.imagesEmailIcon),
          SizedBox(height: 16.h),
          PasswordField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RememberPassword(),
              GestureDetector(
                  onTap: () {}, child: Text("Forget password ?", style: notes)),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          WideButton(title: "Sign In"),
          SizedBox(height: 40.h),
          ScreenDivider(),
          SizedBox(height: 25.h),
          AuthOptions(),
          SizedBox(
            height: 35.h,
          ),
          SwitchAuth(),
        ],
      ),
    );
  }
}