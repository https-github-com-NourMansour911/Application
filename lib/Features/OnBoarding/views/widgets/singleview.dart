import 'package:e_gem/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Singleview extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const Singleview(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          height: 312.h,
          width: 312.w,
        ),
        SizedBox(
          height: 18.h,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: k_heavyGrey,
          ),
        ),
      ],
    );
  }
}
