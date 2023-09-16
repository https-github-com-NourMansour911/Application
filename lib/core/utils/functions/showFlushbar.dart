import 'package:another_flushbar/flushbar.dart';
import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

showFlusbar(BuildContext context, String message) {
  Flushbar(
    message: message,
    duration: Duration(milliseconds: 2500),
    backgroundColor: MyColors.primaryColor,
    borderRadius: BorderRadius.circular(10.r),
    flushbarPosition: FlushbarPosition.TOP,
    margin: EdgeInsets.symmetric(vertical: 24.h, horizontal: 8.w),
    padding: EdgeInsets.all(12),
  ).show(context);
}
