import 'package:e_gem/Features/Home/presentation/views/widgets/about_coach.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/about_me.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/coach_details_image.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/coach_details_name_and_rate.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/coach_details_scores.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/coach_details_tabBar.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/reviews.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/transformations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoachProfileViewBody extends StatefulWidget {
  const CoachProfileViewBody({Key? key}) : super(key: key);

  @override
  State<CoachProfileViewBody> createState() => _CoachProfileViewBodyState();
}

class _CoachProfileViewBodyState extends State<CoachProfileViewBody>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CoachImage(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
            child: Column(
              children: [
                CoachNameRate(),
                SizedBox(
                  height: 12.h,
                ),
                CoachScores(),
                SizedBox(
                  height: 14.h,
                ),
                CoachTabBar(tabController: _tabController),
                SizedBox(
                  height: 12.h,
                ),
                SizedBox(
                  height: 250.h,
                  width: double.infinity,
                  child: TabBarView(controller: _tabController, children: [
                    AboutCoach(),
                    Review(),
                    Transformation(),
                  ]),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
