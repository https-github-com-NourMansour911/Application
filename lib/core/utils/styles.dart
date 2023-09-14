import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final TextStyle regular = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);
final TextStyle title = TextStyle(fontSize: 64.sp, fontWeight: FontWeight.w600);

final TextStyle formStyle = TextStyle(
    fontSize: 16.sp, fontWeight: FontWeight.w400, color: MyColors.grey);

final TextStyle notes = TextStyle(
  fontSize: 12.sp,
  fontWeight: FontWeight.w400,
);
final TextStyle scoresNum = TextStyle(
  color: MyColors.primaryColor,
  fontSize: 22.sp,
  fontFamily: 'Open Sans',
  fontWeight: FontWeight.w600,
);
final TextStyle scoresText = TextStyle(
  color: Color(0xFF110805),
  fontSize: 11.sp,
  fontFamily: 'Open Sans',
  fontWeight: FontWeight.w400,
);

final TextStyle coachTab =  TextStyle(
  fontSize: 10.sp,
  fontFamily: 'Open Sans',
  fontWeight: FontWeight.w600,
);
final TextStyle dateTime =  TextStyle(
  color: Color(0xFF110805),
  fontSize: 14,
  fontFamily: 'Open Sans',
  fontWeight: FontWeight.w600,
  height: 0.09,
);