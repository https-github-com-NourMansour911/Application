import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Calories extends StatelessWidget {
  const Calories({Key? key, required this.cals}) : super(key: key);

  final cals;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.w,
      height: 29.h,
      padding: const EdgeInsets.only(top: 5, left: 5, right: 14, bottom: 5),
      decoration: ShapeDecoration(
        color: MyColors.lightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.local_fire_department,
            color: MyColors.primaryColor,
          ),
          Text(
            cals,
            style: TextStyle(
              color: MyColors.primaryColor,
              fontSize: 13.sp,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
