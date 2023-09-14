import 'package:e_gem/Features/Profile/presentation/views/widgets/option_tile.dart';
import 'package:e_gem/Features/Profile/presentation/views/widgets/user_info.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35.h),
        UserInfo(name: "Yahia Ahmed", email: "yehiaahmed4589@gmail.com"),
        SizedBox(height: 18.h),
        OptionTile(
            pre_icon: SvgPicture.asset(Assets.imagesEditProfileIcon),
            title: "Edit Profile",
            path: AppRouter.kEditProfileView),
        OptionTile(
            pre_icon: SvgPicture.asset(Assets.imagesNotificationIcon),
            title: "Notifications"),
        OptionTile(
            pre_icon: SvgPicture.asset(Assets.imagesAsCoachIcon),
            title: "As a Coach"),
        OptionTile(
            pre_icon: SvgPicture.asset(Assets.imagesShareIcon),
            title: "Share App"),
        OptionTile(
            pre_icon: SvgPicture.asset(Assets.imagesLogOutIcon),
            title: "Log Out",
            path: AppRouter.klogin),
      ],
    );
  }
}
