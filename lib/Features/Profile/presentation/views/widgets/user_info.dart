import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key, required this.name, required this.email})
      : super(key: key);
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
              radius: 65.w, backgroundImage: AssetImage(Assets.imagesCap1)),
        ),
        SizedBox(height: 18.h),
        Text(
          name,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 5.h),
        Text(
          email,
          style: TextStyle(
              fontSize: 12.sp,
              color: MyColors.heavyGrey,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}