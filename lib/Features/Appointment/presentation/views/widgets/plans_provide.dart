import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PlansProvide extends StatelessWidget {
  PlansProvide({Key? key, required this.plansProvide}) : super(key: key);
  String plansProvide;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesCheck, height: 25.h, width: 25.w),
        SizedBox(width: 10.w),
        Text(
          plansProvide,
          style: notes,
        ),
      ],
    );
  }
}
