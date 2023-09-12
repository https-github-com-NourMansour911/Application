import 'package:e_gem/Features/Appointment/presentation/views/widgets/plan.dart';
import 'package:e_gem/Features/Appointment/presentation/views/widgets/plans_provide.dart';
import 'package:e_gem/Features/Profile/presentation/views/widgets/app_bar.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoachPlansViewBody extends StatelessWidget {
  CoachPlansViewBody({Key? key}) : super(key: key);

  var groupValue = ['3 months', '6 months', '12 months'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: ''),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: SvgPicture.asset(Assets.imagesChoosePlan, width: 340.w),
          ),
          SizedBox(height: 15.h),
          PlansProvide(plansProvide: 'Establishing a healthy lifestyle'),
          SizedBox(height: 8.h),
          PlansProvide(
              plansProvide:
                  'Nutrition plan and customized workout schedule for you'),
          SizedBox(height: 8.h),
          PlansProvide(plansProvide: 'Daily reply to your inquiries'),
          SizedBox(height: 8.h),
          PlansProvide(
              plansProvide:
                  'Nutrition plan and customized workout schedule for you'),
          SizedBox(height: 8.h),
          PlansProvide(
              plansProvide: 'Customized Dietary Program Every 14 Days'),
          SizedBox(
            height: 20.h,
          ),
          Plan(
            choosedPlan: '3 months',
            planType: 'Basic',
            planPrice: '150',
            planTime: 'm',
            groupValue: groupValue,
          ),
          SizedBox(height: 8.h),
          Plan(
            choosedPlan: '6 months',
            planType: 'Standard',
            planPrice: '250',
            planTime: 'm',
            groupValue: groupValue,
          ),
          SizedBox(
            height: 8,
          ),
          Plan(
            choosedPlan: '12 months',
            planType: 'Premium',
            planPrice: '450',
            planTime: 'Y',
            groupValue: groupValue,
          ),
          SizedBox(height: 26.h),
          WideButton(title: 'Choose'),
        ],
      ),
    );
  }
}
