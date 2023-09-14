import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Steps extends StatelessWidget {
  const Steps({Key? key,required this.steps}) : super(key: key);

  final steps;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: steps,
            style: TextStyle(
              color: MyColors.grey,
              fontSize: 12.sp,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Read More',
            style: TextStyle(
              color: MyColors.primaryColor,
              fontSize: 12.sp,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
