import 'package:e_gem/Features/Home/ui/views/widgets/coach_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.categoryType,
  });
  final CategoryType categoryType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          categoryType == CategoryType.Top_Rated ? 'Top Rated' : 'Super Heroes',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            height: 1.5.h,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        CoachCard(),
      ],
    );
  }
}

enum CategoryType {
  Top_Rated,
  Super_Heroes,
}
