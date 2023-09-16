import 'package:e_gem/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentCompleted extends StatelessWidget {
  const PaymentCompleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check_box_outlined,
          color: MyColors.primaryColor,
          size: 35,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          'Payment Completed!',
          style: TextStyle(
            color: Color(0xFF110805),
            fontSize: 22.sp,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
