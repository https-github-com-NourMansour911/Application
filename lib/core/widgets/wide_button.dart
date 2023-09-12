import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WideButton extends StatelessWidget {
  const WideButton(
      {Key? key,
      required this.title,
      this.color = MyColors.primaryColor,
      this.onPressed})
      : super(key: key);
  final String title;
  final Color color;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: MyColors.primaryColor, width: 1.w)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: color == MyColors.primaryColor
                  ? Colors.white
                  : MyColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
