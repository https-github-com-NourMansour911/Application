import 'package:e_gem/Features/Auth/presentation/views/widgets/txtField.dart';
import 'package:e_gem/Features/Profile/presentation/views/widgets/app_bar.dart';
import 'package:e_gem/Features/Profile/presentation/views/widgets/user_info.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 18.h),
        CustomAppBar(
          title: 'Edit Profile',
        ),
        SizedBox(height: 16.h),
        UserInfo(),
        SizedBox(height: 35.h),
        CustomTextField(
          hint: 'Full name',
          prefixIcon: SvgPicture.asset(Assets.imagesPersonIcon),
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          hint: 'Email',
          prefixIcon: SvgPicture.asset(Assets.imagesEmailIcon),
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          hint: 'Phone number',
          prefixIcon: Image.asset(Assets.imagesFlagIcon),
        ),
        SizedBox(height: 36.h),
        const WideButton(title: "Save"),
      ],
    );
  }
}
