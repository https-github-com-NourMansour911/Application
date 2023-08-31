import 'package:e_gem/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class WideButton extends StatelessWidget {
  const WideButton(
      {Key? key,
      required this.title,
      this.color = kprimaryColor,
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
        width: 320.w,
        height: 50.h,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: kprimaryColor, width: 1.w)),
        child: Center(
          child: Text(
            title,
            style: faded.copyWith(
              color: color == kprimaryColor ? Colors.white : kprimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
