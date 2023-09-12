import 'package:e_gem/Features/Home/cap_setup/reviews.dart';
import 'package:e_gem/Features/Home/cap_setup/transformation.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/coach_details_image.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/coach_details_name_and_rate.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/coach_details_scores.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/coach_details_tabBar.dart';
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
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CoachImage(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
            child: Column(
              children: [
                CoachNameRate(),
                SizedBox(
                  height: 16.h,
                ),
                CoachScores(),
                SizedBox(
                  height: 16.h,
                ),
                CoachTabBar(tabController: _tabController),
                SizedBox(
                  height: 12.h,
                ),
                SizedBox(
                  height: 180.h,
                  width: double.infinity,
                  child: TabBarView(controller: _tabController, children: [
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
