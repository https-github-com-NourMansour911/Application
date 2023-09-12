import 'package:e_gem/Features/Home/presentation/views/widgets/back_button.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/plan.dart';
import 'package:e_gem/Features/Home/presentation/views/widgets/plans_provide.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoachPlansViewBody extends StatelessWidget {
  CoachPlansViewBody({Key? key}) : super(key: key);

  var groupValue = ['3 months', '6 months', '12 months'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CostomizedBackButton(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: SvgPicture.asset(
              Assets.imagesChoosePlan,
              width: 340,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          PlansProvide(plansProvide: 'Establishing a healthy lifestyle'),
          SizedBox(
            height: 8,
          ),
          PlansProvide(
              plansProvide:
                  'Nutrition plan and customized workout schedule for you'),
          SizedBox(
            height: 8,
          ),
          PlansProvide(plansProvide: 'Daily reply to your inquiries'),
          SizedBox(
            height: 8,
          ),
          PlansProvide(
              plansProvide:
                  'Nutrition plan and customized workout schedule for you'),
          SizedBox(
            height: 8,
          ),
          PlansProvide(
              plansProvide: 'Customized Dietary Program Every 14 Days'),
          SizedBox(
            height: 20,
          ),
          Plan(
            choosedPlan: '3 months',
            planType: 'Basic',
            planPrice: '150',
            planTime: 'm',
            groupValue: groupValue,
          ),
          SizedBox(
            height: 8,
          ),
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
          SizedBox(
            height: 26,
          ),
          WideButton(title: 'Choose'),
        ],
      ),
    );
  }
}
