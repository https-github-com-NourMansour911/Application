import 'package:e_gem/Features/Appointment/presentation/views/widgets/payment_completed.dart';
import 'package:e_gem/Features/Appointment/presentation/views/widgets/picked_coach_info.dart';
import 'package:e_gem/core/utils/routes.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PaymentStatusViewBody extends StatelessWidget {
  const PaymentStatusViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PaymentCompleted(),
          SizedBox(height: 14.h,),
          Text('You’ve book a new appointment\nwith your trainer.',
            style: TextStyle(
              color: Color(0xFF626262),
              fontSize: 15.sp,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 32.h,),
          PickedCoach(),
          SizedBox(height: 93.h,),
          WideButton(title: 'Done',
            onPressed: () => GoRouter.of(context).push(AppRouter.kNavBar),
          ),
        ],
      ),
    );
  }
}
