import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoachNameRate extends StatelessWidget {
  const CoachNameRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Mohamed Ali',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.star_rate_rounded,
              color: Colors.amber,
              size: 25.w,
            ),
            Text(
              '5',
              style: TextStyle(
                color: MyColors.grey,
                fontSize: 16.sp,
                height: 1.5,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
