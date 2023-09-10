import 'package:e_gem/Features/Auth/ui/views/widgets/TxtField.dart';
import 'package:e_gem/Features/Auth/ui/views/widgets/drop_down_field.dart';
import 'package:e_gem/Features/Profile/ui/views/widgets/app_bar.dart';
import 'package:e_gem/Features/Profile/ui/views/widgets/user_info.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        UserInfo(name: "Yahia Ahmed", email: "yehiaahmed4589@gmail.com"),
        SizedBox(height: 35.h),
        const CustomTextField(hint: 'Full name', icon: Assets.imagesGenderIcon),
        SizedBox(height: 8.h),
        const CustomTextField(hint: 'Email', icon: Assets.imagesEmailIcon),
        SizedBox(height: 8.h),
        const CustomTextField(
            hint: 'Phone number', icon: Assets.imagesFlagIcon),
        SizedBox(height: 8.h),
        Row(
          children: [
            Expanded(child: DropDownField(label: "Country")),
            SizedBox(width: 16.w),
            Expanded(child: DropDownField(label: "Gender")),
          ],
        ),
        SizedBox(height: 36.h),
        const WideButton(title: "Save"),
      ],
    );
  }
}
