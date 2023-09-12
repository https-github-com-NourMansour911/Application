import 'package:e_gem/Features/Appointment/presentation/views/widgets/bodies/coach_plans_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoachPlansView extends StatelessWidget {
  const CoachPlansView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            child: CoachPlansViewBody(),
          ),
        ),
      ),
    );
  }
}
