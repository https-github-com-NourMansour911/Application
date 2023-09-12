import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
            CircleAvatar(
              radius: 22.5.w,
              backgroundImage: AssetImage(Assets.imagesCap1),
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yahia Ahmed',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Online',
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: MyColors.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 2.h),
        Divider(
          thickness: 1,
          color: MyColors.primaryColor,
        )
      ],
    );
  }
}
