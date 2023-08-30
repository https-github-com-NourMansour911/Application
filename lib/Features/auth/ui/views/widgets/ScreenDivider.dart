import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class ScreenDivider extends StatelessWidget {
  const ScreenDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Divider(
            thickness: 1,
            color: kprimaryColor.withOpacity(0.3),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.0.w,
          ),
          child: Text(
            'Or',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Divider(
            thickness: 1,
            color: kprimaryColor.withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}
