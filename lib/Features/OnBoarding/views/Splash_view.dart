import 'package:e_gem/constants.dart';
import 'package:e_gem/core/utils/images.dart';
import 'package:e_gem/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/routes.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1500), () {
      GoRouter.of(context).pushReplacement(AppRouter.kNavBar);
    });

    return Scaffold(
      backgroundColor: kprimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            Assets.imagesSplash,
            height: 155.h,
            width: 206.w,
          ),
          SizedBox(height: 24.h),
          Text(
            'E-Gem',
            style: title.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            "Choose Your coach",
            style: regular.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
