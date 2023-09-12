import 'package:e_gem/Features/Appointment/presentation/views/widgets/card_default.dart';
import 'package:e_gem/Features/Profile/presentation/views/widgets/app_bar.dart';
import 'package:e_gem/Features/auth/presentation/views/widgets/TxtField.dart';
import 'package:e_gem/core/widgets/wide_button.dart';
import 'package:e_gem/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18.h),
          CustomAppBar(title: 'Add new card'),
          SizedBox(height: 30.h),
          Image.asset(Assets.imagesCreditCard),
          SizedBox(height: 35.h),
          CustomTextField(
              hint: 'Card Holder Name', textInputType: TextInputType.text),
          SizedBox(height: 16.h),
          CustomTextField(
              hint: 'Card Number', textInputType: TextInputType.number),
          SizedBox(height: 16.h),
          Row(
            children: [
              CustomTextField(
                hint: 'Expiry (MM/YY)',
                textInputType: TextInputType.datetime,
              ),
              SizedBox(
                width: 16.w,
              ),
              CustomTextField(hint: 'CVC', textInputType: TextInputType.number),
            ],
          ),
          SizedBox(
            height: 21.5.h,
          ),
          CardDefault(),
          SizedBox(
            height: 85.5.h,
          ),
          WideButton(
            title: 'Done',
          )
        ],
      ),
    );
  }
}
