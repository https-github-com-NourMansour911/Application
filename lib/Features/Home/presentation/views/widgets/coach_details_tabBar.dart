import 'package:e_gem/constants/colors.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoachTabBar extends StatelessWidget {
  CoachTabBar({Key? key, required this.tabController}) : super(key: key);
  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 36.h,
      decoration: ShapeDecoration(
        color: MyColors.lightGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
      ),
      child: Material(
        child: TabBar(
            indicator: BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.circular(3),
            ),
            indicatorColor: Colors.transparent,
            controller: tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: MyColors.grey,
            labelColor: Colors.white,
            tabs: [
              Tab(
                height: 36.h,
                child: Text(
                  'About me',
                  textAlign: TextAlign.right,
                  style: coachTab,
                ),
              ),
              Tab(
                height: 36.h,
                child: Text(
                  'Reviews',
                  textAlign: TextAlign.right,
                  style: coachTab,
                ),
              ),
              Tab(
                height: 36.h,
                child: Text(
                  'Transformation',
                  textAlign: TextAlign.right,
                  style: coachTab,
                ),
              ),
            ]),
      ),
    );
  }
}
