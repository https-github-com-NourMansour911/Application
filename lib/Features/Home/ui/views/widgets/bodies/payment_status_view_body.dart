import 'package:e_gem/Features/Home/ui/views/widgets/payment_completed.dart';
import 'package:e_gem/Features/Home/ui/views/widgets/picked_coach.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentStatusViewBody extends StatelessWidget {
  const PaymentStatusViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          PaymentCompleted(),
          SizedBox(height: 20,),
          Text('You’ve book a new appointment\nwith your trainer.',
            style: TextStyle(
              color: Color(0xFF626262),
              fontSize: 15,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          PickedCoach(),
          SizedBox(height: 93.h,),
          WideButton(title: 'Done'),
        ],
      ),
    );
  }
}
