import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentCompleted extends StatelessWidget {
  const PaymentCompleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.check_box_outlined),
        SizedBox(width: 10,),
        Text('Payment Completed!',
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
