import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoachScores extends StatelessWidget {
  const CoachScores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 76.h,
      padding: EdgeInsets.only(
        top: 10.h,
        left: 32.10.w,
        right: 22.07.w,
        bottom: 10.h,
      ),
      decoration: ShapeDecoration(
        color: MyColors.lightGrey,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.5.w, color: MyColors.primaryLightColor),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                '7',
                textAlign: TextAlign.center,
                style: scoresNum,
              ),
              Text(
                'Experience',
                textAlign: TextAlign.center,
                style: scoresText,
              ),
            ],
          ),
          VerticalDivider(
            color: MyColors.primaryColor,
            thickness: 1.5,
            indent: 5,endIndent: 5,
          ),
          Column(
            children: [
              Text(
                '46',
                textAlign: TextAlign.center,
                style: scoresNum,
              ),
              Text(
                'Completed',
                textAlign: TextAlign.center,
                style: scoresText,
              ),
            ],
          ),
          VerticalDivider(
            color: MyColors.primaryColor,
            thickness: 1.5,
            indent: 5,endIndent: 5,
          ),
          Column(
            children: [
              Text(
                '25',
                textAlign: TextAlign.center,
                style: scoresNum,
              ),
              Text(
                'Active Clients',
                textAlign: TextAlign.center,
                style: scoresText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
