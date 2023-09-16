import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class Steps extends StatelessWidget {
  const Steps({Key? key, required this.steps}) : super(key: key);

  final steps;
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      steps,
      trimLines: 4,
      colorClickableText: Colors.pink,
      lessStyle: TextStyle(
        color: MyColors.primaryColor,
        fontSize: 12.sp,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.w400,
      ),
      trimCollapsedText: 'Read more',
      trimExpandedText: '  Show less',
      moreStyle: TextStyle(
        color: MyColors.primaryColor,
        fontSize: 12.sp,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
