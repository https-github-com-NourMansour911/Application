import 'package:e_gem/Features/Appointment/presentation/views/widgets/plan.dart';
import 'package:e_gem/Features/Appointment/presentation/views/widgets/plans_provide.dart';
import 'package:e_gem/Features/Profile/presentation/views/widgets/app_bar.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CoachPlansViewBody extends StatelessWidget {
  CoachPlansViewBody({Key? key}) : super(key: key);

  var groupValue = ['3 months', '6 months', '12 months'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(title: ''),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
          child: SvgPicture.asset(
            Assets.imagesChoosePlan,
            width: 300.w,
            height: 200.h,
          ),
        ),
        SizedBox(height: 6.h),
        PlansProvide(plansProvide: 'Establishing a healthy lifestyle.'),
        SizedBox(height: 2.h),
        PlansProvide(
            plansProvide:
                'Nutrition plan and customized workout schedule\nfor you.'),
        SizedBox(height: 2.h),
        PlansProvide(plansProvide: 'Daily reply to your inquiries.'),
        SizedBox(height: 2.h),
        PlansProvide(plansProvide: 'Customized Dietary Program Every 14 Days.'),
        SizedBox(height: 16.h),
        Plan(
          choosedPlan: 1,
          planTitle: groupValue[0],
          planType: 'Basic',
          planPrice: 150,
          planTime: 'm',
        ),
        SizedBox(height: 12.h),
        Plan(
          choosedPlan: 1,
          planTitle: groupValue[1],
          planType: 'Standard',
          planPrice: 250,
          planTime: 'm',
        ),
        SizedBox(height: 12.h),
        Plan(
          choosedPlan: 1,
          planTitle: groupValue[2],
          planType: 'Premium',
          planPrice: 450,
          planTime: 'Y',
        ),
        SizedBox(height: 25.h),
        WideButton(
          title: 'Choose',
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kPaymentView);
          },
        ),
        SizedBox(height: 25.h),
      ],
    );
  }
}
