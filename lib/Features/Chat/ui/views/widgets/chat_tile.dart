import 'package:e_gem/constants.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: kprimaryColor),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.w,
          backgroundImage: AssetImage(Assets.imagesCap1),
        ),
        trailing: Column(
          children: <Widget>[
            Text(
              'Today',
              style: TextStyle(
                fontSize: 10.sp,
                color: k_grey,
              ),
            ),
            SizedBox(height: 8.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: kprimaryColor,
                shape: BoxShape.circle,
              ),
              child: Text(
                '1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        title: Text(
          'Yahia Ahmed',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
        subtitle: Text(
          "I agree. I'm waiting for you.",
          style: notes.copyWith(height: 1.8),
        ),
      ),
    );
  }
}
