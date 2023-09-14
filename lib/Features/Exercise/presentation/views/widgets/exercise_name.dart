import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExerciseName extends StatelessWidget {
  const ExerciseName({Key? key,required this.exercise}) : super(key: key);

  final exercise;
  @override
  Widget build(BuildContext context) {
    return Text(
      exercise,
      style: TextStyle(
        color: Color(0xFF110906),
        fontSize: 14.sp,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
