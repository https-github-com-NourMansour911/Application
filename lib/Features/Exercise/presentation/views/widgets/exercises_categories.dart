import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExercisesCategories extends StatelessWidget {
  ExercisesCategories({Key? key}) : super(key: key);

  TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: <Widget>[
          ButtonsTabBar(
            physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
            backgroundColor: MyColors.primaryColor,
            unselectedBackgroundColor: MyColors.lightGrey,
            borderWidth: 1.2.w,
            borderColor: Colors.transparent,
            unselectedBorderColor: MyColors.grey,
            height: 65.h,
            contentPadding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 17.w),
            radius: 8,
            controller: _tabController,
            buttonMargin: EdgeInsets.symmetric(vertical: 12.h,horizontal: 4.w),
            labelStyle: TextStyle(
              color: MyColors.lightGrey,
              fontSize: 12.sp,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
            unselectedLabelStyle: TextStyle(
              color: MyColors.grey,
              fontSize: 12.sp,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
            // Add your tabs here
            tabs: [
              Tab(text: '     All    ',),
              Tab(text: "  Chest  ",),
              Tab(text: "Shoulder",),
              Tab(text: "Biceps",),
            ],
          ),

        ],
      ),
    );
  }
}
